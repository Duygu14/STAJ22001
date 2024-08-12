unit MCAcuteGVHDScore;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, byzMCBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus,dxSkinsCore, cxControls, cxContainer, cxEdit, Data.DB,
  OracleData, Vcl.AppEvnts, cxTextEdit, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxLabel, cxGroupBox, Vcl.StdCtrls, cxButtons, cxStyles,cxImageComboBox,
  dxScrollbarAnnotations, cxVGrid, cxDBVGrid, cxInplaceContainer,msgConst, cxClasses,
  DtMdGeneral, DtMdMedCard, cxDBEdit, Oracle, byzTheBezier,CommonConf;

type
  TfrmMCAcuteGVHDScore = class(TfrmbyzMCBase)
    vgAcuteGVHDScore: TcxDBVerticalGrid;
    vgAcuteGVHDScoreCategoryRow1: TcxCategoryRow;
    vgAcuteGVHDScoreDBEditorRow2: TcxDBEditorRow;
    vgAcuteGVHDScorePROCESS_TIME: TcxDBEditorRow;
    vgAcuteGVHDScoreCUSER: TcxDBEditorRow;
    vgAcute_GVHD_Score_CategoryRow2: TcxCategoryRow;
    vgAcuteGVHDScoreSKIN: TcxDBEditorRow;
    vgAcuteGVHDScoreLIVER: TcxDBEditorRow;
    vgAcuteGVHDScoreUPPER_GIS: TcxDBEditorRow;
    vgAcuteGVHDScoreLOWER_GIS: TcxDBEditorRow;
    vgAcuteGVHDScoreCategoryRow2: TcxCategoryRow;
    vgAcuteGVHDScoreSCORE: TcxDBEditorRow;
    procedure btnBaseSaveClick(Sender: TObject);override;
    procedure btnBaseAddClick(Sender: TObject);override;
    procedure btnBaseDeleteClick(Sender: TObject);override;
    procedure FormCreate(Sender: TObject);override;
    procedure vgAcuteGVHDScoreEditValueChanged(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
  private
    { Private declarations }
    lgvOracleDataSet1 : TOracleDataSet;
    procedure SetRepositoryItems;
    procedure ScoreCalculate;
  public
    { Public declarations }
     procedure ArrangeAcuteGVHDScore(pOraDataset : TOracleDataSet);
  end;

var
  frmMCAcuteGVHDScore: TfrmMCAcuteGVHDScore;

implementation

{$R *.dfm}

procedure TfrmMCAcuteGVHDScore.ArrangeAcuteGVHDScore(pOraDataset: TOracleDataSet);
begin
  if pOraDataSet = nil then
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
  vgAcuteGVHDScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;

end;

procedure TfrmMCAcuteGVHDScore.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) and (lgvOracleDataSet1 <> nil) then
    Exit;
  vgAcuteGVHDScore.OnFocusedRecordChanged := Nil;
  OracleDataSet1Det.ReadOnly := false;
  OracleDataSet1Det.First;
  OracleDataSet1Det.Insert;
  OracleDataSet1Det.FieldByName('PROCESS_TIME').AsDateTime := Now;
  OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
  OracleDataSet1Det.FieldByName('CUSER').AsString := UserName;
  OracleDataSet1Det.Post;
  OracleDataSet1Det.Refresh;
  vgAcuteGVHDScore.OptionsData.Editing := not OracleDataSet1Det.isEmpty;
end;

procedure TfrmMCAcuteGVHDScore.btnBaseDeleteClick(Sender: TObject);
begin
  inherited;
  if lgvOracleDataSet1 <> nil then
    Exit;
  if OracleDataSet1Det.RecordCount = 0 then
    Exit;
  if Not (OracleDataSet1Det.ReadOnly) then
  begin
    if MessageCustom(msgMultiUsed169) then
      OracleDataSet1Det.Delete
    else
      Exit;
  end;
  vgAcuteGVHDScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCAcuteGVHDScore.btnBaseSaveClick(Sender: TObject);
begin
  inherited;
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
end;

procedure TfrmMCAcuteGVHDScore.FormCreate(Sender: TObject);
begin
  inherited;
  btnBaseClose.Visible := true;
  btnBaseSave.Visible := true;
  btnBasePrint.Visible := true;
  btnBaseDelete.Visible := true;
end;

procedure TfrmMCAcuteGVHDScore.SetRepositoryItems;
begin
  vgAcuteGVHDScoreSKIN.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSKIN',1173);
  vgAcuteGVHDScoreLIVER.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriLIVER',1174);
  vgAcuteGVHDScoreUPPER_GIS.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriUPPER_GIS',1175);
  vgAcuteGVHDScoreLOWER_GIS.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriLOWER_GIS',1176);
end;

procedure TfrmMCAcuteGVHDScore.vgAcuteGVHDScoreEditValueChanged(Sender: TObject;
  ARowProperties: TcxCustomEditorRowProperties);
begin
  inherited;
  ScoreCalculate;
end;

procedure TfrmMCAcuteGVHDScore.ScoreCalculate;
const
  lcSQL = 'SELECT SUM(NVL(PD.VALUE,0)) '+
          'FROM MC_PARAMETERS_DETAIL PD '+
          'WHERE PD.ID IN (:PD_IDS)';
  var
  lvOqGetContVal: TOracleQuery;
  lvIds: String;
  procedure ArrangeWhereSQL(pVal:String);
  begin
    if pVal = ''  then
      Exit;
    if lvIds = '' then
      lvIds := pVal
    else lvIds := lvIds + ',' + pVal;
  end;
begin
  lvIds := '';
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('SKIN').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('LIVER').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('UPPER_GIS').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('LOWER_GIS').AsString);

  lvOqGetContVal := GetNewOracleQuery(lcSQL);
  try
    lvOqGetContVal.DeclareAndSet('PD_IDS', otSubst, lvIds);
    lvOqGetContVal.Execute;

    OracleDataSet1Det.FieldByName('SCORE').AsInteger := lvOqGetContVal.FieldAsInteger(0);

    if OracleDataSet1Det.State = dsBrowse then
      OracleDataSet1Det.Edit;

  finally
    lvOqGetContVal.Free;
  end;
end;

end.
