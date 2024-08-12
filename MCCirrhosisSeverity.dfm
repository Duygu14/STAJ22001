inherited frmMCCirrhosisSeverity: TfrmMCCirrhosisSeverity
  Caption = 'Siroz '#350'iddet Tayini'
  ClientHeight = 681
  ClientWidth = 1068
  ExplicitWidth = 1080
  ExplicitHeight = 719
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Width = 1068
    ExplicitWidth = 1062
    inherited btnBaseClose: TcxButton
      Left = 989
      ExplicitLeft = 983
    end
    inherited btnBasePrint: TcxButton
      Width = 88
      ExplicitWidth = 88
    end
  end
  inherited pnlMain: TPanel
    Width = 1068
    Height = 569
    Color = clSilver
    ParentBackground = False
    ExplicitWidth = 1062
    ExplicitHeight = 560
    object vgCirrhosisSeverity: TcxDBVerticalGrid
      Left = 0
      Top = 0
      Width = 1068
      Height = 428
      Align = alClient
      FindPanel.DisplayMode = fpdmManual
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LayoutStyle = lsMultiRecordView
      OptionsView.CellEndEllipsis = True
      OptionsView.GridLineColor = clWhite
      OptionsView.RowHeaderWidth = 206
      OptionsView.RowHeight = 18
      OptionsView.ValueWidth = 116
      OptionsView.MultiRecordEvenOddContentStyle = mrcsByRecord
      OptionsBehavior.RowFiltering = bTrue
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      Navigator.Buttons.CustomButtons = <>
      ParentFont = False
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      OnEditValueChanged = vgCirrhosisSeverityEditValueChanged
      DataController.DataSource = DataSource2
      ExplicitWidth = 1062
      ExplicitHeight = 419
      Version = 1
      object vgCirrhosisSeverityDate: TcxDBEditorRow
        Properties.Caption = 'Tarih'
        Properties.RepositoryItem = dmGeneral.eriStandardsDateItemDATE
        Properties.DataBinding.FieldName = 'CTIME'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgCirrhosisSeverityHour: TcxDBEditorRow
        Properties.Caption = 'Saat'
        Properties.RepositoryItem = dmGeneral.eriStandardsTimeItemHM
        Properties.DataBinding.FieldName = 'CTIME'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vgCirrhosisSeverityCuser: TcxDBEditorRow
        Properties.Caption = 'Kay'#305't Yapan Kullan'#305'c'#305
        Properties.DataBinding.FieldName = 'CUSER'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgCirrhosisSeverityParameter: TcxCategoryRow
        Properties.Caption = 'Parametreler'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgCirrhosisSeverityTOTAL_BILIRUBIN: TcxDBEditorRow
        Properties.Caption = 'Toplam Biluribin(mg/dl)'
        Properties.DataBinding.FieldName = 'TOTAL_BILIRUBIN'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgCirrhosisSeveritySERUM_ALBUMIN: TcxDBEditorRow
        Properties.Caption = 'Albumin(g/dl)'
        Properties.DataBinding.FieldName = 'SERUM_ALBUMIN'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vgCirrhosisSeverityPT_INR: TcxDBEditorRow
        Properties.Caption = 'INR'
        Properties.DataBinding.FieldName = 'PT_INR'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object vgCirrhosisSeverityASCITES: TcxDBEditorRow
        Properties.Caption = 'Ascites'
        Properties.DataBinding.FieldName = 'ASCITES'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object vgCirrhosisSeverityHEPATIC_ENCEPHALOPATHY: TcxDBEditorRow
        Properties.Caption = 'Hepatik Ensefalopati'
        Properties.DataBinding.FieldName = 'HEPATIC_ENCEPHALOPATHY'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object vgCirrhosisSeverityOther: TcxCategoryRow
        Properties.Caption = 'Di'#287'er'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object vgCirrhosisSeverityTOTAL_POINTS: TcxDBEditorRow
        Properties.Caption = 'Skor'
        Properties.DataBinding.FieldName = 'TOTAL_POINTS'
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
      object vgCirrhosisSeverityNOTE: TcxDBEditorRow
        Properties.Caption = 'Not'
        Properties.DataBinding.FieldName = 'NOTE'
        ID = 11
        ParentID = -1
        Index = 11
        Version = 1
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 428
      Width = 1068
      Height = 141
      Align = alBottom
      Color = clScrollBar
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 419
      ExplicitWidth = 1062
      object cxMemo1: TcxMemo
        Left = 1
        Top = -61
        Align = alBottom
        Lines.Strings = (
          
            '                                                                ' +
            '                                                              '
          '      '
          ''
          ''
          ''
          
            '                  Skor      S'#305'n'#305'flama       1 Y'#305'll'#305'k Ya'#351'am     2' +
            ' Y'#305'll'#305'k Ya'#351'am                                               MELD' +
            ' Skoru = 10 [0.957 Log(Serum kreatinin) + 0.378 Log(Total Biluri' +
            'bin) + 1.12 Log(INR) + 0.643]        '
          '  '
          
            '                   5-6           A               %100           ' +
            '      %85                                                       ' +
            '                                                                ' +
            '                        '
          
            '                   7-9           B                %80           ' +
            '    %55-%60                                                     ' +
            '                                                                ' +
            '                '
          
            '                  10-15        C                %45             ' +
            '    %35                                                         ' +
            '                                                                ' +
            '                 '
          
            '                                                                ' +
            '                                                                ' +
            '     '
          
            '             *Primer bilyer siroz ve primer sklernozan klonjit g' +
            'ibi kolestatik'
          
            '           hastal'#305'klarda bil'#252'ribinin '#252'st s'#305'n'#305'r de'#287'eri 1 puan i'#231'i' +
            'n 4mg/dl,2 puan i'#231'in'
          
            '          10mg/dl olarak hesaplan'#305'r.                            ' +
            '                                                    '
          '                                                    ')
        Style.BorderStyle = ebsNone
        Style.Color = clScrollBar
        StyleFocused.Color = clScrollBar
        TabOrder = 1
        ExplicitWidth = 1060
        Height = 201
        Width = 1066
      end
      object cxMemo2: TcxMemo
        Left = 463
        Top = 22
        Lines.Strings = (
          ''
          '     MELD Skoru               Mortalite'
          '        <9                            %2'
          '       10-19                         %5'
          '       20-29                         %20'
          '       30-39                         %50'
          '       >40                            %70')
        Style.Color = clScrollBar
        StyleFocused.Color = clScrollBar
        StyleHot.Color = clScrollBar
        TabOrder = 2
        Height = 115
        Width = 216
      end
      object cxMemo3: TcxMemo
        Left = 685
        Top = 32
        Lines.Strings = (
          
            '    *Her parametre i'#231'in minimum kabul edilebilir de'#287'er 1, serum ' +
            'kreatinin i'#231'in '
          'maksimum kabul edilebilir de'#287'er 4'#39't'#252'r. MELD Skoru 40 olabilir.')
        Style.Color = clScrollBar
        StyleFocused.BorderStyle = ebsNone
        StyleFocused.Color = clScrollBar
        StyleHot.Color = clScrollBar
        TabOrder = 0
        Height = 41
        Width = 379
      end
    end
  end
  inherited gbBaseTop: TcxGroupBox
    ExplicitWidth = 1062
    Width = 1068
    inherited pnlGenLeft: TPanel
      inherited pnlPatientDetail: TPanel
        inherited Panel7: TPanel
          inherited cxLabel6: TcxLabel
            AnchorY = 8
          end
          inherited lblDoctor: TcxLabel
            AnchorY = 25
          end
        end
        inherited Panel8: TPanel
          inherited lblAssCaption: TcxLabel
            AnchorY = 8
          end
          inherited lblAss: TcxLabel
            AnchorY = 25
          end
        end
        inherited pnlIsPregnant: TPanel
          inherited cxLabel7: TcxLabel
            AnchorY = 8
          end
        end
        inherited Panel17: TPanel
          inherited cxLabel12: TcxLabel
            AnchorY = 8
          end
          inherited lblSecAss: TcxLabel
            AnchorY = 25
          end
        end
        inherited Panel1: TPanel
          inherited lblLength: TcxLabel
            AnchorY = 35
          end
        end
        inherited Panel2: TPanel
          inherited lblWeight: TcxLabel
            AnchorY = 35
          end
        end
        inherited Panel3: TPanel
          inherited cxLabel13: TcxLabel
            AnchorY = 8
          end
          inherited teUPN: TcxTextEdit
            ExplicitHeight = 20
          end
        end
      end
      inherited pnlPatientInfo: TPanel
        inherited lblPatName: TcxLabel
          AnchorX = 124
          AnchorY = 18
        end
        inherited pnlProt: TPanel
          inherited cxLabel1: TcxLabel
            AnchorY = 8
          end
          inherited teProt: TcxTextEdit
            ExplicitHeight = 20
          end
        end
        inherited pnlPatInfoAge: TPanel
          inherited lblAge: TcxLabel
            AnchorY = 35
          end
        end
        inherited pnlPatInfoBirthDate: TPanel
          inherited lblBirth: TcxLabel
            AnchorY = 35
          end
        end
        inherited pnlPatInfoSexuality: TPanel
          inherited lblGender: TcxLabel
            AnchorY = 35
          end
        end
      end
    end
  end
  inherited AppEvntsBase: TApplicationEvents
    Left = 680
    Top = 141
  end
  inherited OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'SELECT CPS.*, CPS.ROWID '
      'FROM MC_CIRRHOSIS_P_SEVERITY CPS'
      'WHERE CPS.COM_ID = :COM_ID')
    Variables.Data = {
      04000000010000000E0000003A0043004F004D005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_CIRRHOSIS_SEVERITY_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    Left = 578
    Top = 227
  end
  inherited DataSource1: TDataSource
    Left = 573
    Top = 329
  end
  inherited OracleDataSet1Det: TOracleDataSet
    SQL.Strings = (
      'SELECT CPSD.*, CPSD.ROWID'
      '  FROM MC_CIRRHOSIS_P_SEVERITY_DET CPSD'
      ' WHERE CPSD.CPS_ID = : CPS_ID'
      ' ORDER BY CPSD.CTIME DESC')
    Variables.Data = {
      04000000010000000E0000003A004300500053005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_CIRRHOSIS_SEVERITY_DET_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    DetailFields = 'CPS_ID'
    Left = 709
    Top = 229
  end
  inherited DataSource2: TDataSource
    Left = 695
    Top = 323
  end
end
