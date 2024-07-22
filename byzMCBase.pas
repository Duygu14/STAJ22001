unit byzMCBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, DtMdIcons,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, Vcl.ExtCtrls, cxButtons, Vcl.StdCtrls, cxLabel, cxGroupBox,
  cxTextEdit, dxGDIPlusClasses, cxImage, cxMemo, byzBase, Vcl.AppEvnts,OracleData,
  Data.DB, CommonConf, DtMdMain, byzTheBezier, dxSkinsDefaultPainters;

type
  TfrmbyzMCBase = class(TfrmbyzBase)
    gbBaseTop: TcxGroupBox;
    pnlDiag: TPanel;
    cxLabel4: TcxLabel;
    mmDiag: TcxMemo;
    pnlGenLeft: TPanel;
    pnlPatientDetail: TPanel;
    Shape1: TShape;
    Shape3: TShape;
    Panel7: TPanel;
    cxLabel6: TcxLabel;
    lblDoctor: TcxLabel;
    Panel8: TPanel;
    lblAssCaption: TcxLabel;
    lblAss: TcxLabel;
    pnlIsPregnant: TPanel;
    cxLabel7: TcxLabel;
    cxImage1: TcxImage;
    Panel17: TPanel;
    cxLabel12: TcxLabel;
    lblSecAss: TcxLabel;
    Panel1: TPanel;
    lblLength: TcxLabel;
    cxLabel9: TcxLabel;
    Panel2: TPanel;
    lblWeight: TcxLabel;
    cxLabel11: TcxLabel;
    pnlPatientInfo: TPanel;
    Shape2: TShape;
    Shape12: TShape;
    shpFirst: TShape;
    Shape5: TShape;
    Shape11: TShape;
    lblPatName: TcxLabel;
    pnlProt: TPanel;
    cxLabel1: TcxLabel;
    teProt: TcxTextEdit;
    pnlPatInfoAge: TPanel;
    lblAge: TcxLabel;
    cxLabel3: TcxLabel;
    pnlPatInfoBirthDate: TPanel;
    lblBirth: TcxLabel;
    cxLabel5: TcxLabel;
    pnlPatInfoSexuality: TPanel;
    lblGender: TcxLabel;
    cxLabel8: TcxLabel;
    OracleDataSet1: TOracleDataSet;
    DataSource1: TDataSource;
    Shape4: TShape;
    Panel3: TPanel;
    cxLabel13: TcxLabel;
    teUPN: TcxTextEdit;
    OracleDataSet1Det: TOracleDataSet;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);override;
  private
    { Private declarations }

  public
    { Public declarations }
    lgvFrmOpenFromMedCard: Boolean;
  end;

var
  frmbyzMCBase: TfrmbyzMCBase;

implementation

{$R *.dfm}


procedure TfrmbyzMCBase.FormCreate(Sender: TObject);
begin
  inherited;
  with FBPatientInfo do
  begin
    lblPatName.Caption := BPatName+' '+BPatSurName;
//    BPatFatName: String;
    teUPN.EditValue := BPatUPN;
    teProt.EditValue := BPatProtNo;
    lblBirth.Caption := DateToStr(BPatBirthDate);
    lblAge.Caption := BPatAge;
    lblGender.Caption := BPatGender;
    lblDoctor.Caption := BPatTransDr;
    lblAss.Caption := BPatTransAss;
    lblSecAss.Caption := BPatTransSecAss;
//    BPatIsPregnant:String;
    lblWeight.Caption := FloatToStr(BPatWeight);
    lblLength.Caption := FloatToStr(BPatLength);
//    teProt. BPatTransId: Integer;
//    BPatTCNo: Double;
//    BNewBabyRecord: Boolean;
//    BPatPassportNo: String;
    mmDiag.Text := BICDCodes;
  end;
end;

end.
