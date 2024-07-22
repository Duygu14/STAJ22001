object frmCostumSelect: TfrmCostumSelect
  Left = 0
  Top = 0
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = 'Se'#231'im Yap'#305'n'#305'z'
  ClientHeight = 201
  ClientWidth = 352
  Color = clBtnFace
  Constraints.MaxHeight = 259
  Constraints.MaxWidth = 387
  Constraints.MinHeight = 230
  Constraints.MinWidth = 358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcCostumSelect: TcxPageControl
    Left = 0
    Top = 0
    Width = 352
    Height = 143
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsPartograph
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 141
    ClientRectLeft = 2
    ClientRectRight = 350
    ClientRectTop = 2
    object tsConstraintEval: TcxTabSheet
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = False
      TabVisible = False
      object beDeptList: TbyzButtonEdit
        Left = 126
        Top = 71
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnEditValueChanged = beDeptListPropertiesEditValueChanged
        Style.Color = clWindow
        TabOrder = 0
        byzSourceFormID = 105
        byzSourceDataSetName = 'OracleDataSet1'
        byzShowingFieldName = 'NAME'
        byzSourceFieldName = 'ID'
        byzMultiSelect = False
        byzOracleSession = dmMain.OraSession
        Width = 121
      end
      object beDrList: TbyzButtonEdit
        Left = 126
        Top = 111
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Style.Color = clWindow
        TabOrder = 1
        byzSourceFormID = 190
        byzSourceDataSetName = 'OracleDataSet1'
        byzShowingFieldName = 'NAME  SURNAME'
        byzSourceFieldName = 'ID'
        byzSourceIDValue = '0'
        byzSourceObjForConn = beDeptList
        byzConnectedParam = 'DEPT_ID'
        byzMultiSelect = False
        byzOracleSession = dmMain.OraSession
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 78
        Top = 32
        Caption = 'Tarih'
      end
      object cxLabel2: TcxLabel
        Left = 78
        Top = 72
        Caption = 'B'#246'l'#252'm'
      end
      object cxLabel3: TcxLabel
        Left = 78
        Top = 112
        Caption = 'Doktor'
      end
      object deDateTime: TcxDateEdit
        Left = 126
        Top = 31
        Properties.Kind = ckDateTime
        Properties.ShowOnlyValidDates = True
        Properties.OnChange = deDateTimePropertiesChange
        TabOrder = 5
        Width = 121
      end
    end
    object tsCostum: TcxTabSheet
      Caption = 'tsCostum'
      ImageIndex = 1
      TabVisible = False
    end
    object tsPartograph: TcxTabSheet
      Caption = 'tsPartograph'
      ImageIndex = 0
      TabVisible = False
      object pcPartographDataControl: TcxPageControl
        Left = 0
        Top = 0
        Width = 348
        Height = 139
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsPartographSERVIKS_SIZE
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 137
        ClientRectLeft = 2
        ClientRectRight = 346
        ClientRectTop = 2
        object tsPartographSelectInputType: TcxTabSheet
          Caption = 'Se'#231'im'
          ImageIndex = 0
          TabVisible = False
          object lblPartographSELECTED_INPUT_TYPE: TcxLabel
            Left = 81
            Top = 55
            Caption = 'Kay'#305't Tipi: '
          end
          object icbPartographSELECTED_INPUT_TYPE: TcxImageComboBox
            Left = 141
            Top = 53
            RepositoryItem = edtRepositoryIcbPartographDataInputType
            EditValue = 0
            Properties.Items = <>
            Properties.OnEditValueChanged = icbPartographSELECTED_INPUT_TYPEPropertiesEditValueChanged
            TabOrder = 1
            Width = 121
          end
        end
        object tsPartographFETAL_HEART_RATE: TcxTabSheet
          Caption = 'Fetal'
          ImageIndex = 1
          TabVisible = False
          object lblPartographFETAL_HEART_RATE: TcxLabel
            Left = 58
            Top = 53
            Caption = 'Fetal Kalp At'#305'm H'#305'z'#305': '
          end
          object seFETAL_HEART_RATE: TcxSpinEdit
            Left = 168
            Top = 53
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 999.000000000000000000
            TabOrder = 1
            Width = 121
          end
        end
        object tsPartographSERVIKS_SIZE: TcxTabSheet
          Caption = 'Serviks'
          ImageIndex = 2
          TabVisible = False
          ExplicitLeft = 0
          ExplicitTop = 3
          object lblPartographSERVIKS_SIZE: TcxLabel
            Left = 61
            Top = 53
            Caption = 'Serviks A'#231#305'kl'#305#287#305':  '
          end
          object seSERVIKS_SIZE: TcxSpinEdit
            Left = 157
            Top = 53
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 10.000000000000000000
            TabOrder = 1
            Width = 121
          end
        end
        object tsPartographAMNION_FLUID: TcxTabSheet
          Caption = 'Amnion'
          ImageIndex = 3
          TabVisible = False
          object lblPartographAMNION_FLUID: TcxLabel
            Left = 64
            Top = 53
            Caption = 'Amniyon S'#305'v'#305's'#305': '
          end
          object icbPartographAMNION_FLUID: TcxImageComboBox
            Left = 155
            Top = 53
            EditValue = 0
            Properties.Items = <>
            TabOrder = 1
            Width = 121
          end
        end
        object tsPartographHEAD_LEVEL: TcxTabSheet
          Caption = 'Ba'#351' Seviyesi'
          ImageIndex = 4
          TabVisible = False
          object lblPartographHEAD_LEVEL: TcxLabel
            Left = 69
            Top = 53
            Caption = 'Ba'#351' Seviyesi: '
          end
          object seHEAD_LEVEL: TcxSpinEdit
            Left = 145
            Top = 53
            Properties.MaxValue = 3.000000000000000000
            Properties.MinValue = -3.000000000000000000
            TabOrder = 1
            Width = 121
          end
        end
        object tsPartographPAIN_LEVEL: TcxTabSheet
          Caption = 'Kontraksiyon'
          ImageIndex = 5
          TabVisible = False
          object lblPartographPAIN_COUNT: TcxLabel
            Left = 66
            Top = 62
            Caption = 'A'#287'r'#305' Say'#305's'#305':  (1-5)'
          end
          object lblPartographPAIN_LEVEL: TcxLabel
            Left = 66
            Top = 38
            Caption = 'A'#287'r'#305' Seviyesi:'
          end
          object icbPartographPAIN_LEVEL: TcxImageComboBox
            Left = 156
            Top = 38
            EditValue = 0
            Properties.Items = <>
            TabOrder = 2
            Width = 121
          end
          object sePAIN_COUNT: TcxSpinEdit
            Left = 156
            Top = 62
            Properties.MaxValue = 5.000000000000000000
            Properties.MinValue = 1.000000000000000000
            TabOrder = 3
            Value = 1
            Width = 121
          end
        end
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 143
    Width = 352
    Height = 58
    Align = alBottom
    TabOrder = 1
    object btnCancel: TcxButton
      Left = 232
      Top = 17
      Width = 75
      Height = 25
      Caption = #304'ptal'
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOk: TcxButton
      Left = 64
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Tamam'
      TabOrder = 1
      OnClick = btnOkClick
    end
  end
  object erEnum: TcxEditRepository
    Left = 84
    Top = 98
    PixelsPerInch = 96
    object edtRepositoryIcbPartographDataInputType: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Fetal Kalp At'#305'm H'#305'z'#305
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Amniyon S'#305'v'#305's'#305
          ImageIndex = 0
          Value = 2
        end
        item
          Description = 'Serviks A'#231#305'kl'#305#287#305
          Value = 3
        end
        item
          Description = 'Ba'#351' Seviyesi'
          ImageIndex = 0
          Value = '4'
        end
        item
          Description = 'Kontraksiyon S'#252'resi'
          Value = 5
        end>
    end
  end
end
