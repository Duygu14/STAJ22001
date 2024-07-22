unit CostumSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CommonConf, DtMdGeneral, DtMdMain, msgConst, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, byzTheBezier, Vcl.Menus, cxLabel,
  Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, byzButtonEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, Data.DB, OracleData, Oracle, dxBarBuiltInMenu, cxPC, Vcl.ExtCtrls, cxImageComboBox,
  cxClasses, cxEditRepositoryItems, DtMdMedCard, dxWheelPicker, dxNumericWheelPicker, cxSpinEdit;
//  MCConstraintEvaluation;

type
  TfrmCostumSelect = class(TForm)
    pcCostumSelect: TcxPageControl;
    pnlBottom: TPanel;
    btnCancel: TcxButton;
    btnOk: TcxButton;
    tsConstraintEval: TcxTabSheet;
    beDeptList: TbyzButtonEdit;
    beDrList: TbyzButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    deDateTime: TcxDateEdit;
    tsCostum: TcxTabSheet;
    tsPartograph: TcxTabSheet;
    pcPartographDataControl: TcxPageControl;
    tsPartographSelectInputType: TcxTabSheet;
    tsPartographFETAL_HEART_RATE: TcxTabSheet;
    tsPartographSERVIKS_SIZE: TcxTabSheet;
    tsPartographAMNION_FLUID: TcxTabSheet;
    tsPartographHEAD_LEVEL: TcxTabSheet;
    tsPartographPAIN_LEVEL: TcxTabSheet;
    lblPartographSELECTED_INPUT_TYPE: TcxLabel;
    icbPartographSELECTED_INPUT_TYPE: TcxImageComboBox;
    erEnum: TcxEditRepository;
    lblPartographFETAL_HEART_RATE: TcxLabel;
    lblPartographSERVIKS_SIZE: TcxLabel;
    lblPartographAMNION_FLUID: TcxLabel;
    icbPartographAMNION_FLUID: TcxImageComboBox;
    lblPartographHEAD_LEVEL: TcxLabel;
    lblPartographPAIN_COUNT: TcxLabel;
    lblPartographPAIN_LEVEL: TcxLabel;
    icbPartographPAIN_LEVEL: TcxImageComboBox;
    seHEAD_LEVEL: TcxSpinEdit;
    seFETAL_HEART_RATE: TcxSpinEdit;
    seSERVIKS_SIZE: TcxSpinEdit;
    sePAIN_COUNT: TcxSpinEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure beDeptListPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure deDateTimePropertiesChange(Sender: TObject);
    procedure icbPartographSELECTED_INPUT_TYPEPropertiesEditValueChanged(Sender: TObject);
    procedure tePartographFETAL_HEART_RATEPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    var
      lgvArrangeType : Integer;
      lgvOracleDataSet: TOracleDataSet;
  public
    { Public declarations }
      procedure ArrangefrmCostumSelectForm(pArrangeType : Integer; pDataSet : TOracleDataSet);
  end;
var
  frmCostumSelect: TfrmCostumSelect;

implementation
uses MCConstraintEvaluation;  // SADECE CheckPatientFile FONKSIYONU ICIN EKLENDI BIZMED E GECINCE HASTA YATIS BILGILERI
{$R *.dfm}                    // DmGeneral ICERISINDEN ALINABILIR.

procedure TfrmCostumSelect.ArrangefrmCostumSelectForm(pArrangeType : Integer; pDataSet : TOracleDataSet);
begin
  //Type : 1 frmConstraintEvaluation, 2 frmMCPartograph ...
  lgvOracleDataSet := Nil;
  lgvArrangeType := pArrangeType;
  if pArrangeType = 1 then
  begin
    lgvOracleDataSet := pDataSet;
    pcCostumSelect.ActivePage := tsConstraintEval;
    frmCostumSelect.Width := frmCostumSelect.Constraints.MaxWidth;
    frmCostumSelect.Height := frmCostumSelect.Constraints.MaxHeight;
  end
  else if pArrangeType = 2 then
  begin
  	lgvOracleDataSet := pDataSet;
    pcCostumSelect.ActivePage := tsPartograph;
    pcPartographDataControl.ActivePage := tsPartographSelectInputType;
    frmCostumSelect.Width := frmCostumSelect.Constraints.MinWidth;
    frmCostumSelect.Height := frmCostumSelect.Constraints.MinHeight;
  end;

