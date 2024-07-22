unit byzListCard;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, ActnList,
  DsgnblFrm,DB, OracleData, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, byzButtonEdit, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, cxLookAndFeels,
   System.Actions;

type
  TfrmbyzListCard = class(TDsgnblFrm)
    DataSource1: TDataSource;
    OracleDataSet1: TOracleDataSet;
    ActionList1: TActionList;
    pnlBottom: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    pnlUp: TPanel;
    byzButtonEdit1: TbyzButtonEdit;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure OracleDataSet1AfterOpen(DataSet: TDataSet);
    procedure OracleDataSet1AfterScroll(DataSet: TDataSet);
    procedure OracleDataSet1BeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    lgvListCardIdVal : Integer;
  end;

var
  frmbyzListCard: TfrmbyzListCard;

implementation

uses DtMdMain, DtMdGeneral;

{$R *.dfm}

procedure TfrmbyzListCard.btnSaveClick(Sender: TObject);
begin
  if OracleDataSet1.State <> dsBrowse then
  begin
    if OracleDataSet1.State = dsInsert then
      lgvListCardIdVal := OracleDataSet1.FieldByName('ID').AsInteger
    else lgvListCardIdVal := 0;
    OracleDataSet1.Post;
  end;
  Self.ModalResult := MrOk;
  close;              
end;

procedure TfrmbyzListCard.btnCancelClick(Sender: TObject);
begin
  lgvListCardIdVal := 0;
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Cancel;
  Self.ModalResult := MrCancel;
  close;
end;

procedure TfrmbyzListCard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//
end;

procedure TfrmbyzListCard.FormCreate(Sender: TObject);
begin
  lgvListCardIdVal := 0;
  if Position = poDefaultPosOnly then
    Position := poMainFormCenter;
end;

procedure TfrmbyzListCard.FormDestroy(Sender: TObject);
begin
//
end;

procedure TfrmbyzListCard.FormShow(Sender: TObject);
begin
//
end;

procedure TfrmbyzListCard.FormActivate(Sender: TObject);
begin
//
end;

procedure TfrmbyzListCard.OracleDataSet1AfterOpen(DataSet: TDataSet);
var
  i: SmallInt;
begin
  //Bazi kartlarda Oncrate set edilmedigi icin burayada eklendi
  if Position = poDefaultPosOnly then
    Position := poMainFormCenter;
  //FindbyzBtnTextValue(Self, DataSet);
  if DataSet.Name = OracleDataSet1.Name then
    for i := 0 to ComponentCount-1 do
    begin
      if (Components[i] is TOracleDataset) then
        if (TOracleDataset(Components[i]) <> TOracleDataset(DataSet)) then
        begin
          TOracleDataset(Components[i]).Close;
          TOracleDataset(Components[i]).Open;
        end;
    end;

end;

procedure TfrmbyzListCard.OracleDataSet1AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmbyzListCard.OracleDataSet1BeforeOpen(DataSet: TDataSet);
begin
//
end;

end.
