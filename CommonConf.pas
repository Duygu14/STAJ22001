unit CommonConf;

interface
uses OracleData, Oracle, DtMdMain, SysUtils, Dialogs, Controls, System.UITypes,
UserMessage, msgConst;

type
  TBPatientInfo = record
    BPatName: String;
    BPatSurName: String;
    BPatFatName: String;
    BPatUPN: Integer;
    BPatTransId: Integer;
    BPatTCNo: Double;
    BNewBabyRecord: Boolean;
    BPatPassportNo: String;
    BPatProtNo:Integer;
    BPatBirthDate: TDate;
    BPatAgeFloat: Double;
    BPatAge:String;
    BPatGender:string;
    BPatPtyId:Integer;
    BPatTransDr:String;
    BPatTransDept:String;
    BPatTransAss:String;
    BPatTransSecAss:String;
    BPatIsPregnant:String;
    BPatTransDrId:Integer;
    BPatTransDeptId:Integer;
    BPatWeight:Double;
    BPatLength:Double;
    BICDCodes:String;
    BConOfMedId: Integer;
    BObjRecId: Integer;
    BbyzObjectId: Integer;
    BPatOraDataset:TOracleDataset;
  end;
function GetNewOracleDataSet(pSql: string = ''): TOracleDataSet;
function GetNewOracleQuery(pSql: string = ''): TOracleQuery;
function RealNow: TDateTime;
function MessageIsDeleted(preMsg: String = ''): Boolean;
function Decompose(AText, ADelimiter: String; AIndVal: Integer): Variant;
procedure SetDefaultParams(pOra:TOracleDataset);
function CountOfChar(pC: char; pS: string): integer;
function MessageCustom(pMsg: String; pMsgType: Smallint = 1; pIsMsgInfo: Boolean = true; pWithTime: Smallint = 0;
  pButtonCaptinons: String = ''; pMsgName: String = ''): Boolean;

var
gvPatientInfo: TBPatientInfo;
UserName:String='BYZ';
UserId:Integer=1;
lgvfrmUserMessage: TfrmUserMessage;
gvGenOracleSession: TOracleSession;


const
  msgCommonConf004 :string = ' adlý kaydý';
  msgCommonConf005 :string = 'Kaydý';
  msgCommonConf006 :string = ' silmek istediðinize emin misiniz?';
  BooleanTrue: String = '1';
  BooleanFalse: String = '0';


implementation

function GetNewOracleDataSet(pSql: string): TOracleDataSet;
begin
  Result := TOracleDataSet.Create(nil);
  Result.Session := dmMain.OraSession;
  Result.SQL.Text := pSql;
end;

function GetNewOracleQuery(pSql: string): TOracleQuery;
begin
  Result := TOracleQuery.Create(nil);
  Result.Session := dmMain.OraSession;
  Result.SQL.Text := pSql;
end;

function RealNow: TDateTime;
begin
  Result := Now;
end;

procedure SetDefaultParams(pOra:TOracleDataset);
begin
//
end;

// Gonderdiginiz text icindeki belirtilen ayraci kullanilark istediginiz
// dilimi size geri gonderiri
// Ornegin : Atext = Deniz#YILMAZ#Kars , Adelimiter=#, AIndVal=1 ise
// YILMAZ degeri geri donecektir
function Decompose(AText, ADelimiter: String; AIndVal: Integer): Variant;
var
  p, idx: Smallint;
  rslt: String;
begin
  rslt := '';
  idx := 0;
  repeat
    p := pos(ADelimiter, AText);

    if idx = AIndVal then
    begin
      if p = 0 then
        p := Length(AText) + 1;
      rslt := Copy(AText, 1, p - 1);
      break;
    end;
    Delete(AText, 1, p);
    idx := idx + 1;
  until p = 0;

  Result := rslt;
end;

function MessageIsDeleted(preMsg: String = ''): Boolean;
begin

  if preMsg <> '' then
    preMsg := '"' + preMsg + '" ' + msgCommonConf004
  else
    preMsg := msgCommonConf005;

  if not MessageDlg('Kaydý silmek istediðinize emin misiniz?', mtWarning, mbYesNo,0) = mrNo then
    Result := true
  else
    Result := false;
end;

function CountOfChar(pC: char; pS: string): integer;
var
  I: integer;
begin
  Result := 0;
  for I := 0 to Length(pS) - 1 do
    if pS[I] = pC then
      Inc(Result);
end;

