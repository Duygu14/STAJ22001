object frmbyzBase: TfrmbyzBase
  Left = 0
  Top = 0
  Caption = 'Base Form'
  ClientHeight = 471
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnlBaseBottom: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    ExplicitWidth = 716
    object btnBaseClose: TcxButton
      Left = 641
      Top = 4
      Width = 75
      Height = 27
      Align = alRight
      Caption = 'Kapat'
      TabOrder = 0
      OnClick = btnBaseCloseClick
      ExplicitLeft = 637
    end
    object btnBaseSave: TcxButton
      Left = 4
      Top = 4
      Width = 75
      Height = 27
      Align = alLeft
      Caption = 'Kaydet'
      OptionsImage.ImageIndex = 5
      TabOrder = 1
      OnClick = btnBaseSaveClick
    end
    object btnBaseDelete: TcxButton
      Left = 154
      Top = 4
      Width = 75
      Height = 27
      Align = alLeft
      Caption = 'Sil'
      OptionsImage.ImageIndex = 1
      TabOrder = 2
      OnClick = btnBaseDeleteClick
    end
    object btnBasePrint: TcxButton
      Left = 229
      Top = 4
      Width = 75
      Height = 27
      Align = alLeft
      Caption = 'Yazd'#305'r'
      OptionsImage.ImageIndex = 4
      TabOrder = 3
      OnClick = btnBaseDeleteClick
    end
    object btnBaseAdd: TcxButton
      Left = 79
      Top = 4
      Width = 75
      Height = 27
      Align = alLeft
      Caption = 'Ekle'
      OptionsImage.ImageIndex = 0
      TabOrder = 4
      OnClick = btnBaseAddClick
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 35
    Width = 720
    Height = 436
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 716
    ExplicitHeight = 435
  end
  object AppEvntsBase: TApplicationEvents
    Left = 448
    Top = 144
  end
end
