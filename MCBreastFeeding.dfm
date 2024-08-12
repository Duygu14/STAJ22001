inherited frmMCBreastFeeding: TfrmMCBreastFeeding
  Caption = 'Emzirme'
  ClientHeight = 519
  ClientWidth = 742
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Width = 742
    ExplicitWidth = 736
    inherited btnBaseClose: TcxButton
      Left = 663
      ExplicitLeft = 657
    end
  end
  inherited pnlMain: TPanel
    Width = 742
    Height = 407
    ExplicitWidth = 736
    ExplicitHeight = 398
    object vgBreastFeeding: TcxDBVerticalGrid
      Left = 0
      Top = 0
      Width = 742
      Height = 407
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
      DataController.DataSource = DataSource2
      ExplicitWidth = 715
      ExplicitHeight = 369
      Version = 1
      object vgBreastFeedingCategoryRow1: TcxCategoryRow
        Properties.Caption = 'Kay'#305't Bilgisi'
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgBreastFeedingCTIME: TcxDBEditorRow
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
      object vgBreastFeedingPROCESS_TIME: TcxDBEditorRow
        Properties.Caption = 'Saat'
        Properties.RepositoryItem = dmGeneral.eriStandardsTimeItemHM
        Properties.DataBinding.FieldName = 'CTIME'
        Properties.Options.Editing = False
        Styles.Header = dmGeneral.cxStyle1
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgBreastFeedingCUSER: TcxDBEditorRow
        Properties.Caption = 'Kay'#305't Yapan Kullan'#305'c'#305
        Properties.DataBinding.FieldName = 'CUSER'
        Properties.Options.Editing = False
        Styles.Header = dmGeneral.cxStyle1
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgBreastFeedingBODY_POSITION: TcxDBEditorRow
        Properties.Caption = 'V'#252'cut Pozisyonu'
        Properties.DataBinding.FieldName = 'BODY_POSITION'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgBreastFeedingBABY_BEHAVIOR: TcxDBEditorRow
        Properties.Caption = 'Bebe'#287'in Davran'#305#351#305
        Properties.DataBinding.FieldName = 'BABY_BEHAVIOR'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vgBreastFeedingEMOTIONAL_BOND: TcxDBEditorRow
        Properties.Caption = 'Duygusal Ba'#287'lanma'
        Properties.DataBinding.FieldName = 'EMOTIONAL_BOND'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object vgBreastFeedingANATOMY: TcxDBEditorRow
        Properties.Caption = 'Anatomi'
        Properties.DataBinding.FieldName = 'ANATOMY'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object vgBreastFeedingFEEDING: TcxDBEditorRow
        Properties.Caption = 'Emme'
        Properties.DataBinding.FieldName = 'FEEDING'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object vgBreastFeedingFEEDING_TIME: TcxDBEditorRow
        Properties.Caption = 'Emme i'#231'in Ayr'#305'lan Zaman'
        Properties.DataBinding.FieldName = 'FEEDING_TIME'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object vgBreastFeedingCategoryRow2: TcxCategoryRow
        Properties.Caption = 'Di'#287'er'
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
      object vgBreastFeedingNOTE: TcxDBEditorRow
        Properties.Caption = 'Not'
        Properties.DataBinding.FieldName = 'NOTE'
        ID = 11
        ParentID = -1
        Index = 11
        Version = 1
      end
    end
  end
  inherited gbBaseTop: TcxGroupBox
    Width = 742
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
    Left = 624
    Top = 136
  end
  inherited OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'SELECT BF.*,BF.ROWID'
      'FROM MC_BREASTFEEDING_OBSERVE_FORM BF'
      'WHERE BF.COM_ID = : COM_ID')
    Variables.Data = {
      04000000010000000E0000003A0043004F004D005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_BREASTFEEDING_ID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    Left = 464
    Top = 232
  end
  inherited DataSource1: TDataSource
    Left = 504
    Top = 336
  end
  inherited OracleDataSet1Det: TOracleDataSet
    SQL.Strings = (
      'SELECT BFD.* , BFD.ROWID '
      'FROM MC_BREASTFEED_OBS_FORM_DET BFD'
      'WHERE BFD.BOF_ID = : BOF_ID'
      'ORDER BY BFD.CTIME DESC')
    Variables.Data = {
      04000000010000000E0000003A0042004F0046005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_BREASTFEEDING_DETID_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    DetailFields = 'BOF_ID'
    Left = 616
    Top = 240
  end
  inherited DataSource2: TDataSource
    Left = 632
    Top = 328
  end
end
