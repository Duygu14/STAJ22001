unit MCNihssScore;

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
  TfrmMCNihssScore = class(TfrmbyzMCBase)
    vgNihssScore: TcxDBVerticalGrid;
    vgNihssScoreCategoryRow1: TcxCategoryRow;
    vgNihssScoreDBEditorRow2: TcxDBEditorRow;
    vgNihssScoreDBEditorRow4: TcxDBEditorRow;
    vgNihssScoreDBEditorRow3: TcxDBEditorRow;
    vgNihssScoreCategoryRow3: TcxCategoryRow;
    vgNihssScoreCategoryRow2: TcxCategoryRow;
    vgNihssScoreCONS_LEVEL: TcxDBEditorRow;
    vgNihssScoreCONS_LEVEL_QUEST: TcxDBEditorRow;
    vgNihssScoreCONS_COMMANDS: TcxDBEditorRow;
    vgNihssScoreLOOK: TcxDBEditorRow;
    vgNihssScoreVIEW_FIELD: TcxDBEditorRow;
    vgNihssScoreFACIAL_PARESIS: TcxDBEditorRow;
    vgNihssScoreCategoryRow4: TcxCategoryRow;
    vgNihssScoreMOTOR_LEFT_ARM: TcxDBEditorRow;
    vgNihssScoreMOTOR_RIGHT_ARM: TcxDBEditorRow;
    vgNihssScoreCategoryRow5: TcxCategoryRow;
    vgNihssScoreMOTOR_LEFT_LEG: TcxDBEditorRow;
    vgNihssScoreMOTOR_RIGHT_LEG: TcxDBEditorRow;
    vgNihssScoreATAKSI: TcxDBEditorRow;
    vgNihssScoreSPEECH: TcxDBEditorRow;
    vgNihssScoreDYSARTHRIA: TcxDBEditorRow;
    vgNihssScoreOMISSION: TcxDBEditorRow;
    Label1: TLabel;
    Label2: TLabel;
    vgNihssScoreSENSE: TcxDBEditorRow;
    vgNihssScoreDBEditorRow1: TcxDBEditorRow;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure btnBaseSaveClick(Sender: TObject);override;
    procedure btnBaseAddClick(Sender: TObject);override;
    procedure btnBaseDeleteClick(Sender: TObject);override;
    procedure FormCreate(Sender : TObject);override;
    procedure vgNihssScoreEditValueChanged(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
  private
    { Private declarations }
    lgvOracleDataSet1: TOracleDataSet;
    procedure SetRepositoryItems;
    procedure ScoreCalculate;
  public
    { Public declarations }
    procedure ArrangeNihssScore(pOraDataSet:TOracleDataSet);
  end;

var
  frmMCNihssScore: TfrmMCNihssScore;

implementation

{$R *.dfm}

procedure TfrmMCNihssScore.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) and (lgvOracleDataSet1 <> nil) then
   Exit;
  vgNihssScore.OnFocusedRecordChanged := Nil;
  OracleDataSet1Det.ReadOnly := false;
  OracleDataSet1Det.First;
  OracleDataSet1Det.Insert;
  OracleDataSet1Det.FieldByName('PROCESS_TIME').AsDateTime := Now;
  OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
  OracleDataSet1Det.FieldByName('CUSER').AsString := UserName;
  OracleDataSet1Det.FieldByName('NURSE_ID').AsInteger := UserId;
  OracleDataSet1Det.Post;
  OracleDataSet1Det.Refresh;
  vgNihssScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;

end;

procedure TfrmMCNihssScore.btnBaseDeleteClick(Sender: TObject);
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
  vgNihssScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;
end;

procedure TfrmMCNihssScore.btnBaseSaveClick(Sender: TObject);
begin
  inherited;
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
end;

