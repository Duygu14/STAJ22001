unit byzBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxButtons,
  Vcl.StdCtrls, cxLabel, cxGroupBox, cxMemo, cxTextEdit, Vcl.ExtCtrls, DtMdIcons,
  dxGDIPlusClasses, cxImage, dxBarBuiltInMenu, cxPC, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxRadioGroup, Vcl.AppEvnts, CommonConf, DtMdGeneral, byzTheBezier, dxSkinsDefaultPainters;

const
  WM_AFTER_SHOW = WM_USER + 300; // custom message
  WM_AFTER_CREATE = WM_USER + 301; // custom message
type
  TInputFormMod = (ifmNone, ifmNewRecord, ifmRewiev, ifmUpdate, ifmReadOnly, ifmCopyNewRecord);
  TInputFormViewMod = (ivmNormal, ivmSort);

type
  TfrmbyzBase = class(TForm)
    pnlBaseBottom: TPanel;
    btnBaseClose: TcxButton;
    btnBaseSave: TcxButton;
    btnBaseDelete: TcxButton;
    pnlMain: TPanel;
    AppEvntsBase: TApplicationEvents;
    btnBasePrint: TcxButton;
    btnBaseAdd: TcxButton;
    procedure btnBaseCloseClick(Sender: TObject);virtual;
    procedure btnBaseSaveClick(Sender: TObject);virtual;
    procedure btnBaseDeleteClick(Sender: TObject);virtual;
    procedure FormCreate(Sender: TObject);virtual;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

    procedure WmAfterShow(var Msg: TMessage); message WM_AFTER_SHOW;
    procedure WmAfterCreate(var Msg: TMessage); message WM_AFTER_CREATE;
    procedure btnBaseAddClick(Sender: TObject);virtual;
  private
    { Private declarations }
    FFormMode: TInputFormMod;
    FFormViewMode: TInputFormViewMod;
    FWithCommitTransaction: Boolean;
    FWithRollbackTransaction: Boolean;
//    FDefaultSelectFilter: string;
//    FIsPermissionControlForm: Boolean;
    FParentForm: TForm;

//    FMesajFormClose: string;
//    FMesajTitleFormClose: string;
  public
    { Public declarations }
    FBPatientInfo: TBPatientInfo;
    //Create(AOwner,nil,False,ifmNone,ivmNormal)
    constructor Create(AOwner: TComponent; pPatInfos: TBPatientInfo; pParentForm: TForm=nil;
      pIsPermissionControl: Boolean=False;
      pFormMode: TInputFormMod = ifmNone;
      pFormViewMode: TInputFormViewMod = ivmNormal);reintroduce;overload;virtual;
    function FocusedFirstControl(panel_groupbox_pagecontrol_tabsheet: TWinControl): Boolean;
  end;

var
  frmbyzBase: TfrmbyzBase;

implementation

{$R *.dfm}

constructor TfrmbyzBase.Create(AOwner: TComponent; pPatInfos: TBPatientInfo;
  pParentForm: TForm=nil;
  pIsPermissionControl: Boolean=False;
  pFormMode: TInputFormMod = ifmNone;
  pFormViewMode: TInputFormViewMod = ivmNormal);
begin
  FWithCommitTransaction := True;
  FWithRollbackTransaction := True;
  FParentForm := pParentForm;
  FFormMode := pFormMode;
  FFormViewMode := pFormViewMode;
  FBPatientInfo := pPatInfos;
//  IsPermissionControlForm := pIsPermissionControl;
  inherited Create(AOwner);
end;

procedure TfrmbyzBase.btnBaseAddClick(Sender: TObject);
begin
//
end;

procedure TfrmbyzBase.btnBaseCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmbyzBase.btnBaseDeleteClick(Sender: TObject);
begin
//
end;

procedure TfrmbyzBase.btnBaseSaveClick(Sender: TObject);
begin
//
end;

procedure TfrmbyzBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self.Release;
end;

procedure TfrmbyzBase.FormCreate(Sender: TObject);
begin
  btnBaseClose.OnClick := btnBaseCloseClick;
  btnBaseDelete.OnClick   := btnBaseDeleteClick;
  btnBaseSave.OnClick := btnBaseSaveClick;

  btnBaseClose.Visible := False;
  btnBaseDelete.Visible := False;
  btnBaseSave.Visible := False;
  btnBasePrint.Visible := False;
//  Self.Icon.LoadFromFile('Resource/formIcons/app_logo.ico');
  PostMessage(self.Handle, WM_AFTER_CREATE, 0, 0);
end;

procedure TfrmbyzBase.FormDestroy(Sender: TObject);
begin

  btnBaseClose.Free;
  btnBaseDelete.Free;
  btnBaseSave.Free;
  inherited;
