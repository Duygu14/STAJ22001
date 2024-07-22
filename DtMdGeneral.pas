unit DtMdGeneral;

interface

uses
  System.SysUtils, System.Classes, cxEditRepositoryItems, cxDBEditRepository,
  cxEdit, cxClasses, Data.DB, OracleData, Oracle, CommonConf, cxImageComboBox,
  dxSkinsCore, cxLookAndFeels, dxSkinsForm, cxStyles, system.Variants,
  System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics,
  Math, cxCheckBox, cxCheckComboBox, cxExtEditRepositoryItems, byzTheBezier,
   cxGridDBBandedTableView, cxGridDBTableView, byzListForm,
  cxTL, cxDBTL, cxCustomData, byzButtonEdit, Vcl.Forms, msgConst, dxSkinsDefaultPainters,
  dxCore;

type
  TdmGeneral = class(TDataModule)
    strepPredefined: TcxStyleRepository;
    cxStyle1: TcxStyle;
    StylHotTruck: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    StyRedWhite: TcxStyle;
    cxStyle4: TcxStyle;
    styGridBandHeader: TcxStyle;
    eriStandards: TcxEditRepository;
    eriStandardsCheckBoxItem: TcxEditRepositoryCheckBoxItem;
    eriStandardsBlobEditMemoItem: TcxEditRepositoryBlobItem;
    eriStandardsCurrencyItem2Digit: TcxEditRepositoryCurrencyItem;
    eriStandardsMaskItemTelephone: TcxEditRepositoryMaskItem;
    eriStandardsCheckBoxItem01: TcxEditRepositoryCheckBoxItem;
    eriStandardsTimeItemHM: TcxEditRepositoryTimeItem;
    eriStandardsDateItemDATE: TcxEditRepositoryDateItem;
    eriStandardsButtonItembyz: TcxEditRepositoryButtonItem;
    eriStandardsSpinItemQuantity: TcxEditRepositorySpinItem;
    eriStandardsCurrencyItem4Digit: TcxEditRepositoryCurrencyItem;
    eriStandardsCheckBoxItem01Right: TcxEditRepositoryCheckBoxItem;
    eriStandardsDateItemDateTime: TcxEditRepositoryDateItem;
    eriStandardsMaskItemEmail: TcxEditRepositoryMaskItem;
    oqAddMedCard: TOracleQuery;
    cxStyle5: TcxStyle;
    ilPatMonitoring: TcxImageList;
    imgListPainScale: TcxImageList;
    cxEditRepository: TcxEditRepository;
    eriCurrency: TcxEditRepositoryCurrencyItem;
    eriLookupComboMainAssociations: TcxEditRepositoryLookupComboBoxItem;
    eriLookupComboCities: TcxEditRepositoryLookupComboBoxItem;
    eriLookupComboOrganizations: TcxEditRepositoryLookupComboBoxItem;
    eriLookupComboAssociationTypes: TcxEditRepositoryLookupComboBoxItem;
    eriLookupComboAssociationContractDef: TcxEditRepositoryLookupComboBoxItem;
    eriAppTimeScale: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxRoundTypes: TcxEditRepositoryImageComboBoxItem;
    eriStockMaterialCodeTypes: TcxEditRepositoryImageComboBoxItem;
    eriDrugCodeTypes: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxUsageStatus: TcxEditRepositoryImageComboBoxItem;
    eriStockDrugCodeTypes: TcxEditRepositoryImageComboBoxItem;
    eriOperationSides: TcxEditRepositoryImageComboBoxItem;
    eriCBGender: TcxEditRepositoryComboBoxItem;
    eriGSSSendTypes: TcxEditRepositoryImageComboBoxItem;
    eriCBFindTypes: TcxEditRepositoryComboBoxItem;
    eriAppTimeScale2: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxIsInspection: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxDrOrderType: TcxEditRepositoryImageComboBoxItem;
    eriComboBoxAntibioticResults: TcxEditRepositoryComboBoxItem;
    eriImageComboBoxInpatientCureType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxOperationStates: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxServiceIcdConType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxDeptRoles: TcxEditRepositoryImageComboBoxItem;
    eriPatientDescFigures: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxSRDetUsePurpose: TcxEditRepositoryImageComboBoxItem;
    eriPermissionType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxPatientSpecialCodes: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxSRDetUsageStatus: TcxEditRepositoryImageComboBoxItem;
    eriICBGender: TcxEditRepositoryImageComboBoxItem;
    eriImageComboStovkWarningQueryType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxStockEquilvalent: TcxEditRepositoryImageComboBoxItem;
    eriICBItsReasenForDeactivation: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxWarehouseShelves: TcxEditRepositoryImageComboBoxItem;
    eriICBITSDrugStateCodes: TcxEditRepositoryImageComboBoxItem;
    eriICBStockMovementType: TcxEditRepositoryImageComboBoxItem;
    eriLabTestRefGender: TcxEditRepositoryImageComboBoxItem;
    eriLabSearchTypes: TcxEditRepositoryImageComboBoxItem;
    eriStockAllRecord: TcxEditRepositoryImageComboBoxItem;
    eriStockShowParentStock: TcxEditRepositoryImageComboBoxItem;
    eriStockOnlyAvailableMaterial: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxESignFirms: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxSREhuStates: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxOfWhom: TcxEditRepositoryImageComboBoxItem;
    eriGSSBedType: TcxEditRepositoryImageComboBoxItem;
    eriGSSBedRegistration: TcxEditRepositoryImageComboBoxItem;
    eriGSSBedLevel: TcxEditRepositoryImageComboBoxItem;
    eriLabTestResultTypes: TcxEditRepositoryImageComboBoxItem;
    eriDrugEquivalentType: TcxEditRepositoryImageComboBoxItem;
    eriDrugEquivalentGroup: TcxEditRepositoryImageComboBoxItem;
    eriIsCostCenter: TcxEditRepositoryImageComboBoxItem;
    eriImageComboNotificationType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxPriceType: TcxEditRepositoryImageComboBoxItem;
    eriHealthControlStates: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxMailType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxDeptRefdrFileDr: TcxEditRepositoryComboBoxItem;
    eriSecOtherChange: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxAppType: TcxEditRepositoryImageComboBoxItem;
    eriPatientDescFiguresOnlyRiskOfFalling: TcxEditRepositoryImageComboBoxItem;
    eriEInvoiceSMSMail: TcxEditRepositoryImageComboBoxItem;
    eriInvAssTypes: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxDateType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxLabSampleTraceType: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxLabSampleGeneralStatus: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxLabCenter: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxLabReportTypes: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxAccessedObjectLogsTypes: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxUrgentLevel: TcxEditRepositoryImageComboBoxItem;
    eriImageComboBoxLabSampleTakenBodyAreaSampled: TcxEditRepositoryImageComboBoxItem;
    eriICBWoudnPains: TcxEditRepositoryImageComboBoxItem;
    dxSkinController1: TdxSkinController;
    odsButEdit: TOracleDataSet;
    cxStyle6: TcxStyle;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lgvbyzListForm: TfrmbyzListForm;
    // byzlist
    function GetGridSelectedRowValues(AGrdTableView: TcxGridDBBandedTableView; AGridColumn: TcxGridDBBandedColumn;
      AColumnFieldName: string = ''; ADetGrdTableView: TcxGridDBBandedTableView = nil): string; overload;
    function GetGridSelectedRowValues(AGrdTableView: TcxGridDBTableView; AGridColumn: TcxGridDBColumn;
      AColumnFieldName: string = ''): string; overload;
    function GetTreeListSelectedRowValues(ATreeList: TcxDBTreeList; ATreeListColumn: TcxDBTreeListColumn;
      pWithChild: Boolean = false): string;
    function GetbyzListFormForSelect(AFormId: Integer; AFieldName: string = 'ID'; AParamNames: string = '';
      AParamValues: string = ''; AShowForm: Boolean = false; pSendBackForm: Boolean = false;
      pAlwOpenDataSet: Boolean = false): Variant; overload;
    function GetbyzListFormForSelect(AFormId: Integer; var AFieldValue: Variant; AFieldName: string = '';
      AParamNames: string = ''; AParamValues: string = ''; pSendBackForm: Boolean = false;
      pAlwOpenDataSet: Boolean = false; AShowForm: Boolean = false): Variant; overload;
    function GetbyzListFormForSelect(var pbyzBtnEd: TbyzButtonEdit; pSendBackForm: Boolean = false;
      pAlwOpenDataSet: Boolean = false): Variant; overload;
    function GetAndSetFrombyzListForm(pRecOraDtSet: TOracleDataSet; ARecFieldName: string; ATarFormId: Integer;
      ATarParamName: string = ''; ATarParamValue: string = ''): Boolean;
    function GetbyzListFormForModify(AFormId: Integer; AParamNames: string = ''; AParamValues: string = '';
      byzBtnEd: TObject = nil; pAlwOpenDataSet: Boolean = false): Variant;

    procedure LoadImageComboBox(pImageCmbBox: TObject; pTableName, pWhereSQL: string;
      pFNameDesc: string = 'NAME'; pSql: string = '');
    procedure LoadCheckComboBox(pCheckComboBox: TObject; pTableName, pWhereSQL: String; pFields: String = 'NAME';
      pDefValue: Integer = 0; pSql: string = '');
    procedure LoadRadioGroup(pRadioGroup: TObject; pTableName, pWhereSQL: string;
      pFNameDesc: string = 'NAME'; pSql: string = '');
    function CreateNewMedCard(pNewOne, PatUPN, PatID, PatDrId,
      PatDeptId, MCID: Integer; pTableName, pSeqName: String) :Integer;
  end;

