unit MCConstraintEval;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, byzMCBase, cxGraphics, cxLookAndFeels,Oracle,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, Data.DB,
  OracleData, Vcl.AppEvnts, cxTextEdit, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxLabel, cxGroupBox, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,msgConst,DtMdMedCard,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,DtMdGeneral,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxDBCheckComboBox,CommonConf,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxImageComboBox, cxButtonEdit,CostumSelect,
  cxGridBandedTableView, cxCalendar;

type
  TfrmMCConstraintEval = class(TfrmbyzMCBase)
    odsPharmacologicalOrder: TOracleDataSet;
    dsPharmacologicalOrder: TDataSource;
    odsConstraintEvalControls: TOracleDataSet;
    dsConstraintEvalControls: TDataSource;
    odsPatientContact: TOracleDataSet;
    dsPatientContact: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    grdConstaintEvalDetail: TcxGrid;
    tvConstaintEvalDetail: TcxGridDBTableView;
    tvConstaintEvalDetailSTARTTIME: TcxGridDBColumn;
    tvConstaintEvalDetailSTART_DEPT_ID: TcxGridDBColumn;
    tvConstaintEvalDetailSTART_DR_ID: TcxGridDBColumn;
    tvConstaintEvalDetailFINISHTIME: TcxGridDBColumn;
    tvConstaintEvalDetailFINISH_DEPT_ID: TcxGridDBColumn;
    tvConstaintEvalDetailFINISH_DR_ID: TcxGridDBColumn;
    lvConstaintEvalDetail: TcxGridLevel;
    Panel6: TPanel;
    Panel9: TPanel;
    cxGroupBox2: TcxGroupBox;
    ccbReasonForRestriction: TcxDBCheckComboBox;
    mmReasonForRestrictionExplanation: TcxDBMemo;
    Panel13: TPanel;
    cxGroupBox1: TcxGroupBox;
    cbPyhscalEvalSelect: TcxDBCheckBox;
    cbPharmacologicalEvalSelect: TcxDBCheckBox;
    Panel10: TPanel;
    Panel12: TPanel;
    cxGroupBox3: TcxGroupBox;
    ccbPhysicalRestraintMethods: TcxDBCheckComboBox;
    mmPhysicalRestraintMethodsExplanation: TcxDBMemo;
    Panel14: TPanel;
    cxGroupBox4: TcxGroupBox;
    ccbAlternativeInitiatives: TcxDBCheckComboBox;
    mmAlternativeInitiativesExplanation: TcxDBMemo;
    Panel19: TPanel;
    grdConstaintEvalCont: TcxGrid;
    tvConstaintEvalCont: TcxGridDBTableView;
    tvConstaintEvalContPROCESS_TIME: TcxGridDBColumn;
    tvConstaintEvalContBEHAVIOR_NOTES: TcxGridDBColumn;
    tvConstaintEvalContCIRCULATION: TcxGridDBColumn;
    tvConstaintEvalContCONSTRAINATION_COMPLICATION: TcxGridDBColumn;
    tvConstaintEvalContNUTRITION: TcxGridDBColumn;
    tvConstaintEvalContELIMINATION: TcxGridDBColumn;
    tvConstaintEvalContHYGIENE_REQUIREMENT: TcxGridDBColumn;
    tvConstaintEvalContMOBILIZATION: TcxGridDBColumn;
    tvConstaintEvalContOXYGEN_NEEDS: TcxGridDBColumn;
    tvConstaintEvalContPER_ID: TcxGridDBColumn;
    tvConstaintEvalContEXPLANATION: TcxGridDBColumn;
    tvConstaintEvalContTERMINATION_OF_RESTRICTIONS: TcxGridDBColumn;
    tvConstaintEvalContDELETE: TcxGridDBColumn;
    lvConstaintEvalCont: TcxGridLevel;
    cxLabel2: TcxLabel;
    btnCosntraitEvalControlAdd: TcxButton;
    Panel15: TPanel;
    Panel16: TPanel;
    cxGroupBox5: TcxGroupBox;
    cxButton2: TcxButton;
    vgCominicationPersonÝnformation: TcxDBVerticalGrid;
    vgCominicationPersonInformationKINSHIP: TcxDBEditorRow;
    vgCominicationPersonInformationRELATIVE_PATIENT_INFORMATION: TcxDBEditorRow;
    vgCominicationPersonInformationNAME: TcxDBEditorRow;
    vgCominicationPersonInformationSURNAME: TcxDBEditorRow;
    vgCominicationPersonInformationMOBILE_PHONE: TcxDBEditorRow;
    vgCominicationPersonInformationWORK_PHONE: TcxDBEditorRow;
    vgCominicationPersonInformationHOME_PHONE: TcxDBEditorRow;
    vgCominicationPersonInformationPERSON_STATUS: TcxDBEditorRow;
    vgCominicationPersonInformationRELATIVE_PATIENT_EXPLANATION: TcxDBEditorRow;
    Panel18: TPanel;
    grdFarmaOrder: TcxGrid;
    tvFarmaOrder: TcxGridDBTableView;
    tvFarmaOrderNAME: TcxGridDBColumn;
    tvFarmaOrderDOSE: TcxGridDBColumn;
    tvFarmaOrderWAYOFUSE: TcxGridDBColumn;
    tvFarmaOrderDELETE: TcxGridDBColumn;
    lvFarmaOrder: TcxGridLevel;
    btnAddOrder: TcxButton;
    btnContactDelete: TcxButton;
    btnAddContact: TcxButton;
    ppmConstraintEval: TPopupMenu;
    KstlamaySrdr1: TMenuItem;
    grdConstaintEvalDetailBandedTableView1: TcxGridBandedTableView;
    grdConstaintEvalDetailBandedTableView2: TcxGridBandedTableView;
    grdConstaintEvalDetailBandedTableView3: TcxGridBandedTableView;
    procedure btnAddContactClick(Sender: TObject);
    procedure btnContactDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);override;
    procedure btnBaseSaveClick(Sender: TObject);override;
    procedure btnBaseDeleteClick(Sender: TObject);override;
    procedure cbPyhscalEvalSelectPropertiesChange(Sender: TObject);
    procedure btnBaseAddClick(Sender: TObject);override;
    procedure btnAddOrderClick(Sender: TObject);
    procedure tvFarmaOrderDELETEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvConstaintEvalContDELETEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure odsConstraintEvalControlsBeforePost(DataSet: TDataSet);
    procedure odsPatientContactBeforePost(DataSet: TDataSet);
    procedure OracleDataSet1DetBeforePost(DataSet: TDataSet);
    procedure tvConstaintEvalContCanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure tvConstaintEvalDetailFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvConstaintEvalDetailSTART_DEPT_IDPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure tvConstaintEvalDetailSTART_DR_IDPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure pmiConstraintEvalContinueClick(Sender : TObject);
    procedure tvConstaintEvalContTERMINATION_OF_RESTRICTIONSPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnCosntraitEvalControlAddClick(Sender: TObject);
    procedure tvConstaintEvalContPER_IDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tvConstaintEvalDetailFINISH_DEPT_IDPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure tvConstaintEvalDetailFINISH_DR_IDPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);


  private
    { Private declarations }
    lgvAuthorize,lgvAddProcess : Boolean;
    lgvOracleDataSet1 : TOracleDataSet;
    function GetThisObject(Sender:TObject;pType:TClass):TObject;
    procedure CreateObjectRep;
  public
    { Public declarations }
    procedure ArrangeConstraintEval(pOraDataSet:TOracleDataSet);
    function CheckPatientFile(pCompareDate : TDateTime;pStartTime:TDateTime):Boolean;
    function CheckPatientIn(pCompareDate : TDateTime):Boolean;
    function CheckPatientOut(pCompareDate : TDateTime):Boolean;
  end;

