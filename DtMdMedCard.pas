unit DtMdMedCard;

interface

uses
  System.SysUtils, System.Classes, System.Variants, cxEdit, cxEditRepositoryItems, cxClasses,
  DtMdGeneral, CommonConf, Oracle, cxCheckBox, cxExtEditRepositoryItems, cxDateUtils, Data.DB, OracleData,
  dxNavBarCollns, dxNavBar, dxBar, byzButtonEdit;

type
  TdmMedCard = class(TDataModule)
    erMedCards: TcxEditRepository;
    erIcb: TcxEditRepositoryImageComboBoxItem;
  private

    { Private declarations }
  public
    { Public declarations }
    FBPatientInfo: TBPatientInfo;

    function CreateImgCmbBox(pObjName:String; pMedCardParamId:Integer;
      pCreateNullVal: Boolean=False):TcxEditRepositoryItem;
    function CreateChckCmbBox(pObjName: String; pMedCardParamId: Integer): TcxEditRepositoryItem;
    function CreateChckCmbBoxGP(pObjName: String; pMedCardParamId: Integer): TcxEditRepositoryItem;
    function CreateRadioGroup(pObjName: String; pMedCardParamId: Integer; pColumns: Integer = 1;
      pWordWrap: Boolean = False): TcxEditRepositoryItem;

    procedure InsertFormsGeneralDisease(pComId, pType, pPId, pBPatUPN, pBPatTransId: Integer; pByzBtnName, pDiagnosDescription: Variant;
      pFirstDiagnosDate: Variant); // Hemþire Modül formlarý için Hastalýk, Alerji, Ameliyat, Ýlaç, Kronik Hastalýk, Soy geçmiþ bilgisi
    procedure InsertPatientGeneralDisease(pType, pPId,  pBPatUPN, pBPatTransId: Integer; pByzBtnName, pDiagnosDescription: Variant;
      pFirstDiagnosDate: Variant); // Hasta Dosyasýna, Hemþire Modülünden; Hastalýk, Alerji, Ameliyat, Ýlaç, Kronik Hastalýk, Soy geçmiþ bilgisi
    function InsertControlFormsGeneralDisease(pComId, pType, pPId, pBpatUPN: Integer): Boolean;    // Hemþire Formlarý
    function InsertControlGeneralDisease(pBPatTransId, pType, pPId, pBpatUPN: Integer): Boolean;   // Hasta Dosyasý
    procedure CreateMedFormMenus(pdxNavBar: TDxNavBar; pSubItem: TdxBarSubItem);
    procedure OpenMedFormCards(pOrId: Integer; pPatOraDataset: TOracleDataset);
    procedure SetByzBtnObjectEnable(pSender: TObject; pStatus: Boolean);
    // function OpenInsentiveRecordData(pPT_Id: Integer): TOracleDataSet;
    procedure TableUpdateMortalityScores(pFormType, pDetId: Integer);
    function GetParametersNote(pPID: Integer; pPType: SmallInt = 0; pIsDetail: String = '0'): string;
  end;

var
  dmMedCard: TdmMedCard;

implementation
uses byzBase, byzMCBase, MCBasiYBraden, MCWoudnAsses, MCPainAssesmentScale, MCNeoSkinRisk, MCFluidBalance,
  MCCatheterMaterialTrace, MCFallRiskHarizmi, MCFallRiskItaki, MCAdultPatientDiagnosis, MCChildPatientDiagnosis,
  McAsie, MCNutritionalRiskScore, MCAdverseImpactForm, MCConstraintEvaluation, MCSofaScoreForm, MCAnesthesiaEvaluation,
  MCEuroScoreForm, MCBaseSamples;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TdmMedCard.CreateChckCmbBoxGP(pObjName: String;
  pMedCardParamId: Integer): TcxEditRepositoryItem;
var
  lvRepItem: TcxEditRepositoryItem;
begin
  lvRepItem := erMedCards.ItemByName(pObjName);

  if lvRepItem = nil then
  begin
    lvRepItem := erMedCards.CreateItem(TcxEditRepositoryCheckComboBox);
    lvRepItem.Properties.ImmediatePost := True;
    lvRepItem.Name := pObjName;
    dmGeneral.LoadCheckComboBox(TcxEditRepositoryCheckComboBox(lvRepItem), 'GENERAL_PARAMETER_DETAILS',
      '(IS_ACTIVE = 1) AND (GP_ID = ' + pMedCardParamId.ToString + ')', 'NAME', -1);
  end;

  Result := lvRepItem;
end;

function TdmMedCard.CreateImgCmbBox(pObjName: String; pMedCardParamId: Integer;
  pCreateNullVal: Boolean=false): TcxEditRepositoryItem;