procedure FindbyzBtnTextValue(pForm: TForm; pDataset: Tdataset; byzBtnEd: TObject = nil; byzBtnValue: Integer = 0);
function FindbyzBtnShowingText(pbyzBtnEd: TbyzButtonEdit; pOdsDataSet: TOracleDataSet = nil): string;

var
  dmGeneral: TdmGeneral;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function FindbyzBtnShowingText(pbyzBtnEd: TbyzButtonEdit; pOdsDataSet: TOracleDataSet = nil): string;
var
  strFieldsName, ConnFields, FieldVals, CFieldName: string;
  p: Smallint;
begin
  ConnFields := '';
  FieldVals := '';

  // gosterilecek alan bilgilerinin formati hazirlanir
  strFieldsName := Trim(pbyzBtnEd.byzShowingFieldName);
  Result := strFieldsName;
  if strFieldsName = '' then
    exit;

  repeat
    p := Pos('  ', strFieldsName);
    if p > 0 then
    begin
      CFieldName := Trim(Copy(strFieldsName, 1, p));
      Delete(strFieldsName, 1, p);
      strFieldsName := Trim(strFieldsName);
    end
    else
      CFieldName := strFieldsName;

    if pOdsDataSet <> nil then
      FieldVals := FieldVals + ' ' + pOdsDataSet.FieldByName(CFieldName).AsString
    else
    begin
      if Length(ConnFields) > 0 then
        ConnFields := ConnFields + ' ||'' ''|| ';
      ConnFields := ConnFields + CFieldName;
    end;
  until p = 0;

  if FieldVals <> '' then
    Result := Trim(FieldVals)
  else
    Result := ', ' + ConnFields;