end;

procedure TfrmbyzBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_ESCAPE) then
  begin
    Key := #0;
    btnBaseCloseClick(btnBaseClose);
  end
  else
  if Key = Char(VK_RETURN) then
  begin
    Key := #0;
    if (Sender is TWinControl) then
    begin
      if (Sender.ClassType <> TEdit)
      and (Sender.ClassType <> TMemo)
      and (Sender.ClassType <> TCombobox)
      then
       if HiWord(GetKeyState(VK_SHIFT)) <> 0 then
          PostMessage((Sender as TWinControl).Handle, WM_NEXTDLGCTL, 1, 0)
       else
          PostMessage((Sender as TWinControl).Handle, WM_NEXTDLGCTL, 0, 0);
    end;
  end
  else
    inherited;
end;

procedure TfrmbyzBase.FormShow(Sender: TObject);
begin
  inherited;
  FocusedFirstControl(pnlMain);
end;

function TfrmbyzBase.FocusedFirstControl(panel_groupbox_pagecontrol_tabsheet: TWinControl): Boolean;
var
  nIndex, nProcessCount: Integer;
  PanelContainer: TWinControl;
begin
  nProcessCount := 0;
  nProcessCount := nProcessCount + 1;
  PanelContainer := nil;
  Result := False;
  if nProcessCount = 1 then
    Result := False;
  if panel_groupbox_pagecontrol_tabsheet = nil then
    PanelContainer := pnlMain
  else
  begin
    if panel_groupbox_pagecontrol_tabsheet.ClassType = TPanel then
      PanelContainer := panel_groupbox_pagecontrol_tabsheet as TPanel
    else if panel_groupbox_pagecontrol_tabsheet.ClassType = TcxGroupBox then
      PanelContainer := panel_groupbox_pagecontrol_tabsheet as TcxGroupBox
    else if panel_groupbox_pagecontrol_tabsheet.ClassType = TcxPageControl then
      PanelContainer := panel_groupbox_pagecontrol_tabsheet as TcxPageControl
    else if panel_groupbox_pagecontrol_tabsheet.ClassType = TcxTabSheet then
      PanelContainer := panel_groupbox_pagecontrol_tabsheet as TcxTabSheet;
  end;
  for nIndex := 0 to PanelContainer.ControlCount-1 do
  begin
    if Result then
      Exit;
    if PanelContainer.Controls[nIndex].ClassType = TPanel then
      Result := FocusedFirstControl(PanelContainer.Controls[nIndex] as TPanel)
    else if PanelContainer.Controls[nIndex].ClassType = TcxGroupBox then
      Result := FocusedFirstControl(PanelContainer.Controls[nIndex] as TcxGroupBox)
    else if PanelContainer.Controls[nIndex].ClassType = TcxPageControl then
      Result := FocusedFirstControl(PanelContainer.Controls[nIndex] as TcxPageControl)
    else if PanelContainer.Controls[nIndex].ClassType = TcxTabSheet then
    begin
      if PanelContainer is TcxPageControl then
      begin
        if TcxPageControl(PanelContainer).ActivePageIndex = TcxTabSheet(PanelContainer.Controls[nIndex]).TabIndex then
          Result := FocusedFirstControl(PanelContainer.Controls[nIndex] as TcxTabSheet)
      end
      else
        Result := FocusedFirstControl(PanelContainer.Controls[nIndex] as TcxTabSheet)
    end
    else
    if (TControl(PanelContainer.Controls[nIndex]).ClassType = TcxCheckBox)
    or (TControl(PanelContainer.Controls[nIndex]).ClassType = TcxRadioGroup)
    or (TControl(PanelContainer.Controls[nIndex]).ClassType = TcxRadioButton)
    or (TControl(PanelContainer.Controls[nIndex]).ClassType = TcxTextEdit)
    or (TControl(PanelContainer.Controls[nIndex]).ClassType = TcxComboBox)
    or (TControl(PanelContainer.Controls[nIndex]).ClassType = TcxMemo)
    then
    begin
      if  Self.Visible
      and TControl(TControl(PanelContainer.Controls[nIndex]).Parent).Visible
      and TControl(PanelContainer.Controls[nIndex]).Enabled
      and TControl(PanelContainer.Controls[nIndex]).Visible
      then
      begin
        TWinControl(PanelContainer.Controls[nIndex]).SetFocus;
        Result := True;
        break;
      end;
    end;
  end;
end;

procedure TfrmbyzBase.WmAfterShow(var Msg: TMessage);
begin
  //
end;
procedure TfrmbyzBase.WmAfterCreate(var Msg: TMessage);
begin
//
end;
end.