var
  frmMCConstraintEval: TfrmMCConstraintEval;

implementation

{$R *.dfm}

procedure TfrmMCConstraintEval.ArrangeConstraintEval(pOraDataSet:TOracleDataSet);
begin
  if pOraDataSet = nil then
  begin
    OracleDataSet1.SetVariable('COM_ID',FBPatientInfo.BConOfMedId);
    OracleDataSet1.Open;
    lgvAuthorize := true;
    if OracleDataSet1.IsEmpty then
    begin
      OracleDataSet1.Insert;
      OracleDataSet1.FieldByName('COM_ID').AsInteger := FBPatientInfo.BConOfMedId;
      OracleDataSet1.Post;
    end;
  end
  else //byzmedcarddan cagrildiysa
  begin
      BorderStyle := bsNone;
      Align := alClient;
      BorderWidth := 10;
      lgvFrmOpenFromMedCard := True;
      lgvOracleDataSet1 := pOraDataSet;
      gbBaseTop.Visible := False;
      pnlBaseBottom.Visible := False;
      lgvAuthorize := false;
      OracleDataSet1Det.ReadOnly := True;
  end;
  if OracleDataSet1Det.SQL.Text <> '' then
    OracleDataSet1Det.Open;

  odsConstraintEvalControls.Open;
  odsPharmacologicalOrder.Open;
  odsPatientContact.Open;

  CreateObjectRep;

  odsConstraintEvalControls.ReadOnly :=  OracleDataSet1Det.ReadOnly;
  odsPharmacologicalOrder.ReadOnly := OracleDataSet1Det.ReadOnly;
  odsPatientContact.ReadOnly := OracleDataSet1Det.ReadOnly;