end;

procedure FindbyzBtnTextValue(pForm: TForm; pDataset: Tdataset; byzBtnEd: TObject = nil; byzBtnValue: Integer = 0);
var
  hcBtnEd: TbyzButtonEdit;
  i: Smallint;
  FieldVal, SelectText: string;

  procedure ChechAndSetValues();
  begin
    if hcBtnEd.byzOracleSession = nil then
      hcBtnEd.byzOracleSession := gvGenOracleSession;
    try
      if (byzBtnEd <> nil) and (byzBtnValue > 0) then
        FieldVal := IntToStr(byzBtnValue)
      else if (pDataset <> nil) and ((pDataset = hcBtnEd.byzTargetDataSet) or (hcBtnEd.byzTargetDataSet = nil)) then
        FieldVal := pDataset.FindField(hcBtnEd.byzTargetFieldName).AsString
      else if (pDataset <> nil) and (pDataset <> hcBtnEd.byzTargetDataSet) and (hcBtnEd.byzTargetDataSet.Active) then
        FieldVal := hcBtnEd.byzTargetDataSet.FindField(hcBtnEd.byzTargetFieldName).AsString
      else
        exit;
    except
      FieldVal := '';
    end;

    if ((FieldVal <> '') and (FieldVal <> '0')) and (hcBtnEd.byzSourceTableName <> '') and (hcBtnEd.byzShowingFieldName <> '') then
    begin
      with dmGeneral.odsButEdit do
      begin
        try
          try
            Close;
            SelectText := hcBtnEd.byzSourceFieldName + FindbyzBtnShowingText(hcBtnEd);
            if hcBtnEd.byzSourceSecondFieldName <> '' then
              SelectText := SelectText + ',' + hcBtnEd.byzSourceSecondFieldName;
            SQL.Text := 'SELECT ' + SelectText + #13 + 'FROM ' + hcBtnEd.byzSourceTableName + #13 + 'WHERE ' +
              hcBtnEd.byzSourceFieldName + '=' + FieldVal;

            Open;

            if not(Eof and Bof) then
            begin
              if hcBtnEd.byzSourceSecondFieldName <> '' then
                hcBtnEd.byzSourceSecondFieldValue := Fields[2].AsVariant;

              hcBtnEd.Text := Fields[1].AsString;
              hcBtnEd.byzSourceIDValue := Fields[0].AsVariant;
              if hcBtnEd.byzMultiSelect then
              begin
                hcBtnEd.byzSourceIDValues.Clear;
                hcBtnEd.byzSourceIDValues.Add(Fields[0].AsVariant);
              end;
              // VOZTURK;15.08.2020;byzSourceIDValue ONCE ATANDIGINDA 0 OLMADIGI ICIN NESNENIN EVENTI VARSA HATA VERIYORDU.
              // YUKARI TASINDI. EVENTDA if bedATCList.byzsourceidvalue > 0 then KONTROLU KOYULDU
              // hcBtnEd.Text := Fields[1].AsString;

            end;
          except
            MessageCustom(hcBtnEd.Name + msgDtMdGeneral084, 5);
          end;
        finally
          Close;
        end;
      end;
    end
    else
    begin
      hcBtnEd.byzSourceIDValue := 0;
      hcBtnEd.byzSourceIDValues.Clear;
      hcBtnEd.Text := '';
    end;

  end;

begin
  with pForm do
  begin
    if byzBtnEd <> nil then
    begin
      hcBtnEd := TbyzButtonEdit(byzBtnEd);
      ChechAndSetValues;
    end
    else
    begin
      for i := 0 to ComponentCount - 1 do
      begin
        if (Components[i] is TbyzButtonEdit) and (TbyzButtonEdit(Components[i]).byzTargetFieldName <> '') then
        begin
          hcBtnEd := TbyzButtonEdit(Components[i]);
          ChechAndSetValues;
        end;
      end; // for
    end; // else if
  end;
