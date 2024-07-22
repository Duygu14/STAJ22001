unit DtMdIcons;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics;

type
  TDmIcons = class(TDataModule)
    ilMainMedCards24x24: TcxImageList;
    ilPatMonitoring: TcxImageList;
    ilOrder: TcxImageList;
    ilDoctorProcessInPat: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmIcons: TDmIcons;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
