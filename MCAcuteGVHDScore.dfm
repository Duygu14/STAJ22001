inherited frmMCAcuteGVHDScore: TfrmMCAcuteGVHDScore
  Caption = 'Akut GVHD Klinik Skorlama'
  ClientHeight = 511
  ClientWidth = 583
  ExplicitWidth = 601
  ExplicitHeight = 558
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Width = 583
    ExplicitWidth = 583
    inherited btnBaseClose: TcxButton
      Left = 510
      ExplicitLeft = 504
    end
  end
  inherited pnlMain: TPanel
    Width = 583
    Height = 399
    ExplicitWidth = 583
    ExplicitHeight = 399
    object vgAcuteGVHDScore: TcxDBVerticalGrid
      Left = 0
      Top = 0
      Width = 589
      Height = 408
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
      OnEditValueChanged = vgAcuteGVHDScoreEditValueChanged
      DataController.DataSource = DataSource2
      ExplicitWidth = 583
      ExplicitHeight = 399
      Version = 1
      object vgAcuteGVHDScoreCategoryRow1: TcxCategoryRow
        Properties.Caption = 'Kay'#305't Bilgisi'
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgAcuteGVHDScoreDBEditorRow2: TcxDBEditorRow
        Properties.Caption = 'Tarih'
        Properties.RepositoryItem = dmGeneral.eriStandardsDateItemDATE
        Properties.DataBinding.FieldName = 'CTIME'
        Properties.Options.Editing = False
        Styles.Header = dmGeneral.cxStyle1
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vgAcuteGVHDScorePROCESS_TIME: TcxDBEditorRow
        Properties.Caption = 'Saat'
        Properties.RepositoryItem = dmGeneral.eriStandardsTimeItemHM
        Properties.DataBinding.FieldName = 'PROCESS_TIME'
        Properties.Options.Editing = False
        Styles.Header = dmGeneral.cxStyle1
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgAcuteGVHDScoreCUSER: TcxDBEditorRow
        Properties.Caption = 'Hem'#351'ire'
        Properties.DataBinding.FieldName = 'CUSER'
        Properties.Options.Editing = False
        Styles.Header = dmGeneral.cxStyle1
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgAcute_GVHD_Score_CategoryRow2: TcxCategoryRow
        Properties.Caption = 'Akut GVHD Klinik Skorlama'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgAcuteGVHDScoreSKIN: TcxDBEditorRow
        Properties.Caption = 'Deri'
        Properties.DataBinding.FieldName = 'SKIN'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vgAcuteGVHDScoreLIVER: TcxDBEditorRow
        Properties.Caption = 'Karaci'#287'er'
        Properties.DataBinding.FieldName = 'LIVER'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object vgAcuteGVHDScoreUPPER_GIS: TcxDBEditorRow
        Properties.Caption = #220'st GIS'
        Properties.DataBinding.FieldName = 'UPPER_GIS'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object vgAcuteGVHDScoreLOWER_GIS: TcxDBEditorRow
        Properties.Caption = 'Alt GIS'
        Properties.DataBinding.FieldName = 'LOWER_GIS'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object vgAcuteGVHDScoreCategoryRow2: TcxCategoryRow
        Properties.Caption = 'Di'#287'er'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object vgAcuteGVHDScoreSCORE: TcxDBEditorRow
        Properties.Caption = 'Puan'
        Properties.DataBinding.FieldName = 'SCORE'
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
    end
  end
  inherited gbBaseTop: TcxGroupBox
    ExplicitWidth = 583
    Width = 583
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
        end
      end
      inherited pnlPatientInfo: TPanel
        inherited shpFirst: TShape
          Left = 227
          ExplicitLeft = 227
        end
        inherited lblPatName: TcxLabel
          Left = 0
          ExplicitLeft = 0
          AnchorX = 114
          AnchorY = 18
        end
        inherited pnlProt: TPanel
          inherited cxLabel1: TcxLabel
            AnchorY = 8
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
    Left = 436
    Top = 388
  end
  inherited OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'SELECT ACS.*,ACS.ROWID'
      'FROM MC_ACUTE_GVHD_SCORE ACS'
      'WHERE ACS.COM_ID =: COM_ID')
    Variables.Data = {
      04000000010000000E0000003A0043004F004D005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_ACUTE_GVHD_SCORE_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    Left = 168
    Top = 320
  end
  inherited DataSource1: TDataSource
    Left = 178
    Top = 430
  end
  inherited OracleDataSet1Det: TOracleDataSet
    SQL.Strings = (
      'SELECT ASD.*, ASD.ROWID'
      '  FROM MC_ACUTE_GVHD_SCORE_DET ASD'
      ' WHERE ASD.AGS_ID = :AGS_ID'
      ' ORDER BY ASD.CTIME DESC')
    Variables.Data = {
      04000000010000000E0000003A004100470053005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_ACUTE_GVHD_SCORE_DETID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    DetailFields = 'AGS_ID'
    Left = 310
    Top = 316
  end
  inherited DataSource2: TDataSource
    Left = 334
    Top = 436
  end
end