end;

procedure TdmGeneral.DataModuleCreate(Sender: TObject);
begin
  dxSkinController1.UseSkins := TRUE;
end;

procedure TDmGeneral.LoadImageComboBox(pImageCmbBox: TObject; pTableName, pWhereSQL: string;
  pFNameDesc: string = 'NAME'; pSql: string = '');
var
  lvOdsData: TOracleDataSet;
  lvSql: string;
begin

  if pSql <> '' then
    lvSql := pSql
  else if pWhereSQL <> '' then
    lvSql := 'SELECT ID, ' + pFNameDesc + ' FROM ' + pTableName + ' WHERE ' + pWhereSQL
  else
    lvSql := 'SELECT ID, ' + pFNameDesc + ' FROM ' + pTableName;

  lvOdsData := GetNewOracleDataSet(lvSql);
  try
    lvOdsData.Open;

    while not lvOdsData.Eof do
    begin
      with TcxImageComboBoxProperties(pImageCmbBox).Items.Add do
      begin
        Description := lvOdsData.FieldValues[pFNameDesc];
        Value := lvOdsData.FieldValues['ID'];
        if lvOdsData.FindField('VALUE') <> nil then
          Tag :=  lvOdsData.FieldByName('VALUE').AsInteger;
      end;
      lvOdsData.Next;
    end;

  finally
    FreeAndNil(lvOdsData);
  end;

end;

procedure TDmGeneral.LoadCheckComboBox(pCheckComboBox: TObject; pTableName, pWhereSQL, pFields: String;
  pDefValue: Integer; pSql: string);
var
  lvOraQuery: TOracleQuery;
  lvEditValue: Extended;
  i: Single;
begin
  if pCheckComboBox.ClassType = TcxCheckComboBox then
  begin
    if TcxCheckComboBox(pCheckComboBox).Properties.Items.Count > 0 then
      Exit;
  end
  else if pCheckComboBox.ClassType = TcxEditRepositoryCheckComboBox then
  begin
    if TcxEditRepositoryCheckComboBox(pCheckComboBox).Properties.Items.Count > 0 then
      Exit;
  end;

  lvEditValue := 0;
  lvOraQuery := GetNewOracleQuery();
  try
    lvOraQuery.Scrollable := true;
    if pSql <> '' then
      lvOraQuery.SQL.Text := pSql
    else
    begin
      lvOraQuery.SQL.Text := 'SELECT ID, ' + pFields + ' FROM ' + pTableName;
      if pWhereSQL <> '' then
        lvOraQuery.SQL.Text := lvOraQuery.SQL.Text + ' WHERE ' + pWhereSQL;
      lvOraQuery.SQL.Text := lvOraQuery.SQL.Text + ' ORDER BY 2 '; // ada gore sirala
    end;
    lvOraQuery.Execute;
    i := 0;
    lvOraQuery.First;
    while not lvOraQuery.Eof do
    begin
      if pCheckComboBox.ClassType = TcxCheckComboBox then
      begin
        with TcxCheckComboBox(pCheckComboBox).Properties.Items.Add do
        begin
          Tag := lvOraQuery.FieldAsInteger(0);
          Description := lvOraQuery.FieldAsString(1);

          if pDefValue = lvOraQuery.FieldAsInteger(0) then
            lvEditValue := Power(2, i);
        end;
        lvOraQuery.Next;
        i := i + 1;
      end
      else if pCheckComboBox.ClassType = TcxEditRepositoryCheckComboBox then
      begin
        with TcxEditRepositoryCheckComboBox(pCheckComboBox).Properties.Items.Add do
        begin
          Tag := lvOraQuery.FieldAsInteger(0);
          Description := lvOraQuery.FieldAsString(1);

          if pDefValue = lvOraQuery.FieldAsInteger(0) then
            lvEditValue := Power(2, i);
        end;
        lvOraQuery.Next;
        i := i + 1;
      end;

    end;

    if lvEditValue > 0 then
    begin
      if pCheckComboBox.ClassType = TcxCheckComboBox then
        TcxCheckComboBox(pCheckComboBox).EditValue := lvEditValue;
    end;
  finally
    lvOraQuery.Free;
  end;
end;

procedure TdmGeneral.LoadRadioGroup(pRadioGroup: TObject; pTableName, pWhereSQL, pFNameDesc, pSql: string);
var
  lvOdsData: TOracleDataSet;
  lvSql: string;