end;
procedure TfrmMCConstraintEval.btnAddContactClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) or (OracleDataSet1Det.RecordCount = 0) then
    Exit;
  odsPatientContact.Insert;
  odsPatientContact.FieldByName('CED_ID').AsInteger := OracleDataSet1Det.FieldByName('ID').AsInteger;
  odsPatientContact.FieldByName('CTIME').AsDateTime := RealNow;
  odsPatientContact.FieldByName('CUSER').AsString := UserName;
  odsPatientContact.Post;
end;

procedure TfrmMCConstraintEval.btnAddOrderClick(Sender: TObject);
const
  lcInsertOrder =
      'BEGIN' + #13#10 +
    '  INSERT INTO MC_CONSTRAINT_EVAL_ORDERS' + #13#10 +
    '    (ID,' + #13#10 +
    '     CED_ID,' + #13#10 +
    '     ORDER_M_ID,' + #13#10 +
    '     DUM_NAME,' + #13#10 +
    '     APP_FREQUENCE_INFO,' + #13#10 +
    '     SRD_ID,' + #13#10 +
    '     CUSER,' + #13#10 +
    '     CTIME,' + #13#10 +
    '     PROCESS_TIME)' + #13#10 +
    '  VALUES' + #13#10 +
    '    (MC_CONSTRAINT_EVA_ORD_SEQ_ID.NEXTVAL,' + #13#10 +
    '     :CED_ID,' + #13#10 +
    '     :ORDER_M_ID,' + #13#10 +
    '     :DUM_NAME,' + #13#10 +
    '     :FREQUENCE_INFO,' + #13#10 +
    '     :SRD_ID,' + #13#10 +
    '     :CUSER,' + #13#10 +
    '     :CTIME,' + #13#10 +
    '     :PROCESS_TIME);' + #13#10 +
    '  COMMIT;' + #13#10 +
    'END;';
var
  lvPtId, i : Integer;
  lvSrdIdsList : TStringList;
  lvOqInsertPriv : TOracleQuery;

begin
  inherited;
  if (OracleDataSet1Det.RecordCount = 0) or (OracleDataSet1Det.ReadOnly) then
    Exit;
  lvPtId := 2576940;
  dmGeneral.GetbyzListFormForSelect(939,'ID','PT_ID#LST_TYPE',IntToStr(lvPtId)+'#'+'1',True,True,True);
  //veri kaynaðýndan veri çekmek amacýyla kullanýlýr

  try
    if dmGeneral.lgvbyzListForm = Nil then
      Exit;
    if dmGeneral.lgvbyzListForm.ShowModal <> mrOK then   //kullanýcýdan bir yanýt bekler yanýt ok deðilse kapatýlýr
      Exit;
    if dmGeneral.lgvbyzListForm.OracleDataSet1.RecordCount = 0 then
      Exit;
    if dmGeneral.lgvbyzListForm.lgvSelIdsList.Count = 0 then
      Exit;

    lvSrdIdsList := TStringList.Create;
    try
      lvSrdIdsList.CommaText := dmGeneral.lgvbyzListForm.lgvSelIdsList.CommaText;
      lvOqInsertPriv := GetNewOracleQuery(lcInsertOrder);
      try
        for i :=0 to lvSrdIdsList.Count - 1 do
        begin
          if not odsPharmacologicalOrder.Locate('SRD_ID',lvSrdIdsList.Strings[i],[])  then
          begin
            dmGeneral.lgvbyzListForm.OracleDataSet1.Locate('ID',lvSrdIdsList.Strings[i],[]);
//'CED_ID' adlý bir tam sayý parametresi tanýmlar ve bu parametreye OracleDataSet1Det veri kümesindeki 'ID' alanýnýn tam sayý deðerini atar.
            lvOqInsertPriv.DeclareAndSet('CED_ID',otInteger,OracleDataSet1Det.FieldByName('ID').AsInteger);