// pWithTime - deðer gönderildiðinde geri sayim suresi bu deðerin pozitif degerine esitlenir
// pMsgName dolu gönderildiðinde seçimi hatýrlat aktif olur.
function MessageCustom(pMsg: String; pMsgType: Smallint = 1; pIsMsgInfo: Boolean = true; pWithTime: Smallint = 0;
  pButtonCaptinons: String = ''; pMsgName: String = ''): Boolean;
var
  // lvCaptionStr : String;
  lvWithTime: Smallint;
//  lvMsgInvoiceTime : TDateTime;
begin
     result := true;
  // frmUserMessage := nil;
  lvWithTime := pWithTime;
  {if (pMsgName <> '') and (gvUserMsgMRSelValues <> nil) then
    if gvUserMsgMRSelValues.IndexOfName(pMsgName) <> -1 then
    begin
      Result := StrToBool(gvUserMsgMRSelValues.Values[pMsgName]);
      exit;
    end
    else
    begin
      lgvfrmUserMessage.cbRememberSelect.checked := false;
      lgvfrmUserMessage.cbRememberSelect.visible := true;
    end;          }

//  if pMsgName <> '' then  //OMERT 120316 25072018
//  begin
//    dmGeneral.odsMessageInvoiceGroup.Close;
//    dmGeneral.odsMessageInvoiceGroup.SetVariable('PCUSER', UserName);
//    dmGeneral.odsMessageInvoiceGroup.Open;
//
//    if (dmGeneral.odsMessageInvoiceGroup.Locate('MSG',pMsgName,[]))
//       and (dmGeneral.odsMessageInvoiceGroup.FieldByName('TIME').AsDateTime >= RealNow) and
//       (GetKeyState(VK_CONTROL) >= 0) then //138227;OMERT;02.01.2019
//    begin
//      Result := StrToBool(dmGeneral.odsMessageInvoiceGroup.FieldByName('BTN_VALUE').AsString);
//      exit;
//    end
//    else
//    begin
//      lgvfrmUserMessage.cbRememberSelect.checked := false;
//      lgvfrmUserMessage.cbRememberSelect.visible := true;
//      lgvfrmUserMessage.lblTimeCaption.Visible := True;
//      lgvfrmUserMessage.icbTime.Visible := True;
//    end;
//
//  end;
  // pMsg := pMsg + #13;

  try
    lgvfrmUserMessage := TfrmUserMessage.Create(nil);
    with lgvfrmUserMessage do
    begin

      // lgvTimerSeq := 0;
      Timer1.Enabled := false;
      pnlTimerSeq.visible := false;
      btnYes.Enabled := true;
      btnOk.Enabled := true;
      btnNo.Enabled := true;

      btnYes.visible := false;
      btnOk.visible := false;
      btnNo.visible := false;
      imQua.visible := false;
      imWar.visible := false;
      btnYes.Caption := msgYes;
      btnNo.Caption := msgNo;
      btnOk.Caption := msgOK;
      Caption := msgWarningMessage; // 'Uyarý Mesajý';
      case pMsgType of
        1:
          begin
            btnYes.visible := true;
            btnNo.visible := true;
            imQua.visible := true;
          end;
        2:
          begin
            btnYes.visible := true;
            btnNo.visible := true;
            imQua.visible := true;
          end;
        3:
          begin
            btnOk.visible := true;
            Caption := msgInfoMessage; // 'Bilgi Mesajý';
            imWar.visible := true;
          end;
        5:
          begin
            btnOk.visible := true;
            Caption := msgInfoMessage; // 'Bilgi Mesajý';
            imWar.visible := true;
          end;
        { 9 : begin //special
          lvCaptionStr := Decompose(pButtonCaptinons,GeneralDelimiter,0);
          if lvCaptionStr <> '' then
          begin
          btnYes.Visible := true;
          btnYes.Caption := lvCaptionStr;
          end;

          lvCaptionStr := Decompose(pButtonCaptinons,GeneralDelimiter,2);
          if lvCaptionStr <> '' then
          begin
          btnNo.Visible := true;
          btnNo.Caption := lvCaptionStr;
          end;

          lvCaptionStr := Decompose(pButtonCaptinons,GeneralDelimiter,1);
          if lvCaptionStr <> '' then
          begin
          btnok.Visible := true;
          btnok.Caption := lvCaptionStr;
          end;
          //Caption := 'Uyarý Mesajý';
          imQua.Visible := true;
          end; }
      end;

      reMsg.Properties.OnResizeRequest := nil;