begin
  if pSql <> '' then
    lvSql := pSql
  else if pWhereSQL <> '' then
    lvSql := 'SELECT ID, ' + pFNameDesc + ' FROM ' + pTableName + ' WHERE ' + pWhereSQL
  else
    lvSql := 'SELECT ID, ' + pFNameDesc + ' FROM ' + pTableName;

  lvOdsData := GetNewOracleDataSet(lvSql);
  try
    lvOdsData.Open;

    lvOdsData.First;
    while not lvOdsData.Eof do
    begin
      with TcxEditRepositoryRadioGroupItem(pRadioGroup).Properties.Items.Add do
      begin
        Caption := lvOdsData.FieldValues[pFNameDesc];
        Value := lvOdsData.FieldValues['ID'];
        if lvOdsData.FindField('VALUE') <> nil then
          Tag :=  lvOdsData.FieldByName('VALUE').AsInteger;
      end;
      lvOdsData.Next;
    end;
  finally
    FreeAndNil(lvOdsData);
  end;
end;

function TDmGeneral.CreateNewMedCard(pNewOne, PatUPN, PatID, PatDrId,
  PatDeptId, MCID: Integer; pTableName, pSeqName: String) :Integer;
begin
  with dmGeneral.oqAddMedCard do
  begin
   { if (MedCardId = cGSSmcOutOFWork) and (dmMain.OraSession.LogonUsername = 'BATF') then
      ComId := dmGeneral.GetSeqValue('MC_CONNECTION_ID_SEQ_2')
    else }
   // ComId := dmGeneral.GetSeqValue('MC_CONNECTION_ID_SEQ');
    SetVariable('NEW_ONE', pNewOne);
    SetVariable('UPN', PatUPN);
    SetVariable('OR_ID', MCID);
    SetVariable('PT_ID', PatID);
    SetVariable('DR_ID', PatDrId);
    SetVariable('DEPT_ID', PatDeptId);
    SetVariable('CUSER', UserName);
    SetVariable('CTIME', Now);
    SetVariable('PROCESS_TIME', Now);
    SetVariable('DNT_ID', Null);
//    if DonorTransID > 0 then
//      SetVariable('DNT_ID', DonorTransID);          , :
//    SetVariable('IS_DIAG_CARD', pIsDiagCard);

    SetVariable('TABLE_NAME', pTableName);
    SetVariable('SEQ_NAME', pSeqName);

    Execute;
    Session.Commit;
    result := GetVariable('ID');
  end;
end;

function TDmGeneral.GetGridSelectedRowValues(AGrdTableView: TcxGridDBBandedTableView;
  AGridColumn: TcxGridDBBandedColumn; AColumnFieldName: string = '';
  ADetGrdTableView: TcxGridDBBandedTableView = nil): string;
var
  i: Integer;
  ARowIndex: Integer;
  ARowInfo: TcxRowInfo;
  AStrList: TStringList;
  BGridColumn: TcxGridDBBandedColumn;
  ADetDataController: TcxCustomDataController;
  FocusedRecInd: Integer;
  lvVal : Variant;
begin
  AStrList := nil;
  BGridColumn := AGridColumn;

  if (AGridColumn = nil) and (AColumnFieldName <> '') then
    BGridColumn := AGrdTableView.GetColumnByFieldName(AColumnFieldName);

  if ADetGrdTableView <> nil then
  begin
    FocusedRecInd := AGrdTableView.DataController.FocusedRecordIndex;
    ADetDataController := AGrdTableView.DataController.GetDetailDataController(FocusedRecInd, 0);
  end
  else
    ADetDataController := AGrdTableView.DataController;

  with ADetDataController do
  begin
    try
      Result := '';
      lvVal := null;
      AStrList := TStringList.Create;
      for I := 0 to GetSelectedCount - 1 do
      begin
        ARowIndex := GetSelectedRowIndex(I);
        ARowInfo := GetRowInfo(ARowIndex);
        // kaydin grup icinde olup olmadigi kontrol edilir
        if ARowInfo.Level < Groups.GroupingItemCount then
          Continue
        else
        begin
          lvVal := Values[ARowInfo.RecordIndex, BGridColumn.Index];
          if lvVal <> null then
            AStrList.Add(lvVal);
        end;

      end; // for
    finally
      Result := AStrList.CommaText;
      AStrList.Free;
    end;
  end;
end;

function TDmGeneral.GetGridSelectedRowValues(AGrdTableView: TcxGridDBTableView; AGridColumn: TcxGridDBColumn;
  AColumnFieldName: string = ''): string;
var
  i: Integer;
  ARowIndex: Integer;
  ARowInfo: TcxRowInfo;
  AStrList: TStringList;
  BGridColumn: TcxGridDBColumn;
begin
  AStrList := nil;
  BGridColumn := AGridColumn;
  if (AGridColumn = nil) and (AColumnFieldName <> '') then
    BGridColumn := AGrdTableView.GetColumnByFieldName(AColumnFieldName);

  with AGrdTableView.DataController do
  begin
    try
      Result := '';
      AStrList := TStringList.Create;

      for I := 0 to GetSelectedCount - 1 do
      begin
        ARowIndex := GetSelectedRowIndex(I);
        ARowInfo := GetRowInfo(ARowIndex);
        // Test whether a row is a grouping row
        if (ARowInfo.Level < Groups.GroupingItemCount) or
           (Values[ARowInfo.RecordIndex, BGridColumn.Index] = null) then
          Continue
        else
          AStrList.Add(Values[ARowInfo.RecordIndex, BGridColumn.Index]);

      end; // for
    finally
      Result := AStrList.CommaText;
      AStrList.Free;
    end;
  end;
