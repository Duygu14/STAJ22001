unit DtMdMain;

interface

uses
  System.SysUtils, System.Classes, Oracle;

type
  TdmMain = class(TDataModule)
    OraSession: TOracleSession;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  OraSession.Connected := TRUE;
end;

procedure TdmMain.DataModuleDestroy(Sender: TObject);
begin
  OraSession.Connected := FALSE;
end;

end.