end;

procedure TfrmCostumSelect.beDeptListPropertiesEditValueChanged(Sender: TObject);
begin
  beDrList.Text := '';
end;

procedure TfrmCostumSelect.btnCancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TfrmCostumSelect.btnOkClick(Sender: TObject);
begin
  if lgvArrangeType = 1 then
  begin
    if (beDeptList.Text <> '' ) and (beDrList.Text <> '') then
    begin
      if frmMCConstraintEvaluation.CheckPatientFile(deDateTime.Date,  //SUAN SECIM YAPILAN ZAMAN VE KISITLAMA
        lgvOracleDataSet.FieldByName('STARTTIME').AsDateTime)  then   //BASLANGIC ZAMANI GONDERILIYOR
      begin
        Self.ModalResult := mrOk;

      end;
    end;
  end
  else if lgvArrangeType = 2 then
  begin
    if (((icbPartographSELECTED_INPUT_TYPE.EditValue = 1)) or
        ((icbPartographSELECTED_INPUT_TYPE.EditValue = 2) and (icbPartographAMNION_FLUID.EditValue <> 0)) or 
        ((icbPartographSELECTED_INPUT_TYPE.EditValue = 3)) or
        ((icbPartographSELECTED_INPUT_TYPE.EditValue = 4)) or
        ((icbPartographSELECTED_INPUT_TYPE.EditValue = 5) and (icbPartographPAIN_LEVEL.EditValue <> 0))) then
    begin
    	Self.ModalResult := mrOk;	
    end;
  end;
end;

procedure TfrmCostumSelect.deDateTimePropertiesChange(Sender: TObject);
begin
  if deDateTime.Date > Now  then
    deDateTime.Date := Now;
end;

procedure TfrmCostumSelect.FormShow(Sender: TObject);
begin
  if lgvArrangeType = 1 then
  begin
    deDateTime.Date := Now;
  end;

end;

procedure TfrmCostumSelect.icbPartographSELECTED_INPUT_TYPEPropertiesEditValueChanged(Sender: TObject);
begin
	if icbPartographSELECTED_INPUT_TYPE.EditValue = 1 then
  begin
    pcPartographDataControl.ActivePage := tsPartographFETAL_HEART_RATE;
  end
  else if icbPartographSELECTED_INPUT_TYPE.EditValue = 2 then
  begin
   	pcPartographDataControl.ActivePage := tsPartographAMNION_FLUID;
    icbPartographAMNION_FLUID.RepositoryItem :=
    	dmMedCard.CreateImgCmbBox('eriPartographAMNION_FLUID', 460, True);
  end
  else if icbPartographSELECTED_INPUT_TYPE.EditValue = 3 then
  begin
    pcPartographDataControl.ActivePage := tsPartographSERVIKS_SIZE;
  end
  else if icbPartographSELECTED_INPUT_TYPE.EditValue = 4 then
  begin
    pcPartographDataControl.ActivePage := tsPartographHEAD_LEVEL;
  end
  else if icbPartographSELECTED_INPUT_TYPE.EditValue = 5 then
  begin
    pcPartographDataControl.ActivePage := tsPartographPAIN_LEVEL;
    icbPartographPAIN_LEVEL.RepositoryItem :=
    	dmMedCard.CreateImgCmbBox('eriPartographPAIN_LEVEL', 461, True);
  end;
end;

procedure TfrmCostumSelect.tePartographFETAL_HEART_RATEPropertiesChange(Sender: TObject);
begin
	TcxTextEdit(Sender).EditingValue;
	TcxTextEdit(Sender).EditingText;
end;

end.