var
  lvRepItem: TcxEditRepositoryItem;
begin
  lvRepItem := erMedCards.ItemByName(pObjName);

  if lvRepItem = nil then
  begin
    lvRepItem := erMedCards.CreateItem(TcxEditRepositoryImageComboBoxItem);
    lvRepItem.Properties.ImmediatePost := True;
    lvRepItem.Name := pObjName;
    if pCreateNullVal then
    begin
      with TcxEditRepositoryImageComboBoxItem(lvRepItem).Properties.Items.Add do
      begin
        Description := '';
        Value := 0;
        Tag := 0;
      end;
    end;
    if pMedCardParamId > 0 then
      dmGeneral.LoadImageComboBox(TcxEditRepositoryImageComboBoxItem(lvRepItem).Properties, '', '', 'NAME',
         'SELECT ID, NAME, VALUE FROM MC_PARAMETERS_DETAIL WHERE IS_ACTIVE = 1 AND MCP_ID = ' + pMedCardParamId.ToString);
  end;

  Result := lvRepItem;
end;

function TdmMedCard.CreateRadioGroup(pObjName: String; pMedCardParamId: Integer; pColumns: Integer = 1;
  pWordWrap: Boolean = False): TcxEditRepositoryItem;
var
  lvRepItem: TcxEditRepositoryItem;
begin
  lvRepItem := erMedCards.ItemByName(pObjName);

  if lvRepItem = nil then
  begin
    lvRepItem := erMedCards.CreateItem(TcxEditRepositoryRadioGroupItem);
    TcxEditRepositoryRadioGroupItem(lvRepItem).Properties.Columns := pColumns;
    TcxEditRepositoryRadioGroupItem(lvRepItem).Properties.ShowEndEllipsis := True;
    TcxEditRepositoryRadioGroupItem(lvRepItem).Properties.WordWrap := pWordWrap;
    TcxEditRepositoryRadioGroupItem(lvRepItem).Properties.ImmediatePost := True;
    TcxEditRepositoryRadioGroupItem(lvRepItem).Name := pObjName;

    dmGeneral.LoadRadioGroup(TcxEditRepositoryRadioGroupItem(lvRepItem), '', '', 'NAME',
      'SELECT ID, NAME, VALUE FROM MC_PARAMETERS_DETAIL WHERE IS_ACTIVE = 1 AND MCP_ID = ' + pMedCardParamId.ToString);
  end;

  Result := lvRepItem;
end;

//BAGITMIS:22,03,2021 PARAMETRE BILGILERINI DONDUREN FONKSIYON
function TdmMedCard.GetParametersNote(pPID: Integer; pPType: SmallInt; pIsDetail: String): string;
const
  lcSQL = 'DECLARE' + #13#10 +
          '  LVRESULT  VARCHAR2(500);' + #13#10 +
          '  LV_IS_DETAIL BOOLEAN;' + #13#10 +
          'BEGIN' + #13#10 +
          '  LV_IS_DETAIL := TRUE;' + #13#10 +
          '  IF :IS_DETAIL = ''0'' THEN' + #13#10 +
          '    LV_IS_DETAIL := FALSE;' + #13#10 +
          '  END IF;' + #13#10 +
          '  SELECT GET_MC_PARAMETERS_NAME(:PID_ID, :PTYPE, LV_IS_DETAIL)' + #13#10 +
          '    INTO :LVRESULT' + #13#10 +
          '    FROM DUAL;' + #13#10 +
          'END;';
var
  lvOqParametrsNote: TOracleQuery;
begin
  Result := '';

  lvOqParametrsNote := GetNewOracleQuery(lcSQL);
  try
    lvOqParametrsNote.DeclareAndSet('PID_ID', otInteger, pPID);
    lvOqParametrsNote.DeclareAndSet('PTYPE', otInteger, pPType);
    lvOqParametrsNote.DeclareAndSet('IS_DETAIL', otString, pIsDetail);
    lvOqParametrsNote.DeclareAndSet('LVRESULT', otString, Null);
    lvOqParametrsNote.Execute;

    Result := lvOqParametrsNote.GetVariable('LVRESULT');
  finally
    lvOqParametrsNote.Free;
  end;
end;
function TdmMedCard.CreateChckCmbBox(pObjName: String; pMedCardParamId: Integer): TcxEditRepositoryItem;
var
  lvRepItem: TcxEditRepositoryItem;