//ORDER_M_ID' adýnda bir tam sayý parametre tanýmlar ve bu parametreye dmGeneral.lgvbyzListForm.OracleDataSet1 veri kümesindeki 'M_ID' alanýnýn tam sayý deðerini atar.
            lvOqInsertPriv.DeclareAndSet('ORDER_M_ID',otInteger,
              dmGeneral.lgvbyzListForm.OracleDataSet1.FieldByName('M_ID').AsInteger);

            lvOqInsertPriv.DeclareAndSet('DUM_NAME',otString,
              dmGeneral.lgvbyzListForm.OracleDataSet1.FieldByName('DUM_NAME').AsString);

            lvOqInsertPriv.DeclareAndSet('FREQUENCE_INFO',otString,
              dmGeneral.lgvbyzListForm.OracleDataSet1.FieldByName('DOSE').AsString);

            lvOqInsertPriv.DeclareAndSet('SRD_ID',otInteger,lvSrdIdsList.Strings[i]);
            lvOqInsertPriv.DeclareAndSet('CUSER',otString,UserName);
            lvOqInsertPriv.DeclareAndSet('CTIME',otDate,RealNow);
            lvOqInsertPriv.DeclareAndSet('PROCESS_TIME',otDate,Now);
            lvOqInsertPriv.Execute;
          end;
        end;
      finally
        if Assigned(lvOqInsertPriv) then   //Assigned fonksiyonu lvOqInsertPriv nesnesinin geçerli olup olmadýðýný kontrol ediyor. Nil ise serbest býrakmasý mantýksýz.
          FreeAndNil(lvOqInsertPriv); //nesnenin bellekteki alanýný serbest býrakýr sonra nil yapar
        odsPharmacologicalOrder.Refresh;
      end;
    finally
      if Assigned(lvSrdIdsList) then
        FreeAndNil(lvSrdIdsList);
    end;
  finally
    if Assigned(dmGeneral.lgvbyzListForm) then
      FreeAndNil(dmGeneral.lgvbyzListForm);
  end;
end;
function TfrmMCConstraintEval.CheckPatientFile(pCompareDate: TDateTime; pStartTime: TDateTime): Boolean;
Const
  lvGetPT = 'SELECT CTIME,DISCHARGE_TIME,IS_DISCHARGE FROM PATIENT_TRANSACTIONS WHERE ID =: PT_ID';
var
  lvPtId : Integer;
  lvOqSelect: TOracleQuery;
begin
  lvPtId := 2577576; // BIZMED E GECINCE SABIT OLMAYACAK   ???
  Result := false;
  lvOqSelect := GetNewOracleQuery(lvGetPT);
  try
    lvOqSelect.DeclareAndSet('PT_ID',otInteger,lvPtId);
    lvOqSelect.Execute;
    if (pStartTime = pCompareDate) or (pStartTime > pCompareDate) then
    begin
      MessageCustom(msgMCConstraintEvaluation004,3);
      //kýsýtlama bitiþ zamaný kýsýtlama baþlangýc zamanýndan önce ya da eþit olamaz
      Result := false;
      FreeAndNil(lvOqSelect); //nesnenin serbest býrakýlmasý için kullanýlýr
      Exit;
    end
    else
    begin
      Result := true;
    end;
    if lvOqSelect.FieldAsString('IS_DISCHARGE') = '1' then  //1'e eþit ise çýkýþ yapýlmýþtýr
    begin
      if lvOqSelect.FieldAsDate('DISCHARGE_TIME') < pCompareDate then
      begin
        MessageCustom(msgMCConstraintEvaluation005,3); //hasta çýkýþ zamanýndan sonra kýsýtlama yapýlamaz
        Result := false;
      end
      else
      begin
        Result := true;
      end;
    end;
  finally
    FreeAndNil(lvOqSelect);
  end;
end;

function TfrmMCConstraintEval.CheckPatientIn(pCompareDate : TDateTime):Boolean;
Const
  lvGetPT = 'SELECT CTIME,DISCHARGE_TIME,IS_DISCHARGE FROM PATIENT_TRANSACTIONS WHERE ID =: PT_ID';
  // DISCHARGE_TIME = taburcu zamaný    IS_DISCHARGE=taburcu olup olmadýðý
var
  lvPtId : Integer;
  lvOqSelect: TOracleQuery;
begin
  lvPtId := 2577576;
  Result := true;
  lvOqSelect := GetNewOracleQuery(lvGetPT);
  try
    lvOqSelect.DeclareAndSet('PT_ID',otInteger,lvPtId);
    lvOqSelect.Execute;
    if lvOqSelect.FieldAsDate('CTIME') > pCompareDate then
    begin
      MessageCustom(msgMCConstraintEvaluation003,3);
      Result := false;
    end
    else
    begin
      Result := true;
    end;
  finally
    FreeAndNil(lvOqSelect);
  end;
end;

function TfrmMCConstraintEval.CheckPatientOut(pCompareDate: TDateTime): Boolean;
Const
  lvGetPT = 'SELECT CTIME,DISCHARGE_TIME,IS_DISCHARGE FROM PATIENT_TRANSACTIONS WHERE ID =:PT_ID';
var
  lvPtId : Integer;
  lvOqSelect : TOracleQuery;
begin
  lvPtId := 2577576;
  Result := true;
  lvOqSelect := GetNewOracleQuery(lvGetPT);
  try
    lvOqSelect.DeclareAndSet('PT_ID',otInteger,lvPtId);
    lvOqSelect.Execute;

    if lvOqSelect.FieldAsString('IS_DISCHARGE') = '1' then //1'e eþit ise çýkýþ yapýlmýþtýr
    begin
      MessageCustom(msgMCConstraintEvaluation002,3);
      Result := false;
    end
    else
    begin
      Result := true;
    end;
  finally
    FreeAndNil(lvOqSelect);
  end;