end;

function TDmGeneral.GetTreeListSelectedRowValues(ATreeList: TcxDBTreeList; ATreeListColumn: TcxDBTreeListColumn;
  pWithChild: Boolean = false): string;
var
  i: Integer;
  AStrList: TStringList;
  lvChildNode: TcxTreeListNode;
begin
  AStrList := nil;

  try
    Result := '';
    AStrList := TStringList.Create;
    for I := 0 to ATreeList.SelectionCount - 1 do
    begin
      if pWithChild and (ATreeList.Selections[i].HasChildren) then
      begin
        lvChildNode := ATreeList.Selections[i].getFirstChild;

        while lvChildNode <> nil do
        begin
          if not lvChildNode.Selected then
            if lvChildNode.Values[ATreeListColumn.ItemIndex] <> null then
              AStrList.Add(lvChildNode.Values[ATreeListColumn.ItemIndex]);

          lvChildNode := ATreeList.Selections[i].GetNextChild(lvChildNode);
        end;
      end
      else if ATreeList.Selections[i].Values[ATreeListColumn.ItemIndex] <> null then
        AStrList.Add(ATreeList.Selections[i].Values[ATreeListColumn.ItemIndex]);
    end; // for
    if (ATreeList.SelectionCount = 1) and (AStrList.Count = 0) then
      AStrList.Add(ATreeList.Selections[0].Values[ATreeListColumn.ItemIndex]);
  finally
    Result := AStrList.CommaText;
    AStrList.Free;
  end;

end;