begin
  lvRepItem := erMedCards.ItemByName(pObjName);

  if lvRepItem = nil then
  begin
    lvRepItem := erMedCards.CreateItem(TcxEditRepositoryCheckComboBox);
    lvRepItem.Properties.ImmediatePost := True;
    lvRepItem.Name := pObjName;
    dmGeneral.LoadCheckComboBox(TcxEditRepositoryCheckComboBox(lvRepItem), '', '', '', -1,
      'SELECT ID, NAME FROM MC_PARAMETERS_DETAIL WHERE IS_ACTIVE = 1 AND MCP_ID = ' +
        pMedCardParamId.ToString + ' ORDER BY ORDER_NUMBER');
  end;

  Result := lvRepItem;
end;

function TdmMedCard.InsertControlFormsGeneralDisease(pComId, pType, pPId, pBpatUPN: Integer): Boolean;
const
  lcInsertFormsGeneralDisease =
  'SELECT *' + #13#10 +
  '  FROM MC_FORMS_GENERAL_DISEASE FGD' + #13#10 +
  ' WHERE FGD.DATA_ID = :DATA_ID' + #13#10 +
  '   AND FGD.TYPE_ID = :TYPE_ID' + #13#10 +
  '   AND FGD.COM_ID = :COM_ID' + #13#10 +
  '   AND FGD.UPN = :UPN';
var
  lvOqInsert: TOracleQuery;
begin
  lvOqInsert := GetNewOracleQuery(lcInsertFormsGeneralDisease);
  try
    lvOqInsert.DeclareAndSet('DATA_ID', otInteger, pPId);
    lvOqInsert.DeclareAndSet('TYPE_ID', otInteger, pType);
    lvOqInsert.DeclareAndSet('COM_ID', otInteger, pComId);
    lvOqInsert.DeclareAndSet('UPN', otInteger, pBPatUPN);

    lvOqInsert.Execute;

    if (lvOqInsert.RowsProcessed > 0) then
      Result := True;
  finally
    FreeAndNil(lvOqInsert);
  end;
end;

function TdmMedCard.InsertControlGeneralDisease(pBPatTransId, pType, pPId, pBpatUPN: Integer): Boolean;
const
  lcInsertFormsGeneralDisease =
  'SELECT *' + #13#10 +
  '  FROM MC_GENERAL_DISEASES GD' + #13#10 +
  ' WHERE GD.UPN = :UPN' + #13#10 +
  '   AND GD.PT_ID = :PT_ID' + #13#10 +
  '   AND GD.TYPE_ID = :TYPE_ID' + #13#10 +
  '   AND GD.P_ID = :P_ID';

var
  lvOqInsert: TOracleQuery;
begin
  lvOqInsert := GetNewOracleQuery(lcInsertFormsGeneralDisease);
  try
    lvOqInsert.DeclareAndSet('P_ID', otInteger, pPId);
    lvOqInsert.DeclareAndSet('TYPE_ID', otInteger, pType);
    lvOqInsert.DeclareAndSet('PT_ID', otInteger, pBPatTransId);
    lvOqInsert.DeclareAndSet('UPN', otInteger, pBPatUPN);

    lvOqInsert.Execute;

    if (lvOqInsert.RowsProcessed > 0) then
      Result := True;
  finally
    FreeAndNil(lvOqInsert);
  end;
end;

// MC_FORMS_GENERAL_DISEASE Tablosuna bilgileri insert etmek için kullanýlýr.
procedure TdmMedCard.InsertFormsGeneralDisease(pComId, pType, pPId, pBPatUPN, pBPatTransId: Integer; pByzBtnName, pDiagnosDescription: Variant;
  pFirstDiagnosDate: Variant);
const
  lcInsertFormsGeneralDisease =
    'BEGIN' + #13#10 +
    ' INSERT INTO MC_FORMS_GENERAL_DISEASE' + #13#10 +
    '        (ID, COM_ID, PROCESS_TIME, DATA_ID, TYPE_ID, EXPLANATION, DIAGNOSIS_DATE, CUSER, CTIME, UPN)' + #13#10 +
    '  VALUES' + #13#10 +
    '        (MC_FORMS_GENERAL_DIS_ID_SEQ.NEXTVAL, :COM_ID, :PROCESS_TIME, :DATA_ID, :TYPE_ID,' + #13#10 +
    '         :EXPLANATION, :DIAGNOSIS_DATE, :CUSER, :CTIME, :UPN);' + #13#10 +
    'COMMIT;' + #13#10 +
    'END;';
var
  lvOqInsert: TOracleQuery;
