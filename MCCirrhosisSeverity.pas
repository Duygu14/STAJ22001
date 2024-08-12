unit MCCirrhosisSeverity;

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
  TfrmMCCirrhosisSeverity = class(TfrmbyzMCBase)
    vgCirrhosisSeverity: TcxDBVerticalGrid;
    vgCirrhosisSeverityDate: TcxDBEditorRow;
    vgCirrhosisSeverityHour: TcxDBEditorRow;
    vgCirrhosisSeverityCuser: TcxDBEditorRow;
    vgCirrhosisSeverityParameter: TcxCategoryRow;
    vgCirrhosisSeverityTOTAL_BILIRUBIN: TcxDBEditorRow;
    vgCirrhosisSeveritySERUM_ALBUMIN: TcxDBEditorRow;
    vgCirrhosisSeverityPT_INR: TcxDBEditorRow;
    vgCirrhosisSeverityASCITES: TcxDBEditorRow;
    vgCirrhosisSeverityHEPATIC_ENCEPHALOPATHY: TcxDBEditorRow;
    vgCirrhosisSeverityOther: TcxCategoryRow;
    vgCirrhosisSeverityTOTAL_POINTS: TcxDBEditorRow;
    vgCirrhosisSeverityNOTE: TcxDBEditorRow;
    Panel4: TPanel;
    cxMemo1: TcxMemo;
    cxMemo2: TcxMemo;
    cxMemo3: TcxMemo;
    procedure btnBaseSaveClick(Sender: TObject);override;
    procedure btnBaseAddClick(Sender: TObject);override;
    procedure FormCreate(Sender : TObject);override;
    procedure btnBaseDeleteClick(Sender: TObject);override;
    procedure vgCirrhosisSeverityEditValueChanged(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);


  private
    lgvOracleDataSet1 : TOracleDataSet;
    { Private declarations }
    procedure SetRepositoryItems;
    procedure ScoreCalculate;
  public
    { Public declarations }
    procedure ArrangeCirrhosisSeverity(pOraDataSet : TOracleDataSet);
  end;

var
  frmMCCirrhosisSeverity: TfrmMCCirrhosisSeverity;

implementation

{$R *.dfm}

procedure TfrmMCCirrhosisSeverity.ArrangeCirrhosisSeverity(pOraDataSet : TOracleDataSet);
begin
  if pOraDataSet = nil then
  begin
    OracleDataSet1.SetVariable('COM_ID',FBPatientInfo.BConOfMedId); //COM_ID deðiþkenine deðer atama
    OracleDataSet1.Open;
    if OracleDataSet1.IsEmpty then
    begin
      OracleDataSet1.Insert;
      OracleDataSet1.FieldByName('COM_ID').AsInteger := FBPatientInfo.BConOfMedId; // COM_ID alanýna deðer atama
      OracleDataSet1.Post;
    end;
  end
  else
  begin
    //byzmedcarddan çaðrýldýysa
    BorderStyle := bsNone;
    Align := alClient;
    borderWidth := 10;
    lgvFrmOpenFromMedCard := true;

    lgvOracleDataSet1 := pOraDataSet; //lgvOracleDataSet1'e pOraDataSet deðerini atama
    gbBaseTop.Visible := false;
    pnlBaseBottom.Visible := false;
    OracleDataSet1Det.ReadOnly := true;
    OracleDataSet1Det.Master := lgvOracleDataSet1;  //OracleDataSet1Det'in master baðlantýsýný lgvOracleDataSet1'e baðlama
  end;
  if OracleDataSet1Det.SQL.Text <> '' then
    OracleDataSet1Det.Open;  //OracleDataSet1Det'i açma

  SetRepositoryItems;
  vgCirrhosisSeverity.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCCirrhosisSeverity.SetRepositoryItems;
begin
  vgCirrhosisSeverityTOTAL_BILIRUBIN.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriTOTAL_BILIRUBIN',1193);
  vgCirrhosisSeveritySERUM_ALBUMIN.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSERUM_ALBUMIN',1194);
  vgCirrhosisSeverityPT_INR.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriPT_INR',1195);
  vgCirrhosisSeverityASCITES.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriASCITES',1196);
  vgCirrhosisSeverityHEPATIC_ENCEPHALOPATHY.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriHEPATIC_ENCEPHALOPATHY',1197);