end;


procedure TfrmMCConstraintEval.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if not CheckPatientIn(Now) then
    Exit;
  lgvAddProcess := true;
  if lgvAuthorize then
  begin
    odsConstraintEvalControls.ReadOnly := false;
    odsPharmacologicalOrder.ReadOnly := false;
    odsPatientContact.ReadOnly := false;
    OracleDataSet1Det.ReadOnly := false;
  end
  else
    Exit;
  if (OracleDataSet1Det.ReadOnly) and (lgvOracleDataSet1 <> Nil) then
    Exit;
  OracleDataSet1Det.Insert;
  OracleDataSet1Det.FieldByName('STARTTIME').AsDateTime := Now;
  OracleDataSet1Det.FieldByName('PROCESS_TIME').AsDateTime := Now;
  OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
  OracleDataSet1Det.FieldByName('CUSER').AsString := UserName;
  OracleDataSet1Det.Post;
  OracleDataSet1Det.Refresh;
  lgvAddProcess := false;

end;

procedure TfrmMCConstraintEval.btnBaseDeleteClick(Sender: TObject);
begin
  inherited;
  if lgvAuthorize then
    OracleDataSet1Det.ReadOnly := false
  else
    exit;
  if OracleDataSet1Det.RecordCount = 0 then
    exit;
  if OracleDataSet1Det.FieldByName('CUSER').AsString <> UserName then
  begin
    MessageCustom(msgMultiUsed193,3);
  end
  else
  begin
    if MessageCustom(msgMultiUsed192) then
      OracleDataSet1Det.Delete;
  end;

end;

procedure TfrmMCConstraintEval.btnBaseSaveClick(Sender: TObject);
begin
  inherited;
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
  if odsPharmacologicalOrder.State <> dsBrowse then
    odsPharmacologicalOrder.Post;
  if odsPatientContact.State <> dsBrowse then
    odsPatientContact.Post;
  if odsConstraintEvalControls.State <> dsBrowse then
    odsConstraintEvalControls.Post;
end;

procedure TfrmMCConstraintEval.btnContactDeleteClick(Sender: TObject);
begin
   if MessageCustom(msgMultiUsed169) = True then
  begin
    if odsPatientContact.ReadOnly = False then
      odsPatientContact.Delete;
  end;
end;


procedure TfrmMCConstraintEval.btnCosntraitEvalControlAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) or (OracleDataSet1Det.RecordCount = 0) then
    Exit;
  odsConstraintEvalControls.Insert;
  odsConstraintEvalControls.FieldByName('PROCESS_TIME').AsDateTime := Now;
  odsConstraintEvalControls.FieldByName('CTIME').AsDateTime := RealNow;
  odsConstraintEvalControls.Post;
  odsConstraintEvalControls.Refresh;
end;

procedure TfrmMCConstraintEval.cbPyhscalEvalSelectPropertiesChange(
  Sender: TObject);
var
  lvbObject : TObject;
begin
  inherited;
  lvbObject := GetThisObject(Sender,TcxDBMemo);
  if lvbObject = Nil then
    Exit;
  TcxDBMemo(lvbObject).Enabled := TcxDBCheckBox(Sender).EditValue = True;

  if not TcxDBCheckBox(lvbObject).Enabled then
    TcxDBCheckBox(lvbObject).EditValue := Null;
end;

function TfrmMCConstraintEval.GetThisObject(Sender:TObject;pType:TClass):TObject;
var i : integer;
begin
  Result := Nil;
  for i:=0 to Self.ComponentCount-1 do
  begin
    if Self.Components[i].ClassType = pType then
    begin
      if(Self.Components[i].Tag = TComponent(Sender).Tag) and (Self.Components[i].Tag>0) then
      begin
        Result := Self.Components[i];
        Break;
      end;
    end;
  end;

end;

procedure TfrmMCConstraintEval.odsConstraintEvalControlsBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CTIME').AsDateTime := RealNow;
  DataSet.FieldByName('CUSER').AsString := UserName;
end;

procedure TfrmMCConstraintEval.odsPatientContactBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('PROCESS_TIME').AsDateTime := Now;
  DataSet.FieldByName('CTIME').AsDateTime := RealNow;
  DataSet.FieldByName('CUSER').AsString := UserName;