begin
  lvOqInsert := GetNewOracleQuery(lcInsertFormsGeneralDisease);
  try
    lvOqInsert.DeclareAndSet('COM_ID', otInteger, pComId);
    lvOqInsert.DeclareAndSet('PROCESS_TIME', otDate, Now);
    lvOqInsert.DeclareAndSet('DATA_ID', otInteger, pPId);
    lvOqInsert.DeclareAndSet('TYPE_ID', otInteger, pType);
    lvOqInsert.DeclareAndSet('CUSER', otString, UserName);
    lvOqInsert.DeclareAndSet('CTIME', otDate, RealNow);
    lvOqInsert.DeclareAndSet('UPN', otInteger, pBPatUPN);


    if pDiagnosDescription <> Null then
       lvOqInsert.DeclareAndSet('EXPLANATION', otString, pDiagnosDescription)
    else
       lvOqInsert.DeclareAndSet('EXPLANATION', otString, Null);

    if pFirstDiagnosDate <> Null then
      lvOqInsert.DeclareAndSet('DIAGNOSIS_DATE', otDate, pFirstDiagnosDate)
    else
      lvOqInsert.DeclareAndSet('DIAGNOSIS_DATE', otDate, Null);

    lvOqInsert.Execute;

    if (lvOqInsert.RowsProcessed > 0) then
    begin
      if Not InsertControlGeneralDisease(pBPatTransId, ptype, pPId, pBPatUPN) then
      begin
        InsertPatientGeneralDisease(ptype, pPId, pBPatUPN, pBPatTransId, pByzBtnName, pDiagnosDescription,
          pFirstDiagnosDate);
      end
    end
  finally
    FreeAndNil(lvOqInsert);
  end;
end;

//  MC_GENERAL_DISEASE Tablosuna bilgileri insert etmek için kullanýlýr.
procedure TdmMedCard.InsertPatientGeneralDisease(pType, pPId,  pBPatUPN, pBPatTransId: Integer; pByzBtnName, pDiagnosDescription: Variant;
  pFirstDiagnosDate: Variant);
const
  lcInsert =
    'BEGIN' + #13#10 +
    ' INSERT INTO MC_GENERAL_DISEASES' + #13#10 +
    '        (ID, UPN, NOTE, CUSER, CTIME, FIRST_DIAG_DATE, PT_ID, TYPE_ID, P_ID, PDATE, AUTO_INSERT)' + #13#10 +
    '  VALUES' + #13#10 +
    '        (MC_GEN_DIS_SEQ.NEXTVAL, :UPN, :NOTE, :CUSER, :CTIME, :FIRST_DIAG_DATE, :PT_ID, :TYPE_ID, :P_ID, :PDATE, 2);' + #13#10 +
    '' + #13#10 +
    'COMMIT;' + #13#10 +
    'END;';
var
  lvOqInsert: TOracleQuery;
begin
  lvOqInsert := GetNewOracleQuery(lcInsert);
  try
    lvOqInsert.DeclareAndSet('TYPE_ID', otInteger, pType);
    lvOqInsert.DeclareAndSet('P_ID', otInteger, pPId);
    lvOqInsert.DeclareAndSet('UPN', otInteger, pBPatUPN);
    lvOqInsert.DeclareAndSet('NOTE', otString, pDiagnosDescription);
    lvOqInsert.DeclareAndSet('CUSER', otString, UserName);
    lvOqInsert.DeclareAndSet('CTIME', otDate, RealNow);
    lvOqInsert.DeclareAndSet('PT_ID', otInteger, pBPatTransId);

    if (pByzBtnName = 'bedPrevIllness') or (pByzBtnName = 'bedPrevOperations') then
      lvOqInsert.DeclareAndSet('FIRST_DIAG_DATE', otDate, pFirstDiagnosDate)
    else
      lvOqInsert.DeclareAndSet('FIRST_DIAG_DATE', otDate, Null);
    if (pByzBtnName = 'bedGenDiseases') then
      lvOqInsert.DeclareAndSet('PDATE', otDate, pFirstDiagnosDate)
    else
      lvOqInsert.DeclareAndSet('PDATE', otDate, Null);

    lvOqInsert.Execute;
  finally
    FreeAndNil(lvOqInsert);
  end;
end;

//function TDmGeneral.GetNurseUserId(pSerId: Integer; pAsk_Cont, pSer_Name: string): string;
//const
//  lcSQL = 'SELECT DL.ID, DL.NAME, DL.SURNAME FROM DOCTOR_LIST DL '+
//          'WHERE DL.P_ID = 3 AND DL.USER_ID = :USER_ID';
//var
//  lvOqGetContVal: TOracleQuery;
//begin
//  Result := '';
//  lvOqGetContVal := GetNewOracleQuery(lcSQL);
//  try
//    lvOqGetContVal.DeclareAndSet('SER_ID', otInteger, pSerId);
//     lvOqGetContVal.Execute;
//
//  finally
//    lvOqGetContVal.Free;
//  end;
//end;