//      if ADefSkinName <> '' then
//      begin
//        // frmUserMessage.reMsg.Style.Font.Style  := [fsBold];
//        // MsgFrm.Color := RootLookAndFeel.Painter.DefaultContentColor;
//        if pIsMsgInfo then
//        begin
//          reMsg.Style.Font.Color := $000080FF;
//          // frmUserMessage.reMsg.Style.Color := clWhite;
//        end
//        else
//          reMsg.Style.Font.Color := clRed;
//
//      end
//      else
//      begin
//        reMsg.Style.Font.Color := clWhite;
//        // reMsg.Style.Font.Style  := [fsBold];
//        if pIsMsgInfo then
//          reMsg.Style.Color := $000080FF
//        else
//          reMsg.Style.Color := clRed;
//      end;
      reMsg.Properties.OnResizeRequest := cxRichEdit1PropertiesResizeRequest;

      reMsg.Lines.Text := Trim(pMsg);

      // bizMED in otomatik calisma durumlarinda ekrana gelen msj larin hemen kapanmasi icin
//      if gvReadDigiForm then
//        lvWithTime := -3;

      Height := 200;

      if reMsg.Lines.COUNT > 1 then
        Height := Height + ((reMsg.Lines.COUNT - 1) * 14); // ((reMsg.Lines.Count * 14) - 50);

//      if Height + 100 > Screen.Height then
//      begin
//        Height := Screen.Height - 100;
//        Top := 0;
//      end;

      if (lvWithTime > 0) {and not gvDebug} then
      begin
        pnlTimerSeq.visible := true;
        pnlTimerSeq.Caption := IntToStr(lvWithTime);
        btnYes.Enabled := false;
        btnOk.Enabled := false;
        btnNo.TabStop := false;
        lgvTimerSeq := lvWithTime;
        Timer1.Tag := 0;
        Timer1.Enabled := true;
      end
      else if lvWithTime < 0 then // geri sayim degeri bununla degistirilir
      begin
        SetAutoClose(lvWithTime * -1);
      end;

      try
        if ShowModal = mrYes then
          Result := true
        else
          Result := false;
      except
        if Assigned(lgvfrmUserMessage) then
          FreeAndNil(lgvfrmUserMessage);
        // farkli bir ekrana gectiginde "Cannot visible modal ,
        // window hatasii vermemesi iin konuldu"
      end;
      // ozel form ise tiklanan buttonun modalresult degeri donecek
      { if pMsgType = 9 then
        result := ModalResult; }

      // check isaretliyse

//       {
//      if (lgvfrmUserMessage.cbRememberSelect.checked) and (lgvfrmUserMessage.icbTime.EditValue > 0) then
//      begin //OMERT 120316 25072018
//        {if (pMsgName <> '') and (gvUserMsgMRSelValues <> nil) then
//          gvUserMsgMRSelValues.Add(pMsgName + '=' + BoolToStr(Result)); }
//        lvMsgInvoiceTime := IncMinute(RealNow, icbTime.EditValue);
//        if dmGeneral.odsMessageInvoiceGroup.Locate('MSG', pMsgName, []) then
//        begin
//          dmGeneral.odsMessageInvoiceGroup.Edit;
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('TIME').AsDateTime := lvMsgInvoiceTime;
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('BTN_VALUE').AsString := BoolToStr(Result);
//        end
//        else
//        begin
//          dmGeneral.odsMessageInvoiceGroup.Insert;
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('MSG').AsString := pMsgName;
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('BTN_VALUE').AsString := BoolToStr(Result);
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('CUSER').AsString := UserName;
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('TIME').AsDateTime := lvMsgInvoiceTime;
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('IS_SELECT_REMEMBER').AsString := BooleanTrue;
//          dmGeneral.odsMessageInvoiceGroup.FieldByName('CTIME').AsDateTime := RealNow;
//        end;
//        dmGeneral.odsMessageInvoiceGroup.Post;
//        dmGeneral.odsMessageInvoiceGroup.Refresh;
//
//      end;
    end; // with
  finally
    lgvfrmUserMessage.cbRememberSelect.checked := false;
    lgvfrmUserMessage.cbRememberSelect.visible := false;
    lgvfrmUserMessage.lblTimeCaption.Visible := False;
    lgvfrmUserMessage.icbTime.Visible := False;
    if Assigned(lgvfrmUserMessage) then
      FreeAndNil(lgvfrmUserMessage);
    // dmGeneral.odsMessageInvoiceGroup.Close;
    // reMsg.Properties.OnResizeRequest := cxRichEdit1PropertiesResizeRequest;
    // free;
    // frmUserMessage := nil;
  end;
end;

end.
