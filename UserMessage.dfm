object frmUserMessage: TfrmUserMessage
  Left = 304
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Mesaj'
  ClientHeight = 96
  ClientWidth = 479
  Color = clBtnFace
  Constraints.MaxHeight = 800
  Constraints.MaxWidth = 600
  Font.Charset = TURKISH_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 479
    Height = 62
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      479
      62)
    object btnOk: TcxButton
      Left = 248
      Top = 6
      Width = 93
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Tamam'
      Colors.Default = 4227327
      Colors.Normal = 27607
      Colors.Hot = 4707838
      Colors.Pressed = clBlack
      ModalResult = 1
      TabOrder = 0
      OnClick = btnNoClick
    end
    object btnYes: TcxButton
      Left = 113
      Top = 6
      Width = 93
      Height = 33
      Caption = 'Evet'
      Colors.Default = 4227327
      Colors.Normal = 27607
      Colors.Hot = 4707838
      Colors.Pressed = clBlack
      ModalResult = 6
      TabOrder = 1
      OnClick = btnNoClick
    end
    object btnNo: TcxButton
      Left = 377
      Top = 6
      Width = 93
      Height = 33
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Hay'#305'r'
      Colors.Default = 4227327
      Colors.Normal = 27607
      Colors.Hot = 4707838
      Colors.Pressed = clBlack
      ModalResult = 7
      TabOrder = 2
      OnClick = btnNoClick
    end
    object pnlTimerSeq: TPanel
      Left = 1
      Top = 1
      Width = 32
      Height = 60
      Align = alLeft
      BevelInner = bvLowered
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object lblOtoClose: TcxLabel
      Left = 34
      Top = 1
      AutoSize = False
      Caption = 'sn sonra otomatik onaylanarak kapat'#305'lacak'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -9
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.SkinName = ''
      Style.Shadow = False
      Style.TextStyle = []
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.SkinName = ''
      Properties.WordWrap = True
      Height = 36
      Width = 73
    end
    object cbRememberSelect: TcxCheckBox
      Left = 123
      Top = 42
      Caption = 'Se'#231'imi bundan sonrakiler i'#231'in hat'#305'rla'
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      Transparent = True
      Visible = False
    end
    object btnExtendTime: TcxButton
      Left = 34
      Top = 39
      Width = 73
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'S'#252'reyi Uzat'
      Colors.Default = 4227327
      Colors.Normal = 27607
      Colors.Hot = 4707838
      Colors.Pressed = clBlack
      TabOrder = 6
      WordWrap = True
      OnClick = btnExtendTimeClick
    end
    object icbTime: TcxImageComboBox
      Left = 373
      Top = 40
      ParentFont = False
      Properties.Items = <
        item
          Description = '5 dk'
          ImageIndex = 0
          Tag = 1
          Value = 5
        end
        item
          Description = '30 dk'
          Tag = 2
          Value = 30
        end
        item
          Description = '1 saat'
          Tag = 3
          Value = 60
        end
        item
          Description = '6 saat'
          Tag = 4
          Value = 360
        end
        item
          Description = '12 saat'
          Tag = 5
          Value = 720
        end
        item
          Description = '1 g'#252'n'
          Tag = 6
          Value = 1440
        end
        item
          Description = '1 hafta'
          Tag = 7
          Value = 10080
        end
        item
          Description = '1 ay'
          Tag = 8
          Value = 40320
        end
        item
          Description = '1 y'#305'l'
          Tag = 9
          Value = 483840
        end>
      TabOrder = 7
      Visible = False
      Width = 97
    end
    object lblTimeCaption: TcxLabel
      Left = 328
      Top = 42
      Caption = 'Zaman :'
      ParentFont = False
      Style.BorderStyle = ebsNone
      Transparent = True
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 479
    Height = 34
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      479
      34)
    object reMsg: TcxRichEdit
      Left = 44
      Top = 3
      TabStop = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnResizeRequest = cxRichEdit1PropertiesResizeRequest
      Style.BorderStyle = ebsNone
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clBlack
      StyleHot.TextColor = clBlack
      TabOrder = 0
      OnEnter = reMsgEnter
      Height = 29
      Width = 432
    end
    object imQua: TcxImage
      Left = 5
      Top = 3
      TabStop = False
      Picture.Data = {
        055449636F6E0000010001002020040000000000E80200001600000028000000
        2000000040000000010004000000000000020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF00000000000000000000000000000000000000000000BBBBBB00000000
        000000000000000000BBBBBB0B000000000000000000000000BBBBBB07B00000
        000000000000000000BBBBBB0B70700000000000000000000000000007B07700
        0000000000000000000BBBBBB07077700000000000000000000000000B007777
        700000000000000000BBBBBB00707777777000000000000000BBBBBB0B000777
        777777000000000000BBBBBB07B00000777777770000000000BBBBBB70707777
        7777777700000000007BBBBBB0B077777777777700000000000BBBBBBB007777
        77777777000000000000BBBBBBB07777777777700000000000000BBBBBBB0000
        0000000000000000000000BBBBBB70000000000000BBBBBB0000000BBBBBB000
        0000000000BBBBBB0B00000BBBBBB0700000000000BBBBBB07B0000BBBBBB070
        0000000000BBBBBBB07000BBBBBBB07700000000000BBBBBBB000BBBBBBBB0B7
        00000000000BBBBBBBBBBBBBBBBBB07B000000000000BBBBBBBBBBBBBBBB77B7
        000000000000BBBBBBBBBBBBBBBB0B7B0000000000000BBBBBBBBBBBBBB0B8B7
        00000000000000BBBBBBBBBBBB0BBB800000000000000007BBBBBBBB70FBBBB0
        000000000000000000000000BFBFBB0000000000000000000BFBFBFBFBFBF000
        0000000000000000000FBFBFBFB0000000000000000000000000000000000000
        00000000FF807FFFFF803FFFFF801FFFFF800FFFFF8007FFFF8003FFFFC001FF
        FF80007FFF80001FFF801803FF800F00FF800000FFC00000FFC00000FFE00001
        FFF007FF807803FF803C01FF801C00FF800C00FF8008007FC000007FC000007F
        E000007FE000007FF000007FF80000FFFC0000FFFE0001FFFF0003FFFF8007FF
        FFE01FFF}
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TIcon'
      Properties.GraphicTransparency = gtOpaque
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      Style.BorderStyle = ebsNone
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 1
      Visible = False
      Height = 37
      Width = 36
    end
    object imWar: TcxImage
      Left = 6
      Top = 28
      TabStop = False
      Picture.Data = {
        055449636F6E0000010001002020040000000000E80200001600000028000000
        2000000040000000010004000000000000020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF0000000777777777777777777777777700000077777777777777777777
        777777700030000000000000000000000007777703BBBBBBBBBBBBBBBBBBBBBB
        BB8077773BBBBBBBBBBBBBBBBBBBBBBBBBB807773BBBBBBBBBBBBBBBBBBBBBBB
        BBBB07773BBBBBBBBBBBB8008BBBBBBBBBBB07703BBBBBBBBBBBB0000BBBBBBB
        BBB8077003BBBBBBBBBBB0000BBBBBBBBBB0770003BBBBBBBBBBB8008BBBBBBB
        BB807700003BBBBBBBBBBBBBBBBBBBBBBB077000003BBBBBBBBBBB0BBBBBBBBB
        B80770000003BBBBBBBBB808BBBBBBBBB07700000003BBBBBBBBB303BBBBBBBB
        8077000000003BBBBBBBB000BBBBBBBB0770000000003BBBBBBB80008BBBBBB8
        07700000000003BBBBBB30000BBBBBB077000000000003BBBBBB00000BBBBB80
        770000000000003BBBBB00000BBBBB07700000000000003BBBBB00000BBBB807
        7000000000000003BBBB00000BBBB0770000000000000003BBBB00000BBB8077
        00000000000000003BBB80008BBB077000000000000000003BBBBBBBBBB80770
        000000000000000003BBBBBBBBB07700000000000000000003BBBBBBBB807700
        0000000000000000003BBBBBBB0770000000000000000000003BBBBBB8077000
        00000000000000000003BBBBB077000000000000000000000003BBBB80700000
        000000000000000000003BB80000000000000000000000000000033300000000
        00000000F8000003F0000001C000000080000000000000000000000000000001
        000000018000000380000003C0000007C0000007E000000FE000000FF000001F
        F000001FF800003FF800003FFC00007FFC00007FFE0000FFFE0000FFFF0001FF
        FF0001FFFF8003FFFF8003FFFFC007FFFFC007FFFFE00FFFFFE01FFFFFF07FFF
        FFF8FFFF}
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TIcon'
      Properties.GraphicTransparency = gtOpaque
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      Style.BorderStyle = ebsNone
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 2
      Visible = False
      Height = 37
      Width = 36
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 112
    Top = 65528
  end
end
