unit PatientList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DtMdMain, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, OracleData, Vcl.StdCtrls,
  Vcl.ExtCtrls, DtMdMedCard,
  byzBase, byzMCBase, MCBasiYBraden, CommonConf, DtMdGeneral, dxSkinsForm,
  MCWoudnAsses, MCPainAssesmentScale, MCNeoSkinRisk, MCFluidBalance, MCCatheterMaterialTrace,
  MCFallRiskHarizmi, MCFallRiskItaki, byzTheBezier, dxNavBarCollns,
  dxNavBarBase, dxNavBar, Oracle, MCAdultPatientDiagnosis, MCChildPatientDiagnosis, cxContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, byzButtonEdit, Vcl.Menus, cxButtons, McAsie, MCNutritionalRiskScore,
  MCAdverseImpactForm, MCConstraintEvaluation, MCSofaScoreForm, MCAnesthesiaEvaluation, MCVTERiskAssmtInPregnancy,
  dxSkinsDefaultPainters, MCEuroScoreForm, MCBaseSamples, dxCalloutPopup, dxBar, MCGlasgowScale, MCSnapIIScore,
  MCApacheII, MCDietitianEvaluation, MCSafeBirthControl, MCPrismScore, MCPartograph, MCPelodScore, MCTollnerSepsis,
  MCVTERiskFactorEvaluation, MCStrongKidsNutritionAssessment, MCSafeSurgeryControl, MCSurgeryPreAndPostOpPreparation,
  MCEmaSepsisScore, MCPediatricTraumaScore, MCWaterlowScore, MCNewBornNutrition, MCCriticalCaseFollowUpForm,MCNewBornCRIB,
  McBloodSugarTracing, MCOrganFailure, MCNorthamptonSkinAssessment,MCPatientInformation,
  MCPatientListOrder, dxScrollbarAnnotations,MCEpicrisisCard, cxScrollBox,MCCapriniRiskAssessment,MCImproveBleedingRiskAssessment,
  frxDesgnCtrls,MCImproveVTERiskAssessment,MCNihssScore,MCModifiedScore,MCAcuteGVHDScore,MCBreastFeeding;

