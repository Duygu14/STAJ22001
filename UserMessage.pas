unit UserMessage;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMemo, ExtCtrls, cxRichEdit, cxImage, cxGraphics,
  cxLookAndFeels,  cxLabel, msgConst, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  byzTheBezier;

type
  TfrmUserMessage = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOk: TcxButton;
    btnYes: TcxButton;
    btnNo: TcxButton;
    reMsg: TcxRichEdit;
    imQua: TcxImage;
    imWar: TcxImage;
    Timer1: TTimer;
    pnlTimerSeq: TPanel;
    lblOtoClose: TcxLabel;
    cbRememberSelect: TcxCheckBox;
    btnExtendTime: TcxButton;
    icbTime: TcxImageComboBox;
    lblTimeCaption: TcxLabel;
    procedure FormResize(Sender: TObject);
    procedure cxRichEdit1PropertiesResizeRequest(Sender: TObject;
      Rect: TRect);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
    procedure reMsgEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnExtendTimeClick(Sender: TObject);
  private
    { Private declarations }
    //lgvreMsgHeight : Smallint;
    //lgvreMsgWidth : Smallint;
    lgvDefIntVal : Smallint;
    //lgvFontColor : TColor;

  public
    { Public declarations }
    lgvTimerSeq : Smallint;
    procedure SetAutoClose(pIntrvlVal :Integer);
  end;

var
  frmUserMessage: TfrmUserMessage;

implementation
 uses CommonConf;
{$R *.dfm}

procedure TfrmUserMessage.FormResize(Sender: TObject);
begin
  if Height >= 600 then
    reMsg.Properties.ScrollBars := ssVertical;
end;

procedure TfrmUserMessage.btnExtendTimeClick(Sender: TObject);
begin
  if Timer1.Tag = 1 then
    SetAutoClose(120);
end;

procedure TfrmUserMessage.cxRichEdit1PropertiesResizeRequest(
  Sender: TObject; Rect: TRect);
begin
  { with (Sender as TcxRichEdit) do
   begin
     BoundsRect := Rect;
     Width := Width + 1;
     reMsg.Height := reMsg.Height + 20;
     Self.Height := Self.Height - (lgvreMsgHeight - reMsg.Height);
     Self.Width := Self.Width - (lgvreMsgWidth -  reMsg.Width);
   end;}
end;

procedure TfrmUserMessage.FormCreate(Sender: TObject);
begin
  Hide;
  //lgvreMsgHeight := reMsg.Height;
  //lgvreMsgWidth := reMsg.Width;
  imQua.Left := 5;
  imQua.Top := 3;
  imWar.Left := 5;
  imWar.Top := 3;
  lgvDefIntVal := 30;//30 sn den geri sayim baslatmak icin
end;

procedure TfrmUserMessage.Timer1Timer(Sender: TObject);
begin
  lgvTimerSeq := lgvTimerSeq - 1;
  pnlTimerSeq.Caption := IntToStr(lgvTimerSeq);
  //normal geri sayim islemiyse
  if Timer1.Tag = 0 then
  begin
    if lgvTimerSeq = 0 then
    begin
      //pnlTimerSeq.Visible := false;
      //Timer1.Enabled := false;
      btnYes.Enabled := true;
      btnOk.Enabled := true;
      btnNo.Enabled := true;
      btnNo.TabStop := true;

      Timer1.Tag := 1;
      //normal geri sayim bittiginde formun acik kalma suresi baslar
      SetAutoClose(lgvDefIntVal);
    end;
  end
  else
  begin
    if lgvTimerSeq = 0 then
    begin
      pnlTimerSeq.Visible := false;
      Timer1.Enabled := false;
      if btnYes.Visible then
        btnYes.Click
      else if btnOk.Visible then
        btnOk.Click;
    end;
  end;
end;

procedure TfrmUserMessage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Timer1.Enabled then
    Action := caNone;
end;

procedure TfrmUserMessage.FormShow(Sender: TObject);
begin
  Timer1.Enabled := false;

  if lgvTimerSeq > 0 then
    SetAutoClose(lgvTimerSeq)
  else SetAutoClose(lgvDefIntVal);

  if icbTime.ItemIndex = -1 then
    icbTime.ItemIndex := icbTime.Properties.Items.Count - 1;
end;

procedure TfrmUserMessage.SetAutoClose(pIntrvlVal :Integer);
begin
  Timer1.Enabled := false;
  lgvTimerSeq := pIntrvlVal;
  pnlTimerSeq.Caption := IntToStr(lgvTimerSeq);
  pnlTimerSeq.Font.Color := clRed;
  lblOtoClose.visible := true;
  btnExtendTime.visible := true;
  pnlTimerSeq.visible := true;
  Timer1.Enabled := true;
end;

procedure TfrmUserMessage.btnNoClick(Sender: TObject);
begin
  Timer1.enabled := false;
  lgvTimerSeq := 0;
end;

procedure TfrmUserMessage.reMsgEnter(Sender: TObject);
begin
  reMsg.StyleFocused.Font.Color := clBlack;
end;

procedure TfrmUserMessage.FormActivate(Sender: TObject);
begin
  lblOtoClose.Caption := msgUserMessage001;
  btnExtendTime.Caption := msgUserMessage002;
  //ikinci monitor olanlarda , bazen diger monitore gittigi icin birinci monitorde gorunmuyordu.
//  Left := Round(gvMainMonitor.Left + (gvMainMonitor.Width - Width)/2);
//  Top := Round(gvMainMonitor.Top + (gvMainMonitor.Height - Height)/2);
  Left := Round(Application.MainForm.Left + (Application.MainForm.Width - Width)/2);
  Top := Round(Application.MainForm.Top + (Application.MainForm.Height - Height)/2);
end;

end.