procedure TdmMedCard.CreateMedFormMenus(pdxNavBar: TDxNavBar; pSubItem: TdxBarSubItem);
var
  lvNavBarGr: TdxNavBarGroup;
  lvNavBarItem: TdxNavBarItem;
  lvBarButton: TDxBarButton;
  lvOraNurseMainMenus, lvOraNurseMenuItems: TOracleDataset;
begin
  lvNavBarGr := nil;
//  lvNavBarItem := nil;
  lvOraNurseMainMenus := GetNewOracleDataSet();
  lvOraNurseMainMenus.SQL.Text :=
    'SELECT NMM.*' + #13#10 +
    ' FROM NURSE_MAIN_MENUS NMM' + #13#10 +
    'WHERE NMM.IS_ACTIVE = 1' + #13#10 +
    'ORDER BY NMM.ORDER_NUMBER, NMM.ID';

  lvOraNurseMenuItems := GetNewOracleDataSet();
  lvOraNurseMenuItems.SQL.Text :=
    'SELECT NMO.ID,NVL(NMO.CAPTION,O.NAME) AS NAME, --NMM.NAME AS GROUP_NAME,' + #13#10 +
    '       NMO.OR_ID, O.LINKED_OBJECT_ID' + #13#10 +
    '  FROM NURSE_MENU_OBJECTS NMO' + #13#10 +
    '  /*JOIN NURSE_MAIN_MENUS NMM' + #13#10 +
    '  ON NMM.ID = NMO.NMM_ID' + #13#10 +
    '     AND NMM.IS_ACTIVE = 1  */' + #13#10 +
    '  JOIN OBJECT_RECORDS O' + #13#10 +
    '   ON O.ID = NMO.OR_ID' + #13#10 +
    '  AND USER_HAS_OTHER_PRIV(O.ID, :UOPM_ID, :USER_ID) > 0 ' + #13#10 +
    '  AND O.IS_ACTIVE = ''1''' + #13#10 +
    ' WHERE NMO.IS_ACTIVE = 1' + #13#10 +
    '    AND NMO.NMM_ID = :NMM_ID' + #13#10 +
    ' ORDER BY --NMM.ORDER_NUMBER,' + #13#10 +
    '    NMO.ORDER_NUMBER, NVL(NMO.CAPTION,O.NAME)';
  lvOraNurseMenuItems.DeclareVariable('NMM_ID', otInteger);
  lvOraNurseMenuItems.DeclareVariable('UOPM_ID', otInteger);
  lvOraNurseMenuItems.DeclareVariable('USER_ID', otInteger);

  try
    lvOraNurseMainMenus.Close;
    lvOraNurseMainMenus.Open;
    lvOraNurseMainMenus.First;
    while not lvOraNurseMainMenus.Eof do
    begin
      lvOraNurseMenuItems.Close;
      lvOraNurseMenuItems.SetVariable('NMM_ID', lvOraNurseMainMenus.FieldByName('ID').AsInteger);
      lvOraNurseMenuItems.SetVariable('UOPM_ID', 1);
      lvOraNurseMenuItems.SetVariable('USER_ID', UserId);
      lvOraNurseMenuItems.Open;
      lvOraNurseMenuItems.First;

      while not lvOraNurseMenuItems.Eof do
      begin
        if pdxNavBar <> nil then
        begin
          if lvOraNurseMenuItems.RecNo = 1 then
          begin
            lvNavBarGr := pdxNavBar.Groups.Add;
            lvNavBarGr.Caption := lvOraNurseMainMenus.FieldByName('NAME').AsString;
            lvNavBarGr.Tag := lvOraNurseMainMenus.FieldByName('ID').AsInteger
          end;
          lvNavBarItem := pdxNavBar.Items.Add;
          lvNavBarItem.Caption := lvOraNurseMenuItems.FieldByName('NAME').AsString;
          lvNavBarItem.Tag := lvOraNurseMenuItems.FieldByName('OR_ID').AsInteger;

          lvNavBarGr.InsertLink(lvNavBarItem,lvNavBarGr.LinkCount);
        end;
        if pSubItem <> nil then
        begin
          lvBarButton:= TDxBarButton.Create(pSubItem.Owner);
          lvBarButton.Name := pSubItem.Name + 'Btn' + lvOraNurseMenuItems.FieldByName('OR_ID').AsString;
          lvBarButton.Caption := lvOraNurseMenuItems.FieldByName('NAME').AsString;
          lvBarButton.Tag := lvOraNurseMenuItems.FieldByName('OR_ID').AsInteger;
          lvBarButton.OnClick := pSubItem.OnClick;

          pSubItem.ItemLinks.Add.Item := lvBarButton;
        end;
        lvOraNurseMenuItems.Next;
      end;

      lvOraNurseMainMenus.Next;
    end;
  finally
    lvOraNurseMainMenus.Free;
    lvOraNurseMenuItems.Free;
  end;