end;

procedure TfrmMCCirrhosisSeverity.vgCirrhosisSeverityEditValueChanged(
  Sender: TObject; ARowProperties: TcxCustomEditorRowProperties);
begin
  inherited;
  //OracleDataSet1Det.Post;
  ScoreCalculate;
end;

procedure TfrmMCCirrhosisSeverity.ScoreCalculate;
const
  lcSQL = 'SELECT SUM(NVL(PD.VALUE,0)) '+
          'FROM MC_PARAMETERS_DETAIL PD '+
          'WHERE PD.ID IN (:PD_IDS)';
  var
  lvOqGetContVal: TOracleQuery;
  lvIds: String;
  // lvIds deðiþkenine veri eklemek için yerleþik bir prosedür
  procedure ArrangeWhereSQL(pVal:String);
  begin
    if pVal = '' then
      Exit;
    if lvIds = '' then
      lvIds := pVal
    else
      lvIds := lvIds + ',' + pVal;

  end;
begin
  lvIds := '';
  // Her bir alan için ArrangeWhereSQL prosedürünü çaðýrarak lvIds deðiþkenini oluþtur
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('TOTAL_BILIRUBIN').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('SERUM_ALBUMIN').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('PT_INR').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('ASCITES').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('HEPATIC_ENCEPHALOPATHY').AsString);
  // Yeni bir Oracle sorgusu oluþtur
  lvOqGetContVal := GetNewOracleQuery(lcSQL);
  try
  // PD_IDS parametresini tanýmla ve deðerini ata
    lvOqGetContVal.DeclareAndSet('PD_IDS',otSubst,lvIds);
    lvOqGetContVal.Execute;
    // Sonuçlarý al ve OracleDataSet1Det veri setine atama yap
    OracleDataSet1Det.FieldByName('TOTAL_POINTS').AsInteger := lvOqGetContVal.FieldAsInteger(0);

    if OracleDataSet1Det.State = dsBrowse then
      OracleDataSet1Det.Edit;

    //OracleDataSet1Det.Post;
  finally
  lvOqGetContVal.Free;     // lvOqGetContVal sorgu nesnesini serbest býrak
  end;
end;

procedure TfrmMCCirrhosisSeverity.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1.ReadOnly) and (lgvOracleDataSet1 <> nil) then
    Exit;
  vgCirrhosisSeverity.OnFocusedRecordChanged := Nil;
  OracleDataSet1Det.ReadOnly := false;    // OracleDataSet1Det veri setini düzenlenebilir (ReadOnly = false) hale getir
  OracleDataSet1Det.First;
  OracleDataSet1Det.Insert;
  OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
  OracleDataSet1Det.FieldByName('CUSER').AsString :=UserName;
  OracleDataSet1Det.Post;
  OracleDataSet1Det.Refresh;
  vgCirrhosisSeverity.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCCirrhosisSeverity.btnBaseDeleteClick(Sender: TObject);
begin
  if lgvOracleDataSet1 <> nil then
    Exit;
  if OracleDataSet1Det.RecordCount = 0 then
    Exit;
  if Not(OracleDataSet1Det.ReadOnly) then
  begin
    if MessageCustom(msgMultiUsed169) then
      OracleDataSet1Det.Delete
    else
    Exit;
  end;
  vgCirrhosisSeverity.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCCirrhosisSeverity.btnBaseSaveClick(Sender: TObject);
begin
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
end;

procedure TfrmMCCirrhosisSeverity.FormCreate(Sender : TObject);
begin
  inherited;
  btnBaseSave.Visible := true;
  btnBaseDelete.Visible := btnBaseSave.Visible;
  btnBasePrint.Visible := btnBaseSave.Visible;
  btnBaseAdd.Visible := btnBaseSave.Visible;
  btnBaseClose.Visible := btnBaseSave.Visible;
end;


end.