end;
// veri tabanýndaki kayýtlarýn güncellenme bilgilerini otomatik olarak ekler ve
// bu bilgilerin her zaman güncel olmasýný saðlar.
procedure TfrmMCConstraintEval.OracleDataSet1DetBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CUSER').AsString := UserName;
  DataSet.FieldByName('CTIME').AsDateTime := RealNow;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalContCanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  inherited;
  if (ARecord.RecordIndex = 0) and (OracleDataSet1Det.ReadOnly = false) then   // odaklanýlmak istenen kayýt birinci kayýt (indeks 0) ve OracleDataSet1Det veri kümesi yazýlabilir durumda ise, gridde düzenleme seçeneði etkinleþtirilir.
    tvConstaintEvalCont.OptionsData.Editing := true
  else
    tvConstaintEvalCont.OptionsData.Editing := false
end;
 // bir kullanýcýnýn bir kayýt silme iþlemi yapmadan önce onay almasýný ve
 // veri kümesinin yazýlabilir olduðundan emin olmasýný saðlar.
procedure TfrmMCConstraintEval.tvConstaintEvalContDELETEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if MessageCustom(msgMultiUsed169) = true then
   begin
     if odsConstraintEvalControls.ReadOnly = false then
       odsConstraintEvalControls.Delete;

      odsConstraintEvalControls.Refresh;
   end;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalContPER_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);

var
  lvResult , OfficeID : Integer;
begin
  OfficeID := 6; //bizmedde sabit olmayacak
  if odsConstraintEvalControls.ReadOnly = false then
  begin
    lvResult := dmGeneral.GetbyzListFormForSelect(130,'ID','BC_ID#OFF_ID','0'+'#'+IntToStr(OfficeID));
    try
      if lvResult > 0 then
      begin
        if odsConstraintEvalControls.State = dsBrowse then
          odsConstraintEvalControls.Edit;
        odsConstraintEvalControls.FieldByName('PER_ID').AsInteger :=lvResult;    //kontrolü yapan doktor
        odsConstraintEvalControls.Post;
        odsConstraintEvalControls.Refresh;
      end;
    finally
      FreeAndNil(dmGeneral.lgvbyzListForm);
    end;
  end;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalContTERMINATION_OF_RESTRICTIONSPropertiesEditValueChanged(
  Sender: TObject);
begin
  if odsConstraintEvalControls.FieldByName('TERMINATION_OF_RESTRICTIONS').AsString = '276' then
  begin
    if MessageCustom(msgMCConstraintEvaluation001) = false then
    begin
      odsConstraintEvalControls.FieldByName('TERMINATION_OF_RESTRICTIONS').AsString := '277';
      Exit;
    end;

    frmCostumSelect := TfrmCostumSelect.Create(Nil);
    try
      frmCostumSelect.ArrangefrmCostumSelectForm(1,OracleDataSet1Det);
      frmCostumSelect.ShowModal;
      if  frmCostumSelect.ShowModal <> mrOK then
      begin
        odsConstraintEvalControls.FieldByName('TERMINATION_OF_RESTRICTIONS').AsString := '277';
        FreeAndNil(frmCostumSelect);
        Exit;
      end;
      if OracleDataSet1Det.State = dsBrowse then
        OracleDataSet1Det.Edit;

        OracleDataSet1Det.FieldByName('FINISHTIME').AsString := frmCostumSelect.deDateTime.Text;
        OracleDataSet1Det.FieldByName('FINISH_DEPT_ID').AsInteger := frmCostumSelect.beDeptList.byzSourceIDValue;
        OracleDataSet1Det.FieldByName('FINISH_DR_ID').AsInteger := frmCostumSelect.beDeptList.byzSourceIDValue;
        OracleDataSet1Det.Post;
        OracleDataSet1Det.Refresh;
    finally
      FreeAndNil(frmCostumSelect);
    end;
  end;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalDetailFINISH_DEPT_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  lvResult , OfficeID : Integer;
begin
  inherited;
  OfficeID := 6;
  lvResult := dmGeneral.GetbyzListFormForSelect(105,'ID','IS_ACTIVE#OFF_ID','1'+'#'+IntToStr(OfficeID),True);
  try
    if lvResult >0 then
    begin
      OracleDataSet1Det.ReadOnly := false;
      if OracleDataSet1Det.State = dsBrowse then
        OracleDataSet1Det.Edit;

        OracleDataSet1Det.FieldByName('FINISH_DEPT_ID').AsInteger := lvResult;
        OracleDataSet1Det.FieldByName('FINISH_DR_ID').AsVariant := Null;   //departman deðiþince doktor sýfýrlanacak
        OracleDataSet1Det.Post;
        OracleDataSet1Det.Refresh;

        tvConstaintEvalDetailFINISH_DR_IDPropertiesButtonClick(nil,0);
        //seçilen departmana ait doktorlarý getirmek için
    end
    else
    begin
      OracleDataSet1Det.Delete; //seçim yapýlmamýþsa mevcut kayýt veri tabanýndan silinir
    end;
  finally
    if Assigned(dmGeneral.lgvbyzListForm) then
      FreeAndNil(dmGeneral.lgvbyzListForm);
  end;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalDetailFINISH_DR_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);

