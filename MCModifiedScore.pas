unit MCModifiedScore;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, byzMCBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, Data.DB,
  OracleData, Vcl.AppEvnts, cxTextEdit, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxLabel, cxGroupBox, Vcl.StdCtrls, cxButtons, cxStyles,
  dxScrollbarAnnotations, cxImageComboBox, cxVGrid, cxDBVGrid,byzTheBezier,cxClasses,
  cxInplaceContainer,msgConst,CommonConf,DtMdMedCard,DtMdGeneral,cxDBEdit, Oracle;

type
  TfrmMCModifiedScore = class(TfrmbyzMCBase)
    vgModifiedScore: TcxDBVerticalGrid;
    vgModifiedScoreCategoryRow1: TcxCategoryRow;
    vgModifiedScoreCTIME: TcxDBEditorRow;
    vgModifiedScorePROCESS_TIME: TcxDBEditorRow;
    vgModifiedScoreCUSER: TcxDBEditorRow;
    vgModifiedScoreCategoryRow3: TcxCategoryRow;
    vgModifiedScoreLEVEL_CONSCIOUSNESS: TcxDBEditorRow;
    vgModifiedScoreACTIVITY: TcxDBEditorRow;
    vgModifiedScoreRESPIRATORY: TcxDBEditorRow;
    vgModifiedScorePROT_ID: TcxDBEditorRow;
    vgModifiedScoreSPO2: TcxDBEditorRow;
    vgModifiedScoreBLOOD_PRESSURE: TcxDBEditorRow;
    vgModifiedScorePULSE: TcxDBEditorRow;
    vgModifiedScoreRES_RESULT: TcxDBEditorRow;
    vgModifiedScoreCategoryRow2: TcxCategoryRow;
    vgModifiedScoreMAS_SCORE: TcxDBEditorRow;
    procedure btnBaseSaveClick(Sender: TObject);override;
    procedure btnBaseAddClick(Sender: TObject);override;
    procedure btnBaseDeleteClick(Sender: TObject);override;
    procedure FormCreate(Sender : TObject);override;
    procedure vgModifiedScoreEditValueChanged(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
  private
    { Private declarations }
    lgvOracleDataSet1: TOracleDataSet;
    procedure SetRepositoryItems;
    procedure ScoreCalculate;
  public
    { Public declarations }
    procedure ArrangeModifiedScore(pOraDataset:TOracleDataset);
  end;

var
  frmMCModifiedScore: TfrmMCModifiedScore;

implementation

{$R *.dfm}

procedure TfrmMCModifiedScore.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) and (lgvOracleDataSet1 <> nil) then
   Exit;
  vgModifiedScore.OnFocusedRecordChanged := Nil;
  OracleDataSet1Det.ReadOnly := false;
  OracleDataSet1Det.Insert;
  OracleDataSet1Det.FieldByName('PROCESS_TIME').AsDateTime := Now;
  OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
  OracleDataSet1Det.FieldByName('CUSER').AsString := UserName;
  OracleDataSet1Det.Post;
  OracleDataSet1Det.Refresh;
  vgModifiedScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCModifiedScore.btnBaseDeleteClick(Sender: TObject);
begin
  inherited;
  if (lgvOracleDataSet1 <> nil) then
    Exit;
  if OracleDataSet1Det.RecordCount=0 then
    Exit;
  if Not(OracleDataSet1Det.ReadOnly) then
  begin
    if MessageCustom(msgMultiUsed169) then
    	OracleDataSet1Det.Delete
    else
    	Exit;
  end;
  vgModifiedScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCModifiedScore.btnBaseSaveClick(Sender: TObject);
begin
  inherited;
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
end;

procedure TfrmMCModifiedScore.FormCreate(Sender : TObject);
begin
  inherited;
  btnBaseClose.Visible := true;
  btnBaseSave.Visible := true;
  btnBasePrint.Visible := true;
  btnBaseDelete.Visible := true;
end;

procedure TfrmMCModifiedScore.ArrangeModifiedScore(pOraDataset:TOracleDataset);
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
  else//byzmedcarddan cagrildiysa
  begin
    BorderStyle := bsNone;
    Align := alClient;
    BorderWidth := 10;
    lgvFrmOpenFromMedCard := True;

    gbBaseTop.visible := false;
    pnlBaseBottom.visible := false;
    OracleDataSet1Det.Readonly := true;
    lgvOracleDataSet1 := pOraDataset;
    //FBPatientInfo.BConOfMedId := lgvOdsMainPat.FieldByName('ID').AsInteger;
    OracleDataSet1Det.Master := lgvOracleDataSet1;
    OracleDataSet1Det.Readonly := true;
  end;
  if OracleDataSet1Det.SQL.TExt <> '' then
     OracleDataSet1Det.Open;
     SetRepositoryItems;

  vgModifiedScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;

  vgModifiedScoreLEVEL_CONSCIOUSNESS.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriLEVEL_CONSCIOUSNESS', 1150);
  vgModifiedScoreACTIVITY.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriACTIVITY', 1116);
  vgModifiedScoreRESPIRATORY.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriRESPIRATORY', 1117);
  vgModifiedScoreSPO2.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriSPO2', 1118);
  vgModifiedScoreBLOOD_PRESSURE.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriBLOOD_PRESSURE', 1119);
  vgModifiedScorePULSE.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriPULSE', 1120);
end;

procedure TfrmMCModifiedScore.SetRepositoryItems;
begin
  vgModifiedScoreLEVEL_CONSCIOUSNESS.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriLEVEL_CONSCIOUSNESS', 1150);
  vgModifiedScoreACTIVITY.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriACTIVITY', 1116);
  vgModifiedScoreRESPIRATORY.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriRESPIRATORY', 1117);
  vgModifiedScoreSPO2.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriSPO2', 1118);
  vgModifiedScoreBLOOD_PRESSURE.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriBLOOD_PRESSURE', 1119);
  vgModifiedScorePULSE.Properties.RepositoryItem :=
    dmMedCard.CreateImgCmbBox('eriPULSE', 1120);
end;

procedure TfrmMCModifiedScore.vgModifiedScoreEditValueChanged(
  Sender: TObject; ARowProperties: TcxCustomEditorRowProperties);
begin
  inherited;
  ScoreCalculate;
end;

procedure TfrmMCModifiedScore.ScoreCalculate;
const
  lcSQL = 'SELECT SUM(NVL(PD.VALUE,0)) '+
          'FROM MC_PARAMETERS_DETAIL PD '+
          'WHERE PD.ID IN (:PD_IDS)';
var
  lvOqGetContVal: TOracleQuery;
  lvIds: String;

  procedure ArrangeWhereSQL(pVal: String);
  begin
    if pVal = '' then
      Exit;
    if lvIds = '' then
      lvIds := pVal
    else lvIds := lvIds + ', ' + pVal;
  end;
  begin
  lvIds := '';

  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('LEVEL_CONSCIOUSNESS').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('ACTIVITY').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('RESPIRATORY').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('SPO2').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('BLOOD_PRESSURE').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('PULSE').AsString);

  lvOqGetContVal := GetNewOracleQuery(lcSQL);
  try
    lvOqGetContVal.DeclareAndSet('PD_IDS', otSubst, lvIds);
    lvOqGetContVal.Execute;

    OracleDataSet1Det.FieldByName('MAS_SCORE').AsInteger := lvOqGetContVal.FieldAsInteger(0);

    if OracleDataSet1Det.State = dsBrowse then
      OracleDataSet1Det.Edit;
  finally
    lvOqGetContVal.Free;
  end;

end;

end.
