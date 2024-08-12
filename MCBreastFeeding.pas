unit MCBreastFeeding;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, byzMCBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, Data.DB,
  OracleData, Vcl.AppEvnts, cxTextEdit, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxLabel, cxGroupBox, Vcl.StdCtrls, cxButtons, cxStyles,
  dxScrollbarAnnotations, cxImageComboBox, cxVGrid, cxDBVGrid,
  cxInplaceContainer,dxSkinsCore,DtMdGeneral,DtMdMedCard,CommonConf,cxDBEdit,Oracle,
  byzTheBezier,msgConst,cxClasses;


type
  TfrmMCBreastFeeding = class(TfrmbyzMCBase)
    vgBreastFeeding: TcxDBVerticalGrid;
    vgBreastFeedingCategoryRow1: TcxCategoryRow;
    vgBreastFeedingCTIME: TcxDBEditorRow;
    vgBreastFeedingPROCESS_TIME: TcxDBEditorRow;
    vgBreastFeedingCUSER: TcxDBEditorRow;
    vgBreastFeedingBODY_POSITION: TcxDBEditorRow;
    vgBreastFeedingBABY_BEHAVIOR: TcxDBEditorRow;
    vgBreastFeedingEMOTIONAL_BOND: TcxDBEditorRow;
    vgBreastFeedingANATOMY: TcxDBEditorRow;
    vgBreastFeedingFEEDING: TcxDBEditorRow;
    vgBreastFeedingFEEDING_TIME: TcxDBEditorRow;
    vgBreastFeedingCategoryRow2: TcxCategoryRow;
    vgBreastFeedingNOTE: TcxDBEditorRow;
    procedure btnBaseSaveClick(Sender: TObject);override;
    procedure btnBaseAddClick(Sender: TObject);override;
    procedure btnBaseDeleteClick(Sender: TObject);override;
    procedure FormCreate(Sender : TObject);override;
  private
    { Private declarations }
    lgvOracleDataSet1 : TOracleDataSet;
    procedure SetRepositoryItems;
  public
    { Public declarations }
    procedure ArrangeMCBreastFeeding(pOraDataSet : TOracleDataSet);
  end;

var
  frmMCBreastFeeding: TfrmMCBreastFeeding;

implementation

{$R *.dfm}

procedure TfrmMCBreastFeeding.ArrangeMCBreastFeeding(pOraDataSet : TOracleDataSet);
begin
  if pOraDataset = nil then
  begin
    OracleDataSet1.SetVariable('COM_ID',FBPatientInfo.BConOfMedId);
    OracleDataSet1.Open;
    if OracleDataSet1.isempty then
    begin
      OracleDataSet1.insert;
      OracleDataSet1.fieldByName('COM_ID').ASINTEGER := FBPatientInfo.BConOfMedId;
      OracleDataSet1.POST;
    end;
  end
  else
  begin
    //byzmedcarddan cagrildiysa
    BorderStyle := bsNone;
    Align := alClient;
    BorderWidth := 10;
    lgvFrmOpenFromMedCard := True;

    lgvOracleDataSet1 := pOraDataset;
    gbBaseTop.visible := false;
    pnlBaseBottom.visible := false;
    OracleDataSet1Det.Readonly := true;
    OracleDataSet1Det.Master := lgvOracleDataSet1;
  end;
  if OracleDataSet1Det.SQL.TExt <> '' then
    OracleDataSet1Det.Open;

  SetRepositoryItems;
  vgBreastFeeding.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCBreastFeeding.SetRepositoryItems;
begin
  vgBreastFeedingBODY_POSITION.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriBODY_POSITION',1177);
  vgBreastFeedingBABY_BEHAVIOR.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriBABY_BEHAVIOR',1178);
  vgBreastFeedingEMOTIONAL_BOND.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriEMOTIONAL_BOND',1179);
  vgBreastFeedingANATOMY.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriANATOMY',1180);
  vgBreastFeedingFEEDING.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriFEEDING',1181);
  vgBreastFeedingFEEDING_TIME.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriFEEDING_TIME',1182);
end;


procedure TfrmMCBreastFeeding.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) and (lgvOracleDataSet1 <> nil) then
    Exit;
  vgBreastFeeding.OnFocusedRecordChanged := Nil;
  try
    OracleDataSet1Det.ReadOnly := false;
    OracleDataSet1Det.Insert;
    OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
    OracleDataSet1Det.FieldByName('CUSER').AsString := UserName;
    OracleDataSet1Det.Post;
    OracleDataSet1Det.Refresh;
  finally
    vgBreastFeeding.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
  end;
end;

procedure TfrmMCBreastFeeding.btnBaseDeleteClick(Sender: TObject);
begin
  inherited;
  if lgvOracleDataSet1 <> nil then
    Exit;
  if OracleDataSet1Det.RecordCount = 0 then
    Exit;
  if not(OracleDataSet1Det.ReadOnly) then
  begin
    if MessageCustom(msgMultiUsed169) then
      OracleDataSet1Det.Delete
    else
      Exit;
  end;
  vgBreastFeeding.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCBreastFeeding.btnBaseSaveClick(Sender: TObject);
begin
  if (OracleDataSet1Det.ReadOnly) or (OracleDataSet1Det.RecordCount = 0) then
    Exit;
    //dsBrowse => düzenleme veya ekleme modu
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
end;

procedure TfrmMCBreastFeeding.FormCreate(Sender : TObject);
begin
  inherited;
  btnBaseSave.Visible := true;
  btnBaseAdd.Visible := true;
  btnBaseDelete.Visible := true;
  btnBasePrint.Visible := true;
end;

end.