end;

{
// EPIKIRIZ YOGUN BAKIM ICERISINDE BULUNAN SKORLAMALARI PT_ID YE GORE GETIRIR
function TdmMedCard.OpenInsentiveRecordData(pPT_Id: Integer): TOracleDataSet;
const
  lcGeneralSQL= 'SELECT MICRDS.ID AS MICRDS,' + #13#10 +
                '       NVL(MICRD.IS_SNET_SEND, 0) AS IS_SNET_SEND,' + #13#10 +
                '       MICRDS.*,' + #13#10 +
                '       MICRDS.ROWID' + #13#10 +
                '  FROM MC_INS_CARE_REC_DET_SCORES MICRDS' + #13#10 +
                '  JOIN MC_INSENTIVE_CARE_REC_DETAILS MICRD' + #13#10 +
                '    ON MICRD.ID = MICRDS.MICRD_ID' + #13#10 +
                '  JOIN MC_INSENTIVE_CARE_RECORDS MICR' + #13#10 +
                '    ON MICR.ID = MICRD.MICR_ID' + #13#10 +
                '  JOIN CONNECTIONS_OF_MEDCARD COMM' + #13#10 +
                '    ON COMM.ID = MICR.COM_ID' + #13#10 +
                '  JOIN PATIENT_TRANSACTIONS PT' + #13#10 +
                '    ON PT.ID = COMM.PT_ID' + #13#10 +
                '  WHERE PT.ID IN (:PT_ID) ';
var
  lvOdsGetInsRecData: TOracleDataSet;
begin
  Result := Nil;
  lvOdsGetInsRecData := GetNewOracleDataSet(lcGeneralSQL);
  try
    lvOdsGetInsRecData.Close;
    lvOdsGetInsRecData.DeclareAndSet('PT_ID', otSubst, pPT_ID);
    lvOdsGetInsRecData.Open;

    if lvOdsGetInsRecData.RecordCount > 0 then
      Result := lvOdsGetInsRecData;
  except
    lvOdsGetInsRecData.Free;
  end;
end;
}
procedure TdmMedCard.OpenMedFormCards(pOrId:Integer; pPatOraDataset: TOracleDataset);
var
  lvOpenType: String;
begin
  if (pOrId <= 0) or pPatOraDataset.IsEmpty then
    exit;

  if (pOrId >= 2550) and (pOrId < 2570) then
    lvOpenType := 'OCI'
  else lvOpenType := 'SHW';

  // VOZTURK;26.01.2021;YASA GORE FARKLI ACILAN KARTLAR CREATE ISLEMINDEN ONCE KONTROL EDILMESI LAZIM
  // YANLIS OR ID CREATE EDILIYOR. HASTA DOSYASINDA TIBBI KARTLAR ICINDE YANLIS KART GORUNUYOR
  if (pOrId = 2556) or (pOrId = 2557) then
  begin
    if pPatOraDataset.FieldByName('AGE_AS_NUMBER').AsFloat < 17 then
      pOrId := 2557
    else
      pOrId := 2556;
  end
  else if (pOrId = 2559) or (pOrId = 2560) then
  begin
    if pPatOraDataset.FieldByName('AGE_AS_NUMBER').AsFloat > 14 then
      pOrId := 2559
    else
      pOrId := 2560;
  end;

  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, pPatOraDataset.FieldByName('UPN').AsInteger,
    pPatOraDataset.FieldByName('ID').AsInteger, pPatOraDataset.FieldByName('DR_ID').AsInteger,
     pPatOraDataset.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CONSTAINT_EVA', 'MC_CONSTAINT_EVA_ID_SEQ');

  if lvOpenType <> 'OCI' then
    exit;

  with gvPatientInfo do
  begin
    BPatName := pPatOraDataset.FieldByName('NAME').AsString;
    BPatSurName:= pPatOraDataset.FieldByName('SURNAME').AsString;
    BPatFatName:= pPatOraDataset.FieldByName('FATHER_NAME').AsString;
    BPatUPN := pPatOraDataset.FieldByName('UPN').AsInteger;
    BPatProtNo := pPatOraDataset.FieldByName('PROT_ID').AsInteger;
    BPatBirthDate := pPatOraDataset.FieldByName('BIRTH_DATE').AsDateTime;
    BPatAgeFloat := pPatOraDataset.FieldByName('AGE_AS_NUMBER').AsFloat;
    BPatAge:= pPatOraDataset.FieldByName('AGE').AsString;
    BPatGender:= pPatOraDataset.FieldByName('SEXUALITY').AsString;
    BPatTransDr:= pPatOraDataset.FieldByName('DR_NAME').AsString;
    BPatTransDept:= pPatOraDataset.FieldByName('DEPT_NAME').AsString;
    BPatTransDrId:= pPatOraDataset.FieldByName('DR_ID').AsInteger;
    BPatTransDeptId:= pPatOraDataset.FieldByName('DEPT_ID').AsInteger;
    BPatTransAss:= pPatOraDataset.FieldByName('ASS_NAME').AsString;
    BPatTransSecAss:= pPatOraDataset.FieldByName('SEC_ASS_NAME').AsString;