type
  TfrmPatientList = class(TForm)
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SURNAME: TcxGridDBColumn;
    cxGrid1DBTableView1IDENTITY_NO: TcxGridDBColumn;
    cxGrid1DBTableView1UPN: TcxGridDBColumn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PROT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DR_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DEPT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DEPT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1DR_NAME: TcxGridDBColumn;
    Panel1: TPanel;
    btnBraden: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    dxNavBar1: TdxNavBar;
    nbgProcess: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    Button1: TButton;
    cxButton1: TcxButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button16: TButton;
    Button18: TButton;
    cxButton2: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxCalloutPopup1: TdxCalloutPopup;
    bsiMedForms: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    cxButton3: TcxButton;
    Button45: TButton;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    byzButtonEdit1: TbyzButtonEdit;
    Button49: TButton;
    Button50: TButton;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBradenClick(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure Button9Click(Sender: TObject);
    procedure byzButtonEdit1Enter(Sender: TObject);
    procedure byzButtonEdit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure btnConstraintEvaClick(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure bsiMedFormsClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
  private
//    procedure CreateNurseMenus;
    function RunningAppInfo(pTypeVal: Smallint; pAppName: string): Smallint;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPatientList: TfrmPatientList;

implementation
uses TlHelp32, PsAPI, MCDiabetesNurseForm, MCPatientInfoForm;
{$R *.dfm}

function TfrmPatientList.RunningAppInfo(pTypeVal: Smallint; pAppName: string): Smallint;
var
  lvContinueLoop: Boolean;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
  lvProcessID: LongWord; // DWORD;
  lvProcessHandle: THandle;
  lvAppFileName, lvProccessAppName: string;
  lvAppCount, lvAppIndx: Smallint;
const
  PROCESS_TERMINATE = $0001;
begin
  lvAppFileName := pAppName;
  lvAppCount := 0;
  lvAppIndx := 0;
  FSnapshotHandle := 0;
  try
    FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
    lvContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

    GetWindowThreadProcessID(Application.Handle, @lvProcessID);

    while lvContinueLoop do
    begin
      lvProccessAppName := UpperCase(ExtractFileName(FProcessEntry32.szExeFile));
      if ((lvProccessAppName = UpperCase(lvAppFileName)) or
        (UpperCase(FProcessEntry32.szExeFile) = UpperCase(lvAppFileName))) then
      begin

        lvAppCount := lvAppCount + 1;

        if lvProcessID = FProcessEntry32.th32ProcessID then
          lvAppIndx := lvAppCount
        else if pTypeVal = 3 then // pencereler kapatilacaksa
        begin
          lvProcessHandle := OpenProcess(PROCESS_TERMINATE, false, FProcessEntry32.th32ProcessID);
          TerminateProcess(lvProcessHandle, 4);
        end;

      end;
      lvContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
    end;
  finally
    CloseHandle(FSnapshotHandle);
  end;

  if pTypeVal = 1 then // index kontrolu
  begin
    if lvAppIndx < lvAppCount then
      Result := 1
    else
      Result := 0;
  end
  else
    Result := lvAppCount;
end;

procedure TfrmPatientList.bsiMedFormsClick(Sender: TObject);
begin
 if Sender is TdxBarButton then
   MessageCustom(TdxBarButton(Sender).Caption,5);
end;

procedure TfrmPatientList.btnBradenClick(Sender: TObject);
//VAR
//  lvComId:Integer;
begin
//  lvPBPatientInfo.BPatName := ;
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRES_SORE_RISK_BRADEN', 'MC_PRES_SOR_RISK_BRD_ID_SEQ');

  frmMCBasiYBraden  := TfrmMCBasiYBraden.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCBasiYBraden.ArrangeBradenForm('B',nil);
    frmMCBasiYBraden.ShowModal;
  finally
    frmMCBasiYBraden.Free;
  end;
end;

procedure TfrmPatientList.btnConstraintEvaClick(Sender: TObject);
begin

  frmMCConstraintEvaluation:= TfrmMCConstraintEvaluation.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCConstraintEvaluation.ShowModal;
  finally
    frmMCConstraintEvaluation.Free;
  end;
end;

procedure TfrmPatientList.Button10Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CHILD_PATIENT_DIAGNOSIS', 'MC_CHILD_PAT_DIAG_ID_SEQ');

  frmMCChildPatientDiagnosis:= TfrmMCChildPatientDiagnosis.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCChildPatientDiagnosis.ArrangeChildPatientDiagnosisForm(nil, 1);// ???; pFrmType = 1 COCUK, 2 = YENI DOGAN, 3 = YENI DOGAN YOGUN BAKIM FORMUDUR
    frmMCChildPatientDiagnosis.ShowModal;
  finally
    frmMCChildPatientDiagnosis.Free;
  end;
end;

procedure TfrmPatientList.Button11Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_NUTRITIONAL_RISK_SCORE', 'MC_NUT_RISK_SCORE_ID_SEQ');

  frmMCNutritionalRiskScore := TfrmMCNutritionalRiskScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCNutritionalRiskScore.ArrangeNutritionalRiskScore(Nil);
    frmMCNutritionalRiskScore.ShowModal;
  finally
    frmMCNutritionalRiskScore.Free;
  end;
end;

procedure TfrmPatientList.Button12Click(Sender: TObject);
begin
   gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CHILD_PATIENT_DIAGNOSIS', 'MC_CHILD_PAT_DIAG_ID_SEQ');

  frmMCChildPatientDiagnosis:= TfrmMCChildPatientDiagnosis.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCChildPatientDiagnosis.ArrangeChildPatientDiagnosisForm(nil, 2);  // ???; pFrmType = 1 COCUK, 2 = YENI DOGAN, 3 = YENI DOGAN YOGUN BAKIM FORMUDUR
    frmMCChildPatientDiagnosis.ShowModal;
  finally
    frmMCChildPatientDiagnosis.Free;
  end;
end;

procedure TfrmPatientList.Button13Click(Sender: TObject);
begin
   gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CHILD_PATIENT_DIAGNOSIS', 'MC_CHILD_PAT_DIAG_ID_SEQ');

  frmMCChildPatientDiagnosis:= TfrmMCChildPatientDiagnosis.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCChildPatientDiagnosis.ArrangeChildPatientDiagnosisForm(nil, 3);  // ???; pFrmType = 1 COCUK, 2 = YENI DOGAN, 3 = YENI DOGAN YOGUN BAKIM FORMUDUR
    frmMCChildPatientDiagnosis.ShowModal;
  finally
    frmMCChildPatientDiagnosis.Free;
  end;
end;

procedure TfrmPatientList.Button14Click(Sender: TObject); // ??? Advers Etki Formu
begin
   gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_ADVERSE_REACTION', 'MC_ADVERSE_REACTION_ID_SEQ');

  frmMCAdverseImpactForm:= TfrmMCAdverseImpactForm.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCAdverseImpactForm.ArrangeAdverseImpactForm(nil);
    frmMCAdverseImpactForm.ShowModal;
  finally
    frmMCAdverseImpactForm.Free;
  end;
end;

procedure TfrmPatientList.Button15Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_SOFA_SCORE', 'MC_SOFA_SCORE_ID_SEQ');

  frmMCSofaScoreForm := TfrmMCSofaScoreForm.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCSofaScoreForm.ArrangeMCSofaScoreForm(Nil);
    frmMCSofaScoreForm.ShowModal;
  finally
    frmMCSofaScoreForm.Free;
  end;
end;

procedure TfrmPatientList.Button16Click(Sender: TObject);  // ???
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_EURO_SCORE', 'MC_EURO_SCORE_ID_SEQ');

  frmMCEuroScoreForm := TfrmMCEuroScoreForm.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCEuroScoreForm.ArrangeMCEuroScoreForm(Nil);
    frmMCEuroScoreForm.ShowModal;
  finally
    frmMCEuroScoreForm.Free;
  end;
end;

procedure TfrmPatientList.Button17Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_ANESTHESIA_EVAL ', 'MC_ANESTHESIA_EVAL_ID_SEQ');

  frmMCAnesthesiaEvaluation := TfrmMCAnesthesiaEvaluation.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCAnesthesiaEvaluation.ArrangeAnesthesiaEvaluation(Nil);
    frmMCAnesthesiaEvaluation.ShowModal;
  finally
    frmMCAnesthesiaEvaluation.Free;
  end;
end;

procedure TfrmPatientList.Button18Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CONSTAINT_EVA', 'MC_CONSTAINT_EVA_ID_SEQ');

  frmMCConstraintEvaluation := TfrmMCConstraintEvaluation.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCConstraintEvaluation.ArrangeConstraintEvaluationForm(Nil);
    frmMCConstraintEvaluation.ShowModal;
  finally
    frmMCConstraintEvaluation.Free;
  end;
end;

procedure TfrmPatientList.Button19Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_VTE_RISK_IN_PREGNANCY', 'MC_VTE_RSK_IN_PREGNANCY_ID_SEQ');

  frmVTERiskAssasementInPregnancy := TfrmVTERiskAssasementInPregnancy.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmVTERiskAssasementInPregnancy.ArrangeVteRiskAssasementInPregnancyForm(Nil);
    frmVTERiskAssasementInPregnancy.ShowModal;
  finally
    frmVTERiskAssasementInPregnancy.Free;
  end;
end;

procedure TfrmPatientList.Button1Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRES_SORE_RISK_BRADEN', 'MC_PRES_SOR_RISK_BRD_ID_SEQ');

  frmMCCatheterMaterialTrace := TfrmMCCatheterMaterialTrace.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCCatheterMaterialTrace.ArrangeCatheterMatTrace(Nil);
    frmMCCatheterMaterialTrace.ShowModal;
  finally
    frmMCCatheterMaterialTrace.Free;
  end;
end;

procedure TfrmPatientList.Button20Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_GLASGOW_SCALE', 'MC_GLASGOW_SCALE_ID_SEQ');

  frmMCGlasgowScale := TfrmMCGlasgowScale.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCGlasgowScale.ArrangeMCGlasgowScale(Nil);
    frmMCGlasgowScale.ShowModal;
  finally
    frmMCGlasgowScale.Free;
  end;
end;

procedure TfrmPatientList.Button21Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_SNAPII_SCORES', 'MC_SNAPII_SCORES_ID_SEQ');

  frmMCSnapIIScore := TfrmMCSnapIIScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCSnapIIScore.ArrangeSnapIIScore(Nil,226);  //212-213-226
    frmMCSnapIIScore.ShowModal;
  finally
    frmMCSnapIIScore.Free;
  end;
end;

procedure TfrmPatientList.Button22Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_APACHEII', 'MC_APACHEII_ID_SEQ');

  frmMCApacheII := TfrmMCApacheII.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCApacheII.ArrangeApacheIIForm(Nil);
    frmMCApacheII.ShowModal;
  finally
    frmMCApacheII.Free;
  end;
end;

procedure TfrmPatientList.Button23Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_DIETITIAN_EVAL', 'MC_DIETITIAN_EVAL_ID_SEQ');

  frmDietitianEvaluation := TfrmDietitianEvaluation.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmDietitianEvaluation.ArrangeDietitianEvaluationForm(Nil);
    frmDietitianEvaluation.ShowModal;
  finally
    frmDietitianEvaluation.Free;
  end;
end;

procedure TfrmPatientList.Button24Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_SAFE_BIRTH_CONTROL', 'MC_SAFE_BIRTH_CONTROL_ID_SEQ');

  frmMCSafeBirthControl := TfrmMCSafeBirthControl.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCSafeBirthControl.ArrangeMCSafeBirthControl(Nil);
    frmMCSafeBirthControl.ShowModal;
  finally
    frmMCSafeBirthControl.Free;
  end;
end;

procedure TfrmPatientList.Button25Click(Sender: TObject);  //???
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRISM_SCORE', 'MC_PRISM_SCORE_ID_SEQ');

  frmMCPrismScore := TfrmMCPrismScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCPrismScore.ArrangeMCPrismScore(Nil);
    frmMCPrismScore.ShowModal;
  finally
    frmMCPrismScore.Free;
  end;
end;

procedure TfrmPatientList.Button26Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_GLASGOW_SCALE', 'MC_GLASGOW_SCALE_ID_SEQ');

  frmMCGlasgowScale := TfrmMCGlasgowScale.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCGlasgowScale.ArrangeMCGlasgowScale(Nil, 223);
    frmMCGlasgowScale.ShowModal;
  finally
    frmMCGlasgowScale.Free;
  end;
end;

procedure TfrmPatientList.Button27Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_SNAPII_SCORES', 'MC_SNAPII_SCORES_ID_SEQ');

  frmMCSnapIIScore := TfrmMCSnapIIScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCSnapIIScore.ArrangeSnapIIScore(Nil,223);  //212-213-226
    frmMCSnapIIScore.ShowModal;
  finally
    frmMCSnapIIScore.Free;
  end;
end;

procedure TfrmPatientList.Button28Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_APACHEII', 'MC_APACHEII_ID_SEQ');

  frmMCApacheII := TfrmMCApacheII.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCApacheII.ArrangeApacheIIForm(Nil, 223);
    frmMCApacheII.ShowModal;
  finally
    frmMCApacheII.Free;
  end;
end;

procedure TfrmPatientList.Button29Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRISM_SCORE', 'MC_PRISM_SCORE_ID_SEQ');

  frmMCPrismScore := TfrmMCPrismScore.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCPrismScore.ArrangeMCPrismScore(Nil, 223);
    frmMCPrismScore.ShowModal;
  finally
    frmMCPrismScore.Free;
  end;
end;

procedure TfrmPatientList.Button2Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2550,
     'MC_PRES_SORE_RISK_BRADEN', 'MC_PRES_SOR_RISK_BRD_ID_SEQ');

  frmMCBasiYBraden  := TfrmMCBasiYBraden.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCBasiYBraden.ArrangeBradenForm('BQ',nil);
    frmMCBasiYBraden.ShowModal;
  finally
    frmMCBasiYBraden.Free;
  end;
end;

procedure TfrmPatientList.Button30Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_SOFA_SCORE', 'MC_SOFA_SCORE_ID_SEQ');

  frmMCSofaScoreForm := TfrmMCSofaScoreForm.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCSofaScoreForm.ArrangeMCSofaScoreForm(Nil,223);
    frmMCSofaScoreForm.ShowModal;
  finally
    frmMCSofaScoreForm.Free;
  end;
end;

procedure TfrmPatientList.Button31Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_APACHEII', 'MC_APACHEII_ID_SEQ');

  frmMCPartograph := TfrmMCPartograph.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCPartograph.ArrangePartographForm(Nil);
    frmMCPartograph.ShowModal;
  finally
    frmMCPartograph.Free;
  end;
end;

procedure TfrmPatientList.Button32Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PELOD_SCORE', 'MC_PELOD_SCORE_ID_SEQ ');

  frmMCPelodScore := TfrmMCPelodScore.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCPelodScore.ArrangePelodSkore(Nil);
    frmMCPelodScore.ShowModal;
  finally
    frmMCPelodScore.Free;
  end;
end;

procedure TfrmPatientList.Button33Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_TOLLNER_SEPSIS', 'MC_TOLLNER_SEPSIS_ID_SEQ');

	frmMCTollnerSepsis  := TfrmMCTollnerSepsis.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCTollnerSepsis.ArrangeTollnerSepsisForm(nil);
    frmMCTollnerSepsis.ShowModal;
  finally
    frmMCTollnerSepsis.Free;
  end;
end;

procedure TfrmPatientList.Button34Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_TOLLNER_SEPSIS', 'MC_TOLLNER_SEPSIS_ID_SEQ');

	frmMCVTERiskFaktorEvaluation  := TfrmMCVTERiskFaktorEvaluation.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCVTERiskFaktorEvaluation.ArrangeMCVTERiskFaktorEvaluationForm(nil);
    frmMCVTERiskFaktorEvaluation.ShowModal;
  finally
    frmMCVTERiskFaktorEvaluation.Free;
  end;
end;

procedure TfrmPatientList.Button35Click(Sender: TObject);
begin
	gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_STRONG_KIDS_NUTR', 'MC_STRONG_KIDS_NUTR_ID_SEQ');

  frmMCStrongKidsNutritionAssessment := TfrmMCStrongKidsNutritionAssessment.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCStrongKidsNutritionAssessment.ArrangeMCStrongKidsNutritionAssessment(nil);
    frmMCStrongKidsNutritionAssessment.ShowModal;
  finally
    frmMCStrongKidsNutritionAssessment.Free;
  end;
end;

procedure TfrmPatientList.Button36Click(Sender: TObject);
begin
	gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_SAFE_SUR_CON_FRM', 'MC_SAFE_SUR_CON_FRMID_SEQ');

  frmMCSafeSurgeryControl := TfrmMCSafeSurgeryControl.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCSafeSurgeryControl.ArrangeMCSafeSurgeryControl(nil);
    frmMCSafeSurgeryControl.ShowModal;
  finally
    frmMCStrongKidsNutritionAssessment.Free;
  end;
end;

procedure TfrmPatientList.Button37Click(Sender: TObject);
begin
	gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PAT_PRE_POST_PREP', 'MC_PAT_PRE_POST_PREPID_SEQ');

  frmMCSurgeryPreAndPostOpPreparation := TfrmMCSurgeryPreAndPostOpPreparation.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCSurgeryPreAndPostOpPreparation.ArrangeMCSurgeryPreAndPostOpPreparation(nil);
    frmMCSurgeryPreAndPostOpPreparation.ShowModal;
  finally
    frmMCSurgeryPreAndPostOpPreparation.Free;
  end;
end;

procedure TfrmPatientList.Button38Click(Sender: TObject);
begin
	gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_EMA_SCORE', 'MC_EMA_SCORE_ID_SEQ');

  frmEmaSepsisScore := TfrmEmaSepsisScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmEmaSepsisScore.ArrangeEmaSepsisScoreForm(nil);
    frmEmaSepsisScore.ShowModal;
  finally
    frmEmaSepsisScore.Free;
  end;
end;

procedure TfrmPatientList.Button39Click(Sender: TObject);
begin
	gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PEDIATRIC_T_SCORE', 'MC_PEDIATRIC_T_SCORE_ID_SEQ');

  frmPediatricTraumaScore := TfrmPediatricTraumaScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmPediatricTraumaScore.ArrangePediatricTraumaScoreForm(nil);
    frmPediatricTraumaScore.ShowModal;
  finally
    frmPediatricTraumaScore.Free;
  end;
end;

procedure TfrmPatientList.Button3Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRES_SORE_RISK_BRADEN', 'MC_PRES_SOR_RISK_BRD_ID_SEQ');

  frmMCWoudnAsses  := TfrmMCWoudnAsses.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCWoudnAsses.ArrangeWoundAssForm(nil);
    frmMCWoudnAsses.ShowModal;
  finally
    frmMCWoudnAsses.Free;
  end;
end;

procedure TfrmPatientList.Button40Click(Sender: TObject);
begin
 gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_WATERLOW_SCORE', 'MC_WATERLOW_SCORE_SEQ');

  frmMCWaterlowScore := TfrmMCWaterlowScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCWaterlowScore.ArrangeWaterlowScore(nil);
    frmMCWaterlowScore.ShowModal;
  finally
    frmMCWaterlowScore.Free;
  end;
end;

procedure TfrmPatientList.Button41Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_NEW_BORN_NRS', 'MC_NEW_BORN_NRS_ID_SEQ');

  frmNewBornNutrition  := TfrmNewBornNutrition.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmNewBornNutrition.ArrangeNewBornNutrition(nil);
    frmNewBornNutrition.ShowModal;
  finally
    frmNewBornNutrition.Free;
  end;
end;

procedure TfrmPatientList.Button42Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CRITICAL_CASE_ALGORITHM', 'MC_CRITICAL_CASE_ALGORITHM_SEQ');

  frmMCCriticalCaseFollowUpForm := TfrmMCCriticalCaseFollowUpForm.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCCriticalCaseFollowUpForm.ArrangeMCCriticalCaseFollowUpForm(nil);
    frmMCCriticalCaseFollowUpForm.ShowModal;
  finally
    frmMCCriticalCaseFollowUpForm.Free;
  end;
end;

//43. buton
procedure TfrmPatientList.Button43Click(Sender: TObject);
begin
    gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_NEW_BORN_CRIB', 'MC_NEW_BORN_CRIB_SEQ');

  frmMCNewBornCRIB := TfrmMCNewBornCRIB.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCNewBornCRIB.ArrangeNewBornCrib(nil);
    frmMCNewBornCRIB.ShowModal;
  finally
    frmMCNewBornCRIB.Free;
  end;
end;

//44. buton
procedure TfrmPatientList.Button44Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_NORTH_SKIN_ASS', 'MC_NORTH_SKIN_ASS_SEQ');

  frmMCNorthamptonSkinAssessment := TfrmMCNorthamptonSkinAssessment.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCNorthamptonSkinAssessment.ArrangeNorthamptonSkinAssessment(nil);
    frmMCNorthamptonSkinAssessment.ShowModal;
  finally
    frmMCNorthamptonSkinAssessment.Free;
  end;
end;

procedure TfrmPatientList.Button46Click(Sender: TObject);
begin
   frmMCPatientInformation  := TfrmMCPatientInformation.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCPatientInformation.ArrangePatientInformation(OracleDataSet1.FieldByName('ID').AsInteger);
    frmMCPatientInformation.ShowModal;
  finally
    frmMCPatientInformation.Free;
  end;
end;

procedure TfrmPatientList.Button47Click(Sender: TObject);
begin
  frmMCPatientListOrder := TfrmMCPatientListOrder.Create(nil);
  try
    frmMCPatientListOrder.ArrangePatientListOrder;
    frmMCPatientListOrder.ShowModal;
  finally
    frmMCPatientListOrder.Free;
  end;
end;
// 48. buton
procedure TfrmPatientList.Button48Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_DIABETES_NURSE_FORM', 'MC_DIABETES_NURSE_FORM_SEQ');
frmMCDiabetesNurseForm := TfrmMCDiabetesNurseForm.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCDiabetesNurseForm.ArrangeDiabetesNurseForm(nil);
    frmMCDiabetesNurseForm.ShowModal;
  finally
    frmMCDiabetesNurseForm.Free;
  end;
end;

procedure TfrmPatientList.Button49Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PAT_INFODENEME', 'MC_PAT_INFODENEME_ID_SEQ');

  frmMCPatientInfoForm:= TfrmMCPatientInfoForm.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCPatientInfoForm.ArrangePatientInfoForm(nil);
    frmMCPatientInfoForm.ShowModal;
  finally
    frmMCPatientInfoForm.Free;
  end;
end;

procedure TfrmPatientList.Button51Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CAPRINI_RISK_ASSESSMENT', 'MC_CS_ASSESSMENT_ID_SEQ');

  frmMCCapriniRiskAssessment := TfrmMCCapriniRiskAssessment.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCCapriniRiskAssessment.ArrangeMCCapriniRiskAssessment(nil);
    frmMCCapriniRiskAssessment.ShowModal;
  finally
    frmMCCapriniRiskAssessment.Free;
  end;
end;

procedure TfrmPatientList.Button52Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_IMPROVE_BLEEDING_RAST', 'MC_IMPV_BLEEDING_RAST_ID_SEQ');

  frmMCImproveBleedingRiskAssessment := TfrmMCImproveBleedingRiskAssessment.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCImproveBleedingRiskAssessment.ArrangeMCImproveBleedingRiskAssessment(nil);
    frmMCImproveBleedingRiskAssessment.ShowModal;
  finally
    frmMCImproveBleedingRiskAssessment.Free;
  end;
end;

procedure TfrmPatientList.Button53Click(Sender: TObject);
begin
   gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_IMPROVE_VTE_RISK_ASSESSMENT', 'MC_IMP_VTE_RAST_ID_SEQ');

  frmImproveVTERiskAssessment := TfrmImproveVTERiskAssessment.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmImproveVTERiskAssessment.ArrangeMCImproveVTERiskAssessment(nil);
    frmImproveVTERiskAssessment.ShowModal;
  finally
    frmImproveVTERiskAssessment.Free;
  end;
end;

procedure TfrmPatientList.Button54Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_NIHSS_SCORE', 'MC_NIHSS_SCORE_ID_SEQ');

  frmMCNihssScore := TfrmMCNihssScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCNihssScore.ArrangeNihssScore(nil);
    frmMCNihssScore.ShowModal;
  finally
    frmMCNihssScore.Free;
  end;

end;

procedure TfrmPatientList.Button55Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_MODIFIED_SCORE', 'MC_MODIFIED_SCORE_ID_SEQ');

  frmMCModifiedScore:= TfrmMCModifiedScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCModifiedScore.ArrangeModifiedScore(nil);
    frmMCModifiedScore.ShowModal;
  finally
    frmMCModifiedScore.Free;
  end;
end;

procedure TfrmPatientList.Button56Click(Sender: TObject);
begin
   gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_ACUTE_GVHD_SCORE', 'MC_ACUTE_GVHD_SCORE_ID_SEQ');

  frmMCAcuteGVHDScore:= TfrmMCAcuteGVHDScore.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCAcuteGVHDScore.ArrangeAcuteGVHDScore(nil);
    frmMCAcuteGVHDScore.ShowModal;
  finally
    frmMCAcuteGVHDScore.Free;
  end;
end;

procedure TfrmPatientList.Button57Click(Sender: TObject);
begin
  RunningAppInfo(1,'Bizmed.exe');
  exit;
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_BREASTFEEDING_OBSERVE_FORM', 'MC_BREASTFEEDING_ID_SEQ');

  frmMCBreastFeeding  := TfrmMCBreastFeeding.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCBreastFeeding.ArrangeMCBreastFeeding(nil);
    frmMCBreastFeeding.ShowModal;
  finally
    frmMCBreastFeeding.Free;
  end;
end;

procedure TfrmPatientList.Button4Click(Sender: TObject);
begin
  RunningAppInfo(1,'Bizmed.exe');
  exit;
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRES_SORE_RISK_BRADEN', 'MC_PRES_SOR_RISK_BRD_ID_SEQ');

  frmNewBornNutrition  := TfrmNewBornNutrition.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmNewBornNutrition.ArrangeNewBornNutrition(nil);
    frmNewBornNutrition.ShowModal;
  finally
    frmNewBornNutrition.Free;
  end;
end;

procedure TfrmPatientList.Button50Click(Sender: TObject);
begin
   gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_EPIKRIZ_RECORDS', 'MC_EPIKRIZ_ID_SEQ');

  frmMCEpicrisisCard  := TfrmMCEpicrisisCard.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCEpicrisisCard.ArrangeEpicrisisCard(nil);
    frmMCEpicrisisCard.ShowModal;
  finally
    frmMCEpicrisisCard.Free;
  end;
end;

procedure TfrmPatientList.Button5Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRES_SORE_RISK_BRADEN', 'MC_PRES_SOR_RISK_BRD_ID_SEQ');

  frmMCFluidBalance  := TfrmMCFluidBalance.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCFluidBalance.ArrangeFluidBalanceForm(nil);
    frmMCFluidBalance.ShowModal;
  finally
    frmMCFluidBalance.Free;
  end;
end;

procedure TfrmPatientList.Button6Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_PRES_SORE_RISK_BRADEN', 'MC_PRES_SOR_RISK_BRD_ID_SEQ');

  frmMCPainAssesmentScale := TfrmMCPainAssesmentScale.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCPainAssesmentScale.ArrangePainAssForm(Nil);
    frmMCPainAssesmentScale.ShowModal;
  finally
    frmMCPainAssesmentScale.Free;
  end;
end;

procedure TfrmPatientList.Button7Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_FALL_RISK_ITAKI', 'MC_FALL_RISK_ITAKI_ID_SEQ');

  frmMCFallRiskItaki:= TfrmMCFallRiskItaki.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCFallRiskItaki.ArrangeFallRiskItakiForm(Nil);
    frmMCFallRiskItaki.ShowModal;
  finally
    frmMCFallRiskItaki.Free;
  end;
end;

procedure TfrmPatientList.Button8Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_FALL_RISK_HARIZMI', 'MC_FALL_RISK_HARIZMI_ID_SEQ');

  frmMCFallRiskHarizmi := TfrmMCFallRiskHarizmi.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCFallRiskHarizmi.ArrangeFallRiskHarizmiForm(nil);
    frmMCFallRiskHarizmi.ShowModal;
  finally
    frmMCFallRiskHarizmi.Free;
  end;
end;

procedure TfrmPatientList.Button9Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_ADULT_PATIENT_DIAGNOSIS', 'MC_ADULT_PATIENT_DIAG_ID_SEQ');

  frmMCAdultPatientDiagnosis:= TfrmMCAdultPatientDiagnosis.Create(Application, gvPatientInfo, nil, false, ifmNone, ivmNormal);
  try
    frmMCAdultPatientDiagnosis.ArrangeAdultPatientDiagnosisForm(nil);
    frmMCAdultPatientDiagnosis.ShowModal;
  finally
    frmMCAdultPatientDiagnosis.Free;
  end;
end;

procedure TfrmPatientList.byzButtonEdit1Enter(Sender: TObject);
begin
 byzButtonEdit1.Properties.ReadOnly := true;
end;

procedure TfrmPatientList.byzButtonEdit1Exit(Sender: TObject);
begin
  byzButtonEdit1.Properties.ReadOnly := false;

end;

procedure TfrmPatientList.cxButton1Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_CONSTAINT_EVA', 'MC_CONSTAINT_EVA_ID_SEQ');

  frmbyzMCBaseSamples := TfrmbyzMCBaseSamples.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmbyzMCBaseSamples.ArrangeBaseSampleForm(Nil);
    frmbyzMCBaseSamples.ShowModal;
  finally
    frmbyzMCBaseSamples.Free;
  end;
end;

procedure TfrmPatientList.cxButton3Click(Sender: TObject);
begin
  gvPatientInfo.BConOfMedId := DmGeneral.CreateNewMedCard(0, OracleDataSet1.FieldByName('UPN').AsInteger,
    OracleDataSet1.FieldByName('ID').AsInteger, OracleDataSet1.FieldByName('DR_ID').AsInteger,
     OracleDataSet1.FieldByName('DEPT_ID').AsIntegER, 2323,
     'MC_ORGAN_FAILURE', 'MC_ORGAN_FAILURE_ID_SEQ');

  frmMCOrganFailure := TfrmMCOrganFailure.Create(Application,gvPatientInfo, nil,false,ifmNone,ivmNormal);
  try
    frmMCOrganFailure.ArrangeOrganFailure(nil);
    frmMCOrganFailure.ShowModal;
  finally
    frmMCOrganFailure.Free;
  end;
end;

procedure TfrmPatientList.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  with gvPatientInfo do
  begin
    BPatName := OracleDataSet1.FieldByName('NAME').AsString;
    BPatSurName:= OracleDataSet1.FieldByName('SURNAME').AsString;
    BPatFatName:= OracleDataSet1.FieldByName('FATHER_NAME').AsString;
    BPatUPN := OracleDataSet1.FieldByName('UPN').AsInteger;
    BPatProtNo := OracleDataSet1.FieldByName('PROT_ID').AsInteger;
    BPatBirthDate := OracleDataSet1.FieldByName('BIRTH_DATE').AsDateTime;
    BPatAge:= OracleDataSet1.FieldByName('PAT_AGE').AsString;
    BPatGender:= OracleDataSet1.FieldByName('SEXUALITY').AsString;
    BPatPtyId := OracleDataSet1.FieldByName('PTY_ID').AsInteger;
    BPatTransDr:= OracleDataSet1.FieldByName('DR_NAME').AsString;
    BPatTransAss:= OracleDataSet1.FieldByName('ASS_NAME').AsString;
    BPatTransSecAss:= OracleDataSet1.FieldByName('SEC_ASS_NAME').AsString;
    BPatIsPregnant:= OracleDataSet1.FieldByName('PREGNANT').AsString;
    BPatWeight:= OracleDataSet1.FieldByName('PAT_WEIGHT').AsFloat;
    BPatLength:= OracleDataSet1.FieldByName('PAT_LENGTH').AsFloat;
    BPatTransId:= OracleDataSet1.FieldByName('ID').AsInteger;
    BPatTCNo:= OracleDataSet1.FieldByName('IDENTITY_NO').AsFloat;
    BNewBabyRecord:= OracleDataSet1.FieldByName('IS_BABY_REC').AsString='1';
    BPatPassportNo:= OracleDataSet1.FieldByName('PASSPORT_NO').AsString;
    BICDCodes:= OracleDataSet1.FieldByName('PAT_ICDS').AsString;
  end;
end;

procedure TfrmPatientList.dxNavBar1LinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
  if ALink.Group.Tag = 1 then //Tibbi kart ise
  begin
    if ALink.Item.Tag = 2550 then
     btnBraden.Click;
  end;
   
end;

procedure TfrmPatientList.FormCreate(Sender: TObject);
begin
 OracleDataSet1.Open;
 dmMedCard.CreateMedFormMenus(dxNavBar1, bsiMedForms);
 gvGenOracleSession := dmMain.OraSession;
end;

procedure TfrmPatientList.Panel1Click(Sender: TObject);
begin

end;

//procedure TfrmPatientList.CreateNurseMenus();
//var
//  lvNavBarGr: TdxNavBarGroup;
//  lvNavBarItem: TdxNavBarItem;
//  lvOraNurseMainMenus, lvOraNurseMenuItems: TOracleDataset;
//begin
//  lvOraNurseMainMenus := GetNewOracleDataSet();
//  lvOraNurseMainMenus.SQL.Text :=
//    'SELECT NMM.*' + #13#10 +
//    ' FROM NURSE_MAIN_MENUS NMM' + #13#10 +
//    'WHERE NMM.IS_ACTIVE = 1' + #13#10 +
//    'ORDER BY NMM.ORDER_NUMBER, NMM.ID';
//
//  lvOraNurseMenuItems := GetNewOracleDataSet();
//  lvOraNurseMenuItems.SQL.Text :=
//    'SELECT NMO.ID,NVL(NMO.CAPTION,O.NAME) AS NAME, --NMM.NAME AS GROUP_NAME,' + #13#10 +
//    '       NMO.OR_ID, O.LINKED_OBJECT_ID' + #13#10 +
//    '  FROM NURSE_MENU_OBJECTS NMO' + #13#10 +
//    '  /*JOIN NURSE_MAIN_MENUS NMM' + #13#10 +
//    '  ON NMM.ID = NMO.NMM_ID' + #13#10 +
//    '     AND NMM.IS_ACTIVE = 1  */' + #13#10 +
//    '  JOIN OBJECT_RECORDS O' + #13#10 +
//    '   ON O.ID = NMO.OR_ID' + #13#10 +
//    '  AND USER_HAS_OTHER_PRIV(O.ID, :UOPM_ID, :USER_ID) IS NOT NULL' + #13#10 +
//    '  AND O.IS_ACTIVE = ''1''' + #13#10 +
//    ' WHERE NMO.IS_ACTIVE = 1' + #13#10 +
//    '    AND NMO.NMM_ID = :NMM_ID' + #13#10 +
//    ' ORDER BY --NMM.ORDER_NUMBER,' + #13#10 +
//    '    NMO.ORDER_NUMBER, NVL(NMO.CAPTION,O.NAME)';
//  lvOraNurseMenuItems.DeclareVariable('NMM_ID', otInteger);
//  lvOraNurseMenuItems.DeclareVariable('UOPM_ID', otInteger);
//  lvOraNurseMenuItems.DeclareVariable('USER_ID', otInteger);
//
//  try
//    lvOraNurseMainMenus.Close;
//    lvOraNurseMainMenus.Open;
//    lvOraNurseMainMenus.First;
//    while not lvOraNurseMainMenus.Eof do
//    begin
//      lvOraNurseMenuItems.Close;
//      lvOraNurseMenuItems.SetVariable('NMM_ID', lvOraNurseMainMenus.FieldByName('ID').AsInteger);
//      lvOraNurseMenuItems.SetVariable('UOPM_ID', 1);
//      lvOraNurseMenuItems.SetVariable('USER_ID', UserId);
//      lvOraNurseMenuItems.Open;
//      lvOraNurseMenuItems.First;
//
//      while not lvOraNurseMenuItems.Eof do
//      begin
//        if lvOraNurseMenuItems.RecNo = 1 then
//        begin
//          lvNavBarGr := dxNavBar1.Groups.Add;
//          lvNavBarGr.Caption := lvOraNurseMainMenus.FieldByName('NAME').AsString;
//          lvNavBarGr.Tag := lvOraNurseMainMenus.FieldByName('ID').AsInteger
//        end;
//        lvNavBarItem := dxNavBar1.Items.Add;
//        lvNavBarItem.Caption := lvOraNurseMenuItems.FieldByName('NAME').AsString;
//        lvNavBarItem.Tag := lvOraNurseMenuItems.FieldByName('OR_ID').AsInteger;
//
//        lvNavBarGr.InsertLink(lvNavBarItem,lvNavBarGr.LinkCount);
//        lvOraNurseMenuItems.Next;
//      end;
//
//      lvOraNurseMainMenus.Next;
//    end;
//  finally
//    lvOraNurseMainMenus.Free;
//    lvOraNurseMenuItems.Free;
//  end;
//end;

end.