var
  lvResult , OfficeID : Integer;

begin
  inherited;
  OfficeID :=6;
  if OracleDataSet1Det.FieldByName('FINISH_DEPT_ID').AsInteger > 0 then
  begin
    lvResult := dmGeneral.GetbyzListFormForSelect(416,'ID','ID#OFF_ID',
    OracleDataSet1Det.FieldByName('FINISH_DEPT_ID').AsString + '#' + IntToStr(OfficeID),True);

    try
      if lvResult > 0 then
      begin
        if OracleDataSet1Det.State = dsBrowse then
        begin
          OracleDataSet1Det.ReadOnly := false;
          OracleDataSet1Det.Edit;
        end;
        OracleDataSet1Det.FieldByName('FINISH_DR_ID').AsInteger := lvResult;
        OracleDataSet1Det.Post;
        OracleDataSet1Det.Refresh;
      end
      else
      begin
        OracleDataSet1Det.Delete;   //seçim yapýlmamýþsa mevcut kayýt veri tabanýndan silinir
      end;
    finally
      if Assigned(dmGeneral.lgvbyzListForm) then
        FreeAndNil(dmGeneral.lgvbyzListForm);
    end;
  end;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalDetailFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if not lgvAuthorize then
    Exit;
  if (OracleDataSet1Det.RecordCount >0) and (lgvAddProcess = false) then
  begin
    if (OracleDataSet1Det.FieldByName('FINISHTIME').AsVariant <> Null) and
       (OracleDataSet1Det.FieldByName('FINISH_DEPT_ID').AsVariant <> Null) and
       (OracleDataSet1Det.FieldByName('FINISH_DR_ID').AsVariant <> Null) then
    begin
      OracleDataSet1Det.ReadOnly := true;
      odsPharmacologicalOrder.ReadOnly := true;
      odsConstraintEvalControls.ReadOnly := true;
      odsPatientContact.ReadOnly := true;
    end
    else
    begin
      OracleDataSet1Det.ReadOnly := false;
      odsPharmacologicalOrder.ReadOnly := false;
      odsConstraintEvalControls.ReadOnly := false;
      odsPatientContact.ReadOnly := false;
    end;

  end;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalDetailSTART_DEPT_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);

var
  lvResult,OfficeID : Integer;
begin
  inherited;
  OfficeID := 6;
  lvResult := dmGeneral.GetbyzListFormForSelect(105,'ID','IS_ACTIVE#OFF_ID','1'+'#'+IntToStr(OfficeID),True);
  try
    if lvResult >0 then
    begin
      OracleDataSet1Det.ReadOnly := false;
      if OracleDataSet1Det.State = dsBrowse then
        OracleDataSet1Det.Edit;

        OracleDataSet1Det.FieldByName('START_DEPT_ID').AsInteger := lvResult;
        OracleDataSet1Det.FieldByName('START_DR_ID').AsVariant := Null;   //departman deðiþince doktor sýfýrlanacak
        OracleDataSet1Det.Post;
        OracleDataSet1Det.Refresh;

        tvConstaintEvalDetailSTART_DR_IDPropertiesButtonClick(nil,0);
        //seçilen departmana ait doktorlarý getirmek için
    end
    else
    begin
      OracleDataSet1Det.Delete; //seçim yapýlmamýþsa mevcut kayýt veri tabanýndan silinir
    end;
  finally
    if Assigned(dmGeneral.lgvbyzListForm) then
      FreeAndNil(dmGeneral.lgvbyzListForm);
  end;
end;

procedure TfrmMCConstraintEval.tvConstaintEvalDetailSTART_DR_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  lvResult,OfficeID : Integer;
begin
  inherited;
  OfficeID :=6;
  if OracleDataSet1Det.FieldByName('START_DEPT_ID').AsInteger > 0 then
  begin
    lvResult := dmGeneral.GetbyzListFormForSelect(416,'ID','ID#OFF_ID',
    OracleDataSet1Det.FieldByName('START_DEPT_ID').AsString + '#' + IntToStr(OfficeID),True);

    try
      if lvResult > 0 then
      begin
        if OracleDataSet1Det.State = dsBrowse then
        begin
          OracleDataSet1Det.ReadOnly := false;
          OracleDataSet1Det.Edit;
        end;
        OracleDataSet1Det.FieldByName('START_DR_ID').AsInteger := lvResult;
        OracleDataSet1Det.Post;
        OracleDataSet1Det.Refresh;
      end
      else
      begin
        OracleDataSet1Det.Delete;   //seçim yapýlmamýþsa mevcut kayýt veri tabanýndan silinir
      end;
    finally
      if Assigned(dmGeneral.lgvbyzListForm) then
        FreeAndNil(dmGeneral.lgvbyzListForm);
    end;
  end;
