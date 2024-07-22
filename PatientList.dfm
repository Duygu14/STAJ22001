object frmPatientList: TfrmPatientList
  Left = 654
  Top = 498
  Caption = 'Hasta Listesi'
  ClientHeight = 857
  ClientWidth = 1205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 161
    Top = 241
    Width = 1044
    Height = 616
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1038
    ExplicitHeight = 607
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
      DataController.DataSource = DataSource1
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        DataBinding.IsNullValueType = True
        Width = 80
      end
      object cxGrid1DBTableView1SURNAME: TcxGridDBColumn
        DataBinding.FieldName = 'SURNAME'
        DataBinding.IsNullValueType = True
        Width = 99
      end
      object cxGrid1DBTableView1IDENTITY_NO: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTITY_NO'
        DataBinding.IsNullValueType = True
        Width = 80
      end
      object cxGrid1DBTableView1UPN: TcxGridDBColumn
        DataBinding.FieldName = 'UPN'
        DataBinding.IsNullValueType = True
        Width = 66
      end
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        DataBinding.IsNullValueType = True
        Width = 58
      end
      object cxGrid1DBTableView1PROT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PROT_ID'
        DataBinding.IsNullValueType = True
        Width = 67
      end
      object cxGrid1DBTableView1DR_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DR_ID'
        DataBinding.IsNullValueType = True
        Width = 37
      end
      object cxGrid1DBTableView1DEPT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DEPT_ID'
        DataBinding.IsNullValueType = True
        Width = 24
      end
      object cxGrid1DBTableView1DEPT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'DEPT_NAME'
        DataBinding.IsNullValueType = True
        Width = 120
      end
      object cxGrid1DBTableView1DR_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'DR_NAME'
        DataBinding.IsNullValueType = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1205
    Height = 241
    Align = alTop
    TabOrder = 1
    OnClick = Panel1Click
    ExplicitWidth = 1199
    object btnBraden: TButton
      Left = 7
      Top = 10
      Width = 132
      Height = 25
      Caption = 'Braden Bas'#305' Yaras'#305
      TabOrder = 0
      OnClick = btnBradenClick
    end
    object Button2: TButton
      Tag = 2550
      Left = 8
      Top = 10
      Width = 132
      Height = 25
      Caption = 'Braden Bas'#305' Yaras'#305' Q'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Tag = 2555
      Left = 8
      Top = 72
      Width = 132
      Height = 25
      Caption = 'A'#287'r'#305' De'#287'erlendirme'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Tag = 2554
      Left = 8
      Top = 41
      Width = 132
      Height = 25
      Caption = 'Yenido'#287'an Cilt Risk'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Tag = 2553
      Left = 143
      Top = 41
      Width = 122
      Height = 25
      Caption = 'S'#305'v'#305' takibi'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 142
      Top = 74
      Width = 122
      Height = 25
      Caption = 'A'#287'r'#305' Skalas'#305
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 395
      Top = 10
      Width = 122
      Height = 25
      Caption = #304'taki'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 395
      Top = 41
      Width = 122
      Height = 25
      Caption = 'Harizmi'
      TabOrder = 7
      OnClick = Button8Click
    end
    object Button9: TButton
      Tag = 2559
      Left = 269
      Top = 41
      Width = 122
      Height = 25
      Caption = 'Eri'#351'kin Hasta Tan'#305'lama'
      TabOrder = 8
      OnClick = Button9Click
    end
    object Button1: TButton
      Left = 143
      Top = 10
      Width = 122
      Height = 25
      Caption = 'Katater-Materyal Takip'
      TabOrder = 9
      OnClick = Button1Click
    end
    object cxButton1: TcxButton
      Left = 1102
      Top = 8
      Width = 75
      Height = 25
      Caption = 'ASIE'
      TabOrder = 11
      OnClick = cxButton1Click
    end
    object Button10: TButton
      Left = 268
      Top = 10
      Width = 122
      Height = 25
      Caption = #199'ocuk Hasta Tan'#305'lama'
      TabOrder = 10
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 8
      Top = 103
      Width = 132
      Height = 25
      Caption = 'NRS De'#287'erlendirme Formu'
      TabOrder = 12
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 268
      Top = 74
      Width = 122
      Height = 25
      Caption = 'YD Hasta Tan'#305'lama'
      TabOrder = 13
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 269
      Top = 103
      Width = 122
      Height = 25
      Caption = 'YDYB Hasta Tan'#305'lama'
      TabOrder = 14
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 143
      Top = 103
      Width = 122
      Height = 25
      Caption = 'Advers Etki Formu'
      TabOrder = 15
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 522
      Top = 41
      Width = 70
      Height = 25
      Caption = 'SOFA Skor'
      TabOrder = 16
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 522
      Top = 10
      Width = 70
      Height = 25
      Caption = 'EuroSCORE'
      TabOrder = 17
      OnClick = Button16Click
    end
    object Button18: TButton
      Left = 395
      Top = 72
      Width = 122
      Height = 25
      Caption = 'K'#305's'#305'tlama De'#287'erlendir'
      TabOrder = 18
      OnClick = Button18Click
    end
    object Button17: TButton
      Left = 398
      Top = 103
      Width = 119
      Height = 25
      Caption = 'Anestezi De'#287'erlendirme '
      TabOrder = 19
      OnClick = Button17Click
    end
    object cxButton2: TcxButton
      Left = 1102
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Deneme'
      TabOrder = 20
      OnClick = cxButton1Click
    end
    object Button19: TButton
      Left = 661
      Top = 72
      Width = 162
      Height = 27
      Caption = 'Gebelikte Ven'#246'z Risk Fakt'#246'r De'#287'erlendirme'
      TabOrder = 21
      WordWrap = True
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 599
      Top = 72
      Width = 56
      Height = 25
      Caption = 'Glasgow'
      TabOrder = 22
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 598
      Top = 10
      Width = 56
      Height = 25
      Caption = 'Snap II '
      TabOrder = 23
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 598
      Top = 41
      Width = 56
      Height = 25
      Caption = 'Apache II'
      TabOrder = 24
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 660
      Top = 9
      Width = 162
      Height = 25
      Caption = 'Diyetisten De'#287'erlendirme Formu'
      TabOrder = 25
      WordWrap = True
      OnClick = Button23Click
    end
    object Button24: TButton
      Left = 660
      Top = 41
      Width = 162
      Height = 25
      Caption = 'G'#252'venli Do'#287'um Kontrol Formu'
      TabOrder = 26
      WordWrap = True
      OnClick = Button24Click
    end
    object Button25: TButton
      Left = 599
      Top = 109
      Width = 56
      Height = 25
      Caption = 'Prism'
      TabOrder = 27
      OnClick = Button25Click
    end
    object Button26: TButton
      Left = 829
      Top = 72
      Width = 99
      Height = 25
      Caption = 'YB Glasgow Skalas'#305
      TabOrder = 28
      OnClick = Button26Click
    end
    object Button27: TButton
      Left = 828
      Top = 10
      Width = 99
      Height = 25
      Caption = 'YB Snap II '
      TabOrder = 29
      OnClick = Button27Click
    end
    object Button28: TButton
      Left = 829
      Top = 41
      Width = 99
      Height = 25
      Caption = 'YB Apache II'
      TabOrder = 30
      OnClick = Button28Click
    end
    object Button29: TButton
      Left = 829
      Top = 105
      Width = 99
      Height = 25
      Caption = 'YB Prism Skoru'
      TabOrder = 31
      OnClick = Button29Click
    end
    object Button30: TButton
      Left = 829
      Top = 136
      Width = 98
      Height = 25
      Caption = 'YB SOFA Skor Formu'
      TabOrder = 32
      OnClick = Button30Click
    end
    object Button31: TButton
      Left = 661
      Top = 109
      Width = 162
      Height = 25
      Caption = 'Partograf Formu'
      TabOrder = 33
      OnClick = Button31Click
    end
    object Button32: TButton
      Left = 599
      Top = 140
      Width = 56
      Height = 25
      Caption = 'Pelod '
      TabOrder = 34
      OnClick = Button32Click
    end
    object Button33: TButton
      Left = 661
      Top = 140
      Width = 162
      Height = 25
      Caption = 'T'#246'llner Sepsis Formu'
      TabOrder = 35
      OnClick = Button33Click
    end
    object Button34: TButton
      Left = 967
      Top = 9
      Width = 123
      Height = 48
      Caption = 'Ven'#246'z Tromboemboli Risk Fakt'#246'r De'#287'erlendirme Formu'
      TabOrder = 36
      WordWrap = True
      OnClick = Button34Click
    end
    object Button35: TButton
      Left = 523
      Top = 72
      Width = 70
      Height = 25
      Caption = 'Strong Kids'
      TabOrder = 37
      OnClick = Button35Click
    end
    object Button36: TButton
      Left = 8
      Top = 134
      Width = 132
      Height = 25
      Caption = 'G'#252'venli Cerrahi Kontrol'
      TabOrder = 38
      OnClick = Button36Click
    end
    object Button37: TButton
      Left = 967
      Top = 63
      Width = 123
      Height = 36
      Caption = 'Ameliyat '#214'ncesi Ve Sonras'#305' Hasta Haz'#305'rl'#305'k '
      TabOrder = 39
      WordWrap = True
      OnClick = Button37Click
    end
    object Button38: TButton
      Left = 142
      Top = 134
      Width = 123
      Height = 25
      Caption = 'Ema Sepsis Skor'
      TabOrder = 40
      OnClick = Button38Click
    end
    object Button39: TButton
      Left = 269
      Top = 134
      Width = 123
      Height = 25
      Caption = 'Pediatrik Travma Skoru'
      TabOrder = 41
      OnClick = Button39Click
    end
    object Button40: TButton
      Left = 398
      Top = 134
      Width = 119
      Height = 25
      Caption = 'Waterlow Skalas'#305
      TabOrder = 42
      OnClick = Button40Click
    end
    object Button41: TButton
      Left = 661
      Top = 172
      Width = 162
      Height = 25
      Caption = 'Yenido'#287'an N'#252'trisyon Formu'
      TabOrder = 43
      OnClick = Button41Click
    end
    object Button42: TButton
      Left = 967
      Top = 105
      Width = 123
      Height = 23
      Caption = 'Kritk Vaka '#304'zlem'
      TabOrder = 44
      WordWrap = True
      OnClick = Button42Click
    end
    object Button43: TButton
      Left = 8
      Top = 165
      Width = 132
      Height = 25
      Caption = 'Crib Skorlama'
      TabOrder = 45
      OnClick = Button43Click
    end
    object Button44: TButton
      Left = 142
      Top = 165
      Width = 123
      Height = 25
      Caption = 'Kan '#350'ekeri Takibi'
      TabOrder = 46
      OnClick = Button44Click
    end
    object cxButton3: TcxButton
      Left = 271
      Top = 165
      Width = 121
      Height = 25
      Caption = 'Organ Yetmezli'#287'i'
      TabOrder = 47
      OnClick = cxButton3Click
    end
    object Button45: TButton
      Left = 400
      Top = 165
      Width = 117
      Height = 25
      Caption = 'Northamtham'
      TabOrder = 48
      OnClick = Button44Click
    end
    object Button46: TButton
      Left = 523
      Top = 103
      Width = 70
      Height = 25
      Caption = 'Hasta Detay'
      TabOrder = 49
      OnClick = Button46Click
    end
    object Button47: TButton
      Left = 523
      Top = 134
      Width = 70
      Height = 25
      Caption = 'Hasta Listesi'
      TabOrder = 50
      OnClick = Button47Click
    end
    object Button48: TButton
      Left = 523
      Top = 165
      Width = 70
      Height = 25
      Caption = 'Diyabet'
      TabOrder = 51
      OnClick = Button48Click
    end
    object byzButtonEdit1: TbyzButtonEdit
      Left = 1111
      Top = 70
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Style.Color = clWindow
      TabOrder = 52
      Text = 'byzButtonEdit1'
      byzSourceFormID = 0
      byzMultiSelect = False
      Width = 66
    end
    object Button49: TButton
      Left = 829
      Top = 167
      Width = 99
      Height = 25
      Caption = 'HASTA B'#304'LG'#304'LER'#304
      TabOrder = 53
      OnClick = Button49Click
    end
    object Button50: TButton
      Left = 967
      Top = 134
      Width = 123
      Height = 25
      Caption = 'Epikriz Kart'#305
      TabOrder = 54
      OnClick = Button50Click
    end
    object Button51: TButton
      Left = 967
      Top = 165
      Width = 178
      Height = 30
      Caption = 'Caprini Risk De'#287'erlendirme Formu'
      TabOrder = 55
      OnClick = Button51Click
    end
    object Button52: TButton
      Left = 967
      Top = 201
      Width = 231
      Height = 28
      Caption = 'IMPROVE Kanama Riskini De'#287'erlendirme Modeli'
      TabOrder = 56
      OnClick = Button52Click
    end
    object Button53: TButton
      Left = 661
      Top = 203
      Width = 266
      Height = 24
      Caption = 'IMPROVE-VTE Risk De'#287'erlendirme Modeli'
      TabOrder = 57
      OnClick = Button53Click
    end
    object Button54: TButton
      Left = 398
      Top = 196
      Width = 123
      Height = 25
      Caption = 'Nihss Score'
      TabOrder = 58
      OnClick = Button54Click
    end
    object Button55: TButton
      Left = 271
      Top = 196
      Width = 117
      Height = 25
      Caption = 'Modifiye Aldrete Skoru'
      TabOrder = 59
      OnClick = Button55Click
    end
    object Button56: TButton
      Left = 120
      Top = 196
      Width = 145
      Height = 25
      Caption = 'Akut GVHDS Klinik Skorlama'
      TabOrder = 60
      OnClick = Button56Click
    end
    object Button57: TButton
      Left = 527
      Top = 196
      Width = 70
      Height = 24
      Caption = 'Emzirme'
      TabOrder = 61
      OnClick = Button57Click
    end
  end
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 241
    Width = 161
    Height = 616
    Align = alLeft
    PopupMenu = dxBarPopupMenu1
    ActiveGroupIndex = 0
    TabOrder = 2
    View = 20
    OptionsBehavior.Common.AllowExpandAnimation = True
    OptionsBehavior.NavigationPane.Collapsible = True
    OnLinkClick = dxNavBar1LinkClick
    ExplicitHeight = 607
    object nbgProcess: TdxNavBarGroup
      Caption = #304#351'lemler'
      SelectedLinkIndex = -1
      ShowCaption = False
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBar1Item1
        end
        item
          Item = dxNavBar1Item2
        end
        item
          Item = dxNavBar1Item3
        end
        item
          Item = dxNavBar1Item4
        end
        item
          Item = dxNavBar1Item5
        end>
    end
    object dxNavBar1Item1: TdxNavBarItem
      Caption = 'Order'
    end
    object dxNavBar1Item2: TdxNavBarItem
      Caption = 'Stok '#304'ste'#287'i'
    end
    object dxNavBar1Item3: TdxNavBarItem
      Caption = 'Ameliyathane'
    end
    object dxNavBar1Item4: TdxNavBarItem
      Caption = 'Di'#287'er'
    end
    object dxNavBar1Item5: TdxNavBarItem
      Caption = 'Deneme'
    end
  end
  object OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      
        'SELECT MPR.NAME, MPR.SURNAME, MPR.FATHER_NAME, MPR.IDENTITY_NO, ' +
        'MPR.UPN,'
      
        '       MPR.BIRTH_DATE, GET_PATIENT_AGE(MPR.BIRTH_DATE) AS PAT_AG' +
        'E, MPR.PASSPORT_NO,'
      '       MPR.SEXUALITY, '
      '       PT.ID, PT.PROT_ID, PT.DR_ID,PT.DEPT_ID,PT.PTY_ID,'
      '       DEPT.NAME AS DEPT_NAME,'
      '       DR.NAME||'#39' '#39'|| DR.SURNAME AS DR_NAME,'
      
        '       SUBSTR(GET_ASSOCIATION_NAME(PT.ASS_ID),1,100) AS ASS_NAME' +
        ','
      
        '       SUBSTR(GET_ASSOCIATION_NAME(PT.SECONDARY_ASS_ID),1,100) A' +
        'S SEC_ASS_NAME,'
      
        '       PA.PREGNANT_OR_LACTATION AS PREGNANT, PA.WEIGHT AS PAT_WE' +
        'IGHT, PA.PAT_LENGTH,'
      '       NULL AS IS_BABY_REC,'
      '       GET_PATIENT_DISEASE(PT.ID,'#39'1'#39') AS PAT_ICDS'
      '       '
      'FROM PATIENT_TRANSACTIONS PT'
      'JOIN MASTER_PATIENT_RECORDS MPR'
      'ON MPR.UPN = PT.UPN'
      'JOIN DEPARTMENTS DEPT'
      'ON DEPT.ID = PT.DEPT_ID'
      'JOIN DOCTOR_LIST DR'
      'ON DR.ID = PT.DR_ID'
      'LEFT JOIN PATIENT_TRANS_ACCEPT_INFO PA'
      'ON PA.PT_ID = PT.ID'
      'WHERE PT.ID IN (2577121, 2576940)'
      '--WHERE PT.CTIME > SYSDATE - 90')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      050000000A000000080000004E0041004D0045000100000000000E0000005300
      550052004E0041004D004500010000000000160000004900440045004E005400
      4900540059005F004E004F0001000000000006000000550050004E0001000000
      000004000000490044000100000000000E000000500052004F0054005F004900
      44000100000000000A000000440052005F00490044000100000000000E000000
      44004500500054005F0049004400010000000000120000004400450050005400
      5F004E0041004D0045000100000000000E000000440052005F004E0041004D00
      4500010000000000}
    Session = dmMain.OraSession
    Left = 320
    Top = 280
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 312
    Top = 344
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 504
    Top = 296
    PixelsPerInch = 96
    object bsiMedForms: TdxBarSubItem
      Caption = 'T'#305'bbi Formlar'
      Category = 0
      Visible = ivAlways
      OnClick = bsiMedFormsClick
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bsiMedForms'
      end>
    UseOwnFont = False
    Left = 624
    Top = 296
    PixelsPerInch = 96
  end
  object dxCalloutPopup1: TdxCalloutPopup
    Left = 536
    Top = 392
  end
end