{ ============================#/#/#/#/#_

  Dizayn moddaki bir listeden secilen satirin ID degeri result olarak set edilir.
  Belirtilmisse parametre degerleride set edilir

  _#/#/#/#/#============================ }

function TDmGeneral.GetbyzListFormForSelect(AFormId: Integer; AFieldName: string = 'ID'; AParamNames: string = '';
  AParamValues: string = ''; AShowForm: Boolean = false; pSendBackForm: Boolean = false;
  pAlwOpenDataSet: Boolean = false): Variant;
var
  lvTmpStringList: TStringList;
  lvCount: Integer;
  i: Integer;
label
  lDeathCauseAgain;
begin
  Result := 0;
  lvTmpStringList := nil;

  if lgvbyzListForm <> nil then
    FreeAndNil(lgvbyzListForm);

  frmbyzListForm := TfrmbyzListForm._CreateForm(Application, AFormId, gvGenOracleSession);
  // frmbyzListForm.Position := poMainFormCenter;
  with frmbyzListForm do
  begin
    try
    lDeathCauseAgain:
      if OracleDataSet1 = nil then
      begin
        MessageCustom(Format(msgDtMdGeneral110, [inttostr(AFormId)]), 5);
        exit;
      end;

      lvTmpStringList := TStringList.Create;
      lvCount := CountOfChar('#', AParamNames);
      if lvCount > 0 then
      begin
        for i := 0 to lvCount do
        begin
          lvTmpStringList.Add(Decompose(AParamNames, '#', i) + '=' + Decompose(AParamValues, '#', i));
        end;
      end;

      if (lvCount = 0) and (AParamNames <> '') then
        lvTmpStringList.Add(AParamNames + '=' + AParamValues);

      SetDefaultParams(OracleDataSet1);

      for i := 0 to lvTmpStringList.Count - 1 do
        OracleDataSet1.SetVariable(lvTmpStringList.Names[i], lvTmpStringList.ValueFromIndex[i]);

      if (teSearch = nil) or pAlwOpenDataSet then
      begin
        OracleDataSet1.Open;

        if OracleDataSet1.IsEmpty then
        begin
          Result := -1; // kayit yoksa
          exit;
        end;
      end
      else
      begin
        if frmbyzListForm.ActiveControl = nil then
          frmbyzListForm.ActiveControl := teSearch;
      end;

      // form kullanilackasa burdan cik. cagrildigi yerde show wdilwcwk
      if pSendBackForm then
        exit;

      if (teSearch <> nil) or ((teSearch = nil) and ((OracleDataSet1.RecordCount > 1) or AShowForm)) then
      // 1 kayit varsa otomatik sec
      begin
        Visible := false;
        ShowModal;

        // BPARMAKSIZ, 04.04.2017, 83882:PatientFile'a taþýndýðý için kaldýrýldý.
        { if (ModalResult = 2) and (AFormId = 126)then
          // ölüm nedeni(126) seçmeden frmbyzListForm kapatýlmak istenirse
          begin
          MessageCustom(msgDtMdGeneral114, 3); // Ölüm nedenini seçmelisiniz!
          goto lDeathCauseAgain;
          end; }

        if (ModalResult <> 1) or OracleDataSet1.IsEmpty then // mrOk
          exit;
      end;

      try
        if (cxGrid1DBTableView1 <> nil) and (cxGrid1DBTableView1.DataController.GetSelectedCount > 1) then
          Result := dmGeneral.GetGridSelectedRowValues(cxGrid1DBTableView1, nil, AFieldName)
        else
          Result := OracleDataSet1.FieldByName(AFieldName).AsVariant;
      except
        MessageCustom(msgMultiUsed038, 5);
      end;
    finally
      if Assigned(lvTmpStringList) then
        lvTmpStringList.Free;

      // form kullanýlacaksa
      if (pSendBackForm) then
      begin
        if (OracleDataSet1 <> nil) and (not OracleDataSet1.IsEmpty or not OracleDataSet1.Active) then
          lgvbyzListForm := frmbyzListForm
        else
          FreeAndNil(frmbyzListForm);
      end
      else
        FreeAndNil(frmbyzListForm);

    end;
  end;
end;

{ ============================#/#/#/#/#_

  Dizayn moddaki bir listeden secilen satirin ID degeri result olarak ve ikinci
  alan bilgisi var ile gonderilen degiskene set edilir.

  _#/#/#/#/#============================ }
function TDmGeneral.GetbyzListFormForSelect(AFormId: Integer; var AFieldValue: Variant; AFieldName: string = '';
  AParamNames: string = ''; AParamValues: string = ''; pSendBackForm: Boolean = false; pAlwOpenDataSet: Boolean = false;
  AShowForm: Boolean = false): Variant;
var
  lvTmpStringList: TStringList;
  lvCount: Integer;
  i: Integer;
begin
  Result := 0;
  lvTmpStringList := nil;
  if lgvbyzListForm <> nil then
    FreeAndNil(lgvbyzListForm);

  // AFieldValue := 0;
  frmbyzListForm := TfrmbyzListForm._CreateForm(Application, AFormId, gvGenOracleSession);
  // frmbyzListForm.Position := poMainFormCenter;
  with frmbyzListForm do
  begin
    if OracleDataSet1 = nil then
    begin
      MessageCustom(Format(msgDtMdGeneral110, [inttostr(AFormId)]), 5);
      exit;
    end;

    try
      if (AParamNames <> '') and (AParamValues <> '') then
      begin
        lvTmpStringList := TStringList.Create;

        lvCount := CountOfChar('#', AParamNames);
        if lvCount > 0 then
        begin
          for i := 0 to lvCount do
          begin
            lvTmpStringList.Add(Decompose(AParamNames, '#', i) + '=' + Decompose(AParamValues, '#', i));
          end;
        end;

        if (lvCount = 0) and (AParamNames <> '') then
          lvTmpStringList.Add(AParamNames + '=' + AParamValues);
      end;

      // if Visible = true then  Visible := false;
      SetDefaultParams(OracleDataSet1);

      if lvTmpStringList <> nil then
        for i := 0 to lvTmpStringList.Count - 1 do
          OracleDataSet1.SetVariable(lvTmpStringList.Names[i], lvTmpStringList.ValueFromIndex[i]);

      if (teSearch = nil) or pAlwOpenDataSet then
      begin
        OracleDataSet1.Open;

        if OracleDataSet1.IsEmpty then
        begin
          Result := -1; // kayit yoksa
          exit;
        end;

        if VarToStr(AFieldValue) <> '' then
          OracleDataSet1.Locate(AFieldName, AFieldValue, [loPartialKey])

      end
      else
      begin
        if frmbyzListForm.ActiveControl = nil then
          frmbyzListForm.ActiveControl := teSearch;
      end;

      // form kullanilackasa burdan cik. cagrildigi yerde show wdilwcwk
      if pSendBackForm then
        exit;

      if (teSearch <> nil) or ((teSearch = nil) and (OracleDataSet1.RecordCount > 1)) or AShowForm then
      // 1 kayit varsa otomatik sec
      begin
        Visible := false;
        ShowModal;
        if (ModalResult <> 1) or OracleDataSet1.IsEmpty then // mrOk
          exit;
      end;

      try
        Result := OracleDataSet1.FieldByName('ID').AsInteger;
      except
      end;
      try
        if AFieldName <> '' then
          AFieldValue := OracleDataSet1.FieldByName(AFieldName).AsVariant;

      except
        MessageCustom(msgMultiUsed038, 5);
      end;
    finally
      if Assigned(lvTmpStringList) then
        lvTmpStringList.Free;

      // form kullanýlacaksa
      if (pSendBackForm) then
      begin
        if (OracleDataSet1 <> nil) and (not OracleDataSet1.IsEmpty or not OracleDataSet1.Active) then
          lgvbyzListForm := frmbyzListForm
        else
          FreeAndNil(frmbyzListForm);
      end
      else
        FreeAndNil(frmbyzListForm);
    end;
  end;
end;

{ ============================#/#/#/#/#_

  Parametre listelerine yeni kayit ekleme ,cikarma ve düzeltmek için
  asagidaki procedurden yararlanilir

  _#/#/#/#/#============================ }

function TDmGeneral.GetbyzListFormForModify(AFormId: Integer; AParamNames: string = ''; AParamValues: string = '';
  byzBtnEd: TObject = nil; pAlwOpenDataSet: Boolean = false): Variant;
var
  lvTmpStringList: TStringList;
  lvCount: Integer;
  i: Integer;
begin
  Result := 0;
  frmbyzListForm := TfrmbyzListForm._CreateForm(Application, AFormId, gvGenOracleSession);
  // frmbyzListForm.Position := poMainFormCenter;
  with frmbyzListForm do
  begin
    lvTmpStringList := TStringList.Create;
    try
      if OracleDataSet1 = nil then
      begin
        MessageCustom(Format(msgDtMdGeneral110, [inttostr(AFormId)]), 5);
        exit;
      end;
      // if Visible = true then
      // Visible := false;
      lvCount := CountOfChar('#', AParamNames);
      if lvCount > 0 then
      begin
        for i := 0 to lvCount do
        begin
          lvTmpStringList.Add(Decompose(AParamNames, '#', i) + '=' + Decompose(AParamValues, '#', i));
        end;
      end;
      if (lvCount = 0) and (AParamNames <> '') then
        lvTmpStringList.Add(AParamNames + '=' + AParamValues);

      SetDefaultParams(OracleDataSet1);

      for i := 0 to lvTmpStringList.Count - 1 do
        OracleDataSet1.SetVariable(lvTmpStringList.Names[i], lvTmpStringList.ValueFromIndex[i]);

      if OracleDataSet1.VariableIndex('ALL_RECORDS') > -1 then
        OracleDataSet1.SetVariable('ALL_RECORDS', BooleanTrue);

      if OracleDataSet1.VariableIndex('SHOW_ALL_REC') > -1 then // HBEZEK 25756 23.01.2017
        OracleDataSet1.SetVariable('SHOW_ALL_REC', '1');

      if (teSearch = nil) or pAlwOpenDataSet then
      begin
        OracleDataSet1.Open;
      end;

      pnlEdit.Visible := true;
      actAddNewRecord.Enabled := true;
      actDelTheRecord.Enabled := true;
      actModTheRecord.Enabled := true;

      Visible := false;
      ShowModal;

      if frmbyzListForm.ModalResult <> mrOk then
        exit;

      try

        if frmbyzListForm.lgvListIdVal > 0 then
          Result := frmbyzListForm.lgvListIdVal
        else if (cxGrid1DBTableView1 <> nil) and (cxGrid1DBTableView1.DataController.GetSelectedCount > 1) then
          Result := dmGeneral.GetGridSelectedRowValues(cxGrid1DBTableView1, nil, 'ID')
        else
          Result := OracleDataSet1.FieldByName('ID').AsVariant;

        if byzBtnEd <> nil then
        begin
          if TbyzButtonEdit(byzBtnEd).byzSourceFieldName <> '' then
            TbyzButtonEdit(byzBtnEd).byzSourceIDValue :=
              OracleDataSet1.FieldByName(TbyzButtonEdit(byzBtnEd).byzSourceFieldName).AsVariant;
          if TbyzButtonEdit(byzBtnEd).byzShowingFieldName <> '' then
            TbyzButtonEdit(byzBtnEd).Text := FindbyzBtnShowingText(TbyzButtonEdit(byzBtnEd), OracleDataSet1);
          // OracleDataSet1.FieldByName(TbyzButtonEdit(byzBtnEd).byzShowingFieldName).asVariant;
          if TbyzButtonEdit(byzBtnEd).byzSourceSecondFieldName <> '' then
            TbyzButtonEdit(byzBtnEd).byzSourceSecondFieldValue :=
              OracleDataSet1.FieldByName(TbyzButtonEdit(byzBtnEd).byzSourceSecondFieldName).AsVariant;
          Result := TbyzButtonEdit(byzBtnEd).byzSourceIDValue;
        end;
      except
        MessageCustom(msgMultiUsed038, 5);
      end;
    finally
      FreeAndNil(frmbyzListForm);
      if lvTmpStringList <> nil then
        lvTmpStringList.free;
    end;
  end;
end;

function TDmGeneral.GetAndSetFrombyzListForm(pRecOraDtSet: TOracleDataSet; ARecFieldName: string; ATarFormId: Integer;
  ATarParamName: string = ''; ATarParamValue: string = ''): Boolean;
var
  IdValue, vSelRecID: Integer;
begin
  Result := false;
  IdValue := GetbyzListFormForSelect(ATarFormId, 'ID', ATarParamName, ATarParamValue);
  if IdValue <= 0 then
    exit;

  with pRecOraDtSet do
  begin
    vSelRecID := FieldByName('ID').AsInteger;
    if State <> dsEdit then
      Edit;
    FieldByName(ARecFieldName).AsInteger := IdValue;
    Post;
    Close;
    Open;

    Locate('ID', vSelRecID, []);
    Result := true;
  end;
end;

function TdmGeneral.GetbyzListFormForSelect(var pbyzBtnEd: TbyzButtonEdit; pSendBackForm,
  pAlwOpenDataSet: Boolean): Variant;
begin

end;

end.