end;

procedure TfrmMCConstraintEval.tvFarmaOrderDELETEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if MessageCustom(msgMultiUsed169) then
  begin
    if odsPharmacologicalOrder.ReadOnly = false then
      odsPharmacologicalOrder.Delete;
  end;

end;

procedure TfrmMCConstraintEval.CreateObjectRep;
begin
  ccbAlternativeInitiatives.RepositoryItem := dmMedCard.CreateChckCmbBox('eriAlternativeInitiatives',286);
  ccbReasonForRestriction.RepositoryItem := dmMedCard.CreateChckCmbBox('eriReasonForRestriction',287);
  ccbPhysicalRestraintMethods.RepositoryItem := dmMedCard.CreateChckCmbBox('eriPhysicalRestraintMethods',285);
  tvConstaintEvalContBEHAVIOR_NOTES.RepositoryItem := dmMedCard.CreateImgCmbBox('eriBEHAVIOR_NOTES',288);
  tvConstaintEvalContCIRCULATION.RepositoryItem := dmMedCard.CreateImgCmbBox('eriCIRCULATION',291);
  tvConstaintEvalContCONSTRAINATION_COMPLICATION.RepositoryItem := dmMedCard.CreateImgCmbBox('eriCONSTRAINATION_COMPLICATION',290);
  tvConstaintEvalContNUTRITION.RepositoryItem := dmMedCard.CreateImgCmbBox('eriNUTRITION',289);
  tvConstaintEvalContELIMINATION.RepositoryItem := dmMedCard.CreateImgCmbBox('eriELIMINATION',20);
  tvConstaintEvalContHYGIENE_REQUIREMENT.RepositoryItem := dmMedCard.CreateImgCmbBox('eriHYGIENE_REQUIREMENT',20);
  tvConstaintEvalContMOBILIZATION.RepositoryItem := dmMedCard.CreateImgCmbBox('eriMOBILIZATION',21);
  tvConstaintEvalContOXYGEN_NEEDS.RepositoryItem := dmMedCard.CreateImgCmbBox('eriOXYGEN_NEEDS',21);
  tvConstaintEvalContTERMINATION_OF_RESTRICTIONS.RepositoryItem := dmMedCard.CreateImgCmbBox('eriTERMINATION_OF_RESTRICTIONS',23);

  vgCominicationPersonInformationKINSHIP.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriPersonInformationKINSHIP',193);
  vgCominicationPersonInformationPERSON_STATUS.Properties.RepositoryItem := dmMedCard.CreateImgCmbBox('eriPersonInformationPERSON_STATUS',194);
end;

procedure TfrmMCConstraintEval.FormCreate(Sender: TObject);
begin
  inherited;
  btnBaseClose.Visible := true;
  btnBaseSave.Visible := true;
  btnBaseDelete.Visible := true;
  btnBaseAdd.Visible := true;
  btnBasePrint.Visible := true;
end;

procedure TfrmMCConstraintEval.pmiConstraintEvalContinueClick(Sender : TObject);
begin
  if (OracleDataSet1Det.FieldByName('FINISHTIME').AsVariant <> Null) and (lgvAuthorize = true) then
  begin
    lgvAddProcess := true;
    OracleDataSet1Det.ReadOnly := false;
    odsPharmacologicalOrder.ReadOnly := false;
    odsPatientContact.ReadOnly := false;
    odsConstraintEvalControls.ReadOnly := false;
    OracleDataSet1Det.FieldByName('FINISHTIME').AsVariant := Null;
    tvConstaintEvalContTERMINATION_OF_RESTRICTIONS.EditValue := 277;
    odsConstraintEvalControls.FieldByName('TERMINATION_OF_RESTRICTIONS').AsString := '277';
    OracleDataSet1Det.FieldByName('FINISH_DEPT_ID').AsVariant := Null;
    OracleDataSet1Det.FieldByName('FINISH_DR_ID').AsVariant := Null;

    if OracleDataSet1Det.State = dsBrowse then
      OracleDataSet1Det.Edit;
    OracleDataSet1Det.Post;

    if odsConstraintEvalControls.State = dsBrowse then
      odsConstraintEvalControls.Edit;
      odsConstraintEvalControls.Post;
      odsConstraintEvalControls.Refresh;
      lgvAddProcess := false;
  end
  else
  begin
    OracleDataSet1Det.ReadOnly := true;
    odsPharmacologicalOrder.ReadOnly := true;
    odsPatientContact.ReadOnly := true;
    odsConstraintEvalControls.ReadOnly := true;
  end;


end;


end.