procedure TfrmMCNihssScore.FormCreate(Sender : TObject);
begin
  inherited;
  btnBaseClose.Visible := true;
  btnBaseSave.Visible := true;
  btnBasePrint.Visible := true;
  btnBaseDelete.Visible := true;
  Memo1.Lines.Text := '    Ulusal Saðlýk Ýnme Ölçeði (NIHSS) en yaygýn olarak inmenin þiddetini ölçmek için kullanýlýr'+
  ' ve 11 kategoriye ve 0 ila 42 arasýnda deðiþen bir puana sahiptir. NIHSS Ýnme Ölçeði bilinç, görme, duyum, hareket' +
  ' konuþma ve dil dahil olmak üzere beyin fonksiyonunun çeþitli yönlerini ölçer. Odaklanmýþ bir nörolojik muayene' +
  ' sýrasýnda bu fiziksel ve biliþsel iþlevlerin her biri için belli sayýda puan verilir.';
  Memo2.Lines.Text := '    En yüksek 42 skoru en þiddetli ve yýkýcý inmeyi göstermektedir. NIH inme skalasý '+
  'skorlama sistemi ile ölçülen inme þiddet derecesi:';
  Memo3.Lines.Text := '0 = Vuruþ Yok'+ sLineBreak + '1-4 = Küçük Ýnme' + sLineBreak + '5-15 = Orta Vuruþ'
  + sLineBreak + '15-20 = Orta/Þiddetli Ýnme'+ sLineBreak +'21-42 = Þiddetli Ýnme';
end;


procedure TfrmMCNihssScore.ArrangeNihssScore(pOraDataset : TOracleDataSet);
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

  vgNihssScore.OptionsData.Editing := not OracleDataSet1Det.IsEmpty;

end;

procedure TfrmMCNihssScore.SetRepositoryItems;
begin
  vgNihssScoreCONS_LEVEL.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriCONS_LEVEL', 1135);
  vgNihssScoreCONS_LEVEL_QUEST.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriCONS_LEVEL_QUEST', 1136);
  vgNihssScoreCONS_COMMANDS.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriCONS_COMMANDS', 1137);
  vgNihssScoreLOOK.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriLOOK', 1138);
  vgNihssScoreVIEW_FIELD.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriVIEW_FIELD', 1139);
  vgNihssScoreFACIAL_PARESIS.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriFACIAL_PARESIS', 1140);
  vgNihssScoreMOTOR_LEFT_ARM.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriMOTOR_LEFT_ARM', 1141);
  vgNihssScoreMOTOR_RIGHT_ARM.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriMOTOR_RIGHT_ARM', 1142);
  vgNihssScoreMOTOR_LEFT_LEG.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriMOTOR_LEFT_LEG', 1143);
  vgNihssScoreMOTOR_RIGHT_LEG.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriMOTOR_RIGHT_LEG', 1144);
  vgNihssScoreATAKSI.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriATAKSI', 1145);
  vgNihssScoreSENSE.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSENSE', 1146);
  vgNihssScoreSPEECH.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSPEECH', 1147);
  vgNihssScoreDYSARTHRIA.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriDYSARTHRIA', 1148);
  vgNihssScoreOMISSION.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriOMISSION', 1149);
end;

procedure TfrmMCNihssScore.vgNihssScoreEditValueChanged(Sender: TObject;
  ARowProperties: TcxCustomEditorRowProperties);
begin
  inherited;
  ScoreCalculate;
end;

procedure TfrmMCNihssScore.ScoreCalculate;
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

  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('CONS_LEVEL').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('CONS_LEVEL_QUEST').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('CONS_COMMANDS').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('LOOK').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('VIEW_FIELD').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('FACIAL_PARESIS').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('MOTOR_LEFT_ARM').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('MOTOR_RIGHT_ARM').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('MOTOR_LEFT_LEG').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('MOTOR_RIGHT_LEG').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('ATAKSI').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('SENSE').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('SPEECH').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('DYSARTHRIA').AsString);
  ArrangeWhereSQL(OracleDataSet1Det.FieldByName('OMISSION').AsString);

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
