object frmbyzListCard: TfrmbyzListCard
  Left = 163
  Top = 190
  Caption = 'Liste D'#252'zenleme Kart'#305
  ClientHeight = 288
  ClientWidth = 389
  Color = clBtnFace
  Constraints.MinHeight = 150
  Constraints.MinWidth = 200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 252
    Width = 389
    Height = 36
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      389
      36)
    object btnSave: TcxButton
      Left = 106
      Top = 5
      Width = 62
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Kaydet'
      Colors.Default = 4227327
      Colors.Normal = 27607
      Colors.Hot = 9554175
      Colors.Pressed = clBlack
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnCancel: TcxButton
      Left = 202
      Top = 5
      Width = 62
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #304'ptal'
      Colors.Default = 4227327
      Colors.Normal = 27607
      Colors.Hot = 9554175
      Colors.Pressed = clBlack
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object pnlUp: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 252
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object byzButtonEdit1: TbyzButtonEdit
      Left = 240
      Top = 16
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Style.Color = clWindow
      TabOrder = 0
      byzSourceFormID = 0
      byzMultiSelect = False
      Width = 121
    end
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 24
    Top = 8
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'SELECT A.*, A.ROWID'
      'FROM ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000040000004900
      4400010000000000}
    Session = dmMain.OraSession
    BeforeOpen = OracleDataSet1BeforeOpen
    AfterOpen = OracleDataSet1AfterOpen
    AfterScroll = OracleDataSet1AfterScroll
    Left = 24
    Top = 128
  end
  object ActionList1: TActionList
    Left = 24
    Top = 192
  end
end