//    BPatIsPregnant:= pPatOraDataset.FieldByName('PREGNANT').AsString;
//    BPatWeight:= pPatOraDataset.FieldByName('PAT_WEIGHT').AsFloat;
//    BPatLength:= pPatOraDataset.FieldByName('PAT_LENGTH').AsFloat;
    BPatTransId:= pPatOraDataset.FieldByName('ID').AsInteger;
    BPatTCNo:= pPatOraDataset.FieldByName('IDENTITY_NO').AsFloat;
//    BNewBabyRecord:= pPatOraDataset.FieldByName('IS_BABY_REC').AsString='1';
//    BPatPassportNo:= pPatOraDataset.FieldByName('PASSPORT_NO').AsString;
//    BICDCodes:= pPatOraDataset.FieldByName('PAT_ICDS').AsString;
    BObjRecId := pOrId;
    BbyzObjectId := pOrId;
    BPatOraDataset := pPatOraDataset;//odsPatProcRefresh;
  end;

  if (pOrId = 2550) or (pOrId = 2551) then
  begin
    frmMCBasiYBraden  := TfrmMCBasiYBraden.Create(nil,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      if pPatOraDataset.FieldByName('AGE_AS_NUMBER').AsFloat < 8 then
        frmMCBasiYBraden.ArrangeBradenForm('BQ', nil)
      else frmMCBasiYBraden.ArrangeBradenForm('B', nil);
      frmMCBasiYBraden.ShowModal;
    finally
      frmMCBasiYBraden.Free;
    end;
  end
  else if pOrId = 2552 then
  begin
    frmMCWoudnAsses  := TfrmMCWoudnAsses.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCWoudnAsses.ArrangeWoundAssForm(nil);
      frmMCWoudnAsses.ShowModal;
    finally
      frmMCWoudnAsses.Free;
    end;
  end
  else if pOrId = 2553 then
  begin
    frmMCFluidBalance  := TfrmMCFluidBalance.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCFluidBalance.ArrangeFluidBalanceForm( nil);
      frmMCFluidBalance.ShowModal;
    finally
      frmMCFluidBalance.Free;
    end;
  end
  else if pOrId = 2554 then
  begin
    frmMCNeoSkinRisk  := TfrmMCNeoSkinRisk.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCNeoSkinRisk.ArrangeNeoSkinRiskForm( nil);
      frmMCNeoSkinRisk.ShowModal;
    finally
      frmMCNeoSkinRisk.Free;
    end;
  end
  else if pOrId = 2555 then
  begin
    frmMCPainAssesmentScale  := TfrmMCPainAssesmentScale.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCPainAssesmentScale.ArrangePainAssForm(nil);
      frmMCPainAssesmentScale.ShowModal;
    finally
      frmMCPainAssesmentScale.Free;
    end;
  end
  else if (pOrId = 2556) then
  begin
    frmMCFallRiskItaki  := TfrmMCFallRiskItaki.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCFallRiskItaki.ArrangeFallRiskItakiForm(nil);
      frmMCFallRiskItaki.ShowModal;
    finally
      frmMCFallRiskItaki.Free;
    end;
  end
  else if (pOrId = 2557) then
  begin
    frmMCFallRiskHarizmi  := TfrmMCFallRiskHarizmi.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCFallRiskHarizmi.ArrangeFallRiskHarizmiForm(nil);
      frmMCFallRiskHarizmi.ShowModal;
    finally
      frmMCFallRiskHarizmi.Free;
    end;
  end
  else if pOrId = 2558 then
  begin
    frmMCCatheterMaterialTrace  := TfrmMCCatheterMaterialTrace.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCCatheterMaterialTrace.ArrangeCatheterMatTrace(nil);
      frmMCCatheterMaterialTrace.ShowModal;
    finally
      frmMCCatheterMaterialTrace.Free;
    end;
  end
  else if (pOrId = 2559) then
  begin
    frmMCAdultPatientDiagnosis  := TfrmMCAdultPatientDiagnosis.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCAdultPatientDiagnosis.ArrangeAdultPatientDiagnosisForm(nil);
      frmMCAdultPatientDiagnosis.ShowModal;
    finally
      frmMCAdultPatientDiagnosis.Free;
    end;
  end
  else if (pOrId = 2560) then
  begin
    frmMCChildPatientDiagnosis  := TfrmMCChildPatientDiagnosis.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCChildPatientDiagnosis.ArrangeChildPatientDiagnosisForm(nil, 1);
      frmMCChildPatientDiagnosis.ShowModal;
    finally
      frmMCChildPatientDiagnosis.Free;
    end;
  end
  else if (pOrId = 2565) then
  begin
    frmMCChildPatientDiagnosis  := TfrmMCChildPatientDiagnosis.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCChildPatientDiagnosis.ArrangeChildPatientDiagnosisForm(nil, 2);
      frmMCChildPatientDiagnosis.ShowModal;
    finally
      frmMCChildPatientDiagnosis.Free;
    end;
  end
  else if (pOrId = 2566) then
  begin
    frmMCChildPatientDiagnosis  := TfrmMCChildPatientDiagnosis.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCChildPatientDiagnosis.ArrangeChildPatientDiagnosisForm(nil, 3);
      frmMCChildPatientDiagnosis.ShowModal;
    finally
      frmMCChildPatientDiagnosis.Free;
    end;
  end
  else if (pOrId = 2561) then
  begin
    frmMCNutritionalRiskScore  := TfrmMCNutritionalRiskScore.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCNutritionalRiskScore.ArrangeNutritionalRiskScore(nil);
      frmMCNutritionalRiskScore.ShowModal;
    finally
      frmMCNutritionalRiskScore.Free;
    end;
  end
  else if (pOrId = 2562) then
  begin
    frmMCSofaScoreForm  := TfrmMCSofaScoreForm.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCSofaScoreForm.ArrangeMCSofaScoreForm(nil);
      frmMCSofaScoreForm.ShowModal;
    finally
      frmMCSofaScoreForm.Free;
    end;
  end
  else if (pOrId = 2563) then
  begin
    frmMCEuroScoreForm  := TfrmMCEuroScoreForm.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCEuroScoreForm.ArrangeMCEuroScoreForm(nil);
      frmMCEuroScoreForm.ShowModal;
    finally
      frmMCEuroScoreForm.Free;
    end;
  end
  else if (pOrId = 2564) then
  begin
    frmMCAdverseImpactForm  := TfrmMCAdverseImpactForm.Create(pPatOraDataset.Owner,gvPatientInfo, nil,false,ifmNone,ivmNormal);
    try
      frmMCAdverseImpactForm.ArrangeAdverseImpactForm(nil);
      frmMCAdverseImpactForm.ShowModal;
    finally
      frmMCAdverseImpactForm.Free;
    end;
  end;

end;

procedure TdmMedCard.SetByzBtnObjectEnable(pSender: TObject; pStatus: Boolean);
var
  i: Integer;
begin
  for i := 0 to TComponent(pSender).ComponentCount - 1 do
  begin
    if TComponent(pSender).Components[i].ClassType = TbyzButtonEdit then
    begin
      TbyzButtonEdit(TComponent(pSender).Components[i]).Enabled := pStatus;
    end;
  end;
end;

//BAGITMIS:16,03,2021 OLUM ORANINI ILGILI TABLOYA HESAPLAYARAK UPDATE EDER
//PDETID HESAPLANACAK OLUM ORANININ DETAY TABLOSUNUN ID SI
//PFORMTYPE FORM TIPI NUMARASI SNAP-PEII = 1, APACHEII = 2 , PRISM = 3
procedure TdmMedCard.TableUpdateMortalityScores(pFormType, pDetID: Integer);
const
  lvSql = 'BEGIN' + #13#10 + ' UPDATE_MORTALITY_SCORE(:PFRM_TYPE, :PDET_ID);' +
            #13#10 + ' END;';
var
  lvOqGetMortality: TOracleQuery;
begin
  lvOqGetMortality := GetNewOracleQuery(lvSql);
  try
    lvOqGetMortality.DeclareAndSet('PFRM_TYPE', otInteger, pFormType);
    lvOqGetMortality.DeclareAndSet('PDET_ID', otInteger, pDetID);
    lvOqGetMortality.Execute;
  finally
    lvOqGetMortality.Free;
  end;
end;

end.
