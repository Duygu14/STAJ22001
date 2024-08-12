inherited frmMCConstraintEval: TfrmMCConstraintEval
  Caption = 'K'#305's'#305'tlama De'#287'erlendirme Formu'
  ClientHeight = 758
  ClientWidth = 1091
  ExplicitWidth = 1103
  ExplicitHeight = 796
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Width = 1091
    ExplicitWidth = 1085
    inherited btnBaseClose: TcxButton
      Left = 1012
      ExplicitLeft = 1006
    end
  end
  inherited pnlMain: TPanel
    Width = 1091
    Height = 646
    ExplicitWidth = 1085
    ExplicitHeight = 637
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1091
      Height = 233
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 1085
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 717
        Height = 231
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 711
        object grdConstaintEvalDetail: TcxGrid
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 709
          Height = 223
          Align = alClient
          PopupMenu = ppmConstraintEval
          TabOrder = 0
          ExplicitWidth = 703
          object tvConstaintEvalDetail: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnFocusedRecordChanged = tvConstaintEvalDetailFocusedRecordChanged
            DataController.DataSource = DataSource2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            object tvConstaintEvalDetailSTARTTIME: TcxGridDBColumn
              Caption = 'Ba'#351'lang'#305#231' Tarihi'
              DataBinding.FieldName = 'STARTTIME'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxDateEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 104
            end
            object tvConstaintEvalDetailSTART_DEPT_ID: TcxGridDBColumn
              Caption = 'B'#246'l'#252'm'
              DataBinding.FieldName = 'START_DEPTNAME'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tvConstaintEvalDetailSTART_DEPT_IDPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object tvConstaintEvalDetailSTART_DR_ID: TcxGridDBColumn
              Caption = 'Doktor'
              DataBinding.FieldName = 'START_DRNAME'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tvConstaintEvalDetailSTART_DR_IDPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 98
            end
            object tvConstaintEvalDetailFINISHTIME: TcxGridDBColumn
              Caption = 'Biti'#351' Tarihi'
              DataBinding.FieldName = 'FINISHTIME'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxDateEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 127
            end
            object tvConstaintEvalDetailFINISH_DEPT_ID: TcxGridDBColumn
              Caption = 'B'#246'l'#252'm'
              DataBinding.FieldName = 'FINISH_DEPTNAME'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tvConstaintEvalDetailFINISH_DEPT_IDPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 137
            end
            object tvConstaintEvalDetailFINISH_DR_ID: TcxGridDBColumn
              Caption = 'Doktor'
              DataBinding.FieldName = 'FINISH_DRNAME'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = tvConstaintEvalDetailFINISH_DR_IDPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 123
            end
          end
          object grdConstaintEvalDetailBandedTableView1: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
                Caption = 'K'#305's'#305'tlamay'#305' Yapan'
              end
              item
                Caption = 'K'#305's'#305'tlamay'#305' Yapan'
                Position.BandIndex = 0
                Position.ColIndex = 0
              end>
          end
          object grdConstaintEvalDetailBandedTableView2: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
                Caption = 'K'#305#305'stlamay'#305' Sonland'#305'ran'
              end
              item
                Caption = 'K'#305's'#305'tlamay'#305' Sonland'#305'ran'
                Position.BandIndex = 0
                Position.ColIndex = 0
              end>
          end
          object grdConstaintEvalDetailBandedTableView3: TcxGridBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end
              item
              end>
          end
          object lvConstaintEvalDetail: TcxGridLevel
            GridView = tvConstaintEvalDetail
          end
        end
      end
      object Panel6: TPanel
        Left = 718
        Top = 1
        Width = 372
        Height = 231
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 712
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 370
          Height = 120
          Align = alTop
          TabOrder = 0
          object TPanel
            Left = 1
            Top = 1
            Width = 192
            Height = 118
            Align = alLeft
            TabOrder = 0
            object cxGroupBox2: TcxGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Align = alClient
              Caption = 'K'#305's'#305'tlama Nedenleri'
              TabOrder = 0
              Height = 110
              Width = 184
              object ccbReasonForRestriction: TcxDBCheckComboBox
                Left = 11
                Top = 24
                DataBinding.DataField = 'REASONS_FOR_RESTRICTION'
                DataBinding.DataSource = DataSource2
                Properties.Items = <>
                TabOrder = 0
                Text = 'None selected'
                Width = 158
              end
              object mmReasonForRestrictionExplanation: TcxDBMemo
                Left = 11
                Top = 51
                DataBinding.DataField = 'REASONS_FOR_RESTRICTION_EXP'
                DataBinding.DataSource = DataSource2
                TabOrder = 1
                Height = 38
                Width = 158
              end
            end
          end
          object Panel13: TPanel
            Left = 193
            Top = 1
            Width = 176
            Height = 118
            Align = alClient
            TabOrder = 1
            object cxGroupBox1: TcxGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Align = alClient
              Caption = 'K'#305's'#305'tlama Y'#246'ntemleri'
              TabOrder = 0
              Height = 110
              Width = 168
              object cbPyhscalEvalSelect: TcxDBCheckBox
                Left = 16
                Top = 24
                Caption = 'Fiziksel K'#305's'#305'tlama'
                DataBinding.DataField = 'PHYSICAL_RESTRICT'
                DataBinding.DataSource = DataSource2
                Properties.OnChange = cbPyhscalEvalSelectPropertiesChange
                Style.TransparentBorder = False
                TabOrder = 0
              end
              object cbPharmacologicalEvalSelect: TcxDBCheckBox
                Left = 16
                Top = 50
                Caption = 'Farmakolojik K'#305's'#305'tlama'
                DataBinding.DataField = 'PHARMACOLOGICAL_RESTRICT'
                DataBinding.DataSource = DataSource2
                Style.TransparentBorder = False
                TabOrder = 1
              end
            end
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 121
          Width = 370
          Height = 109
          Align = alClient
          TabOrder = 1
          object Panel12: TPanel
            Left = 184
            Top = 1
            Width = 185
            Height = 107
            Align = alRight
            TabOrder = 0
            object cxGroupBox3: TcxGroupBox
              AlignWithMargins = True
              Left = 4
              Top = 4
              Align = alClient
              Caption = 'Fiziksel K'#305's'#305'tlama Y'#246'ntemleri'
              TabOrder = 0
              Height = 99
              Width = 177
              object ccbPhysicalRestraintMethods: TcxDBCheckComboBox
                Left = 11
                Top = 22
                DataBinding.DataField = 'PHYSICAL_RESTRAINT_METHODS'
                DataBinding.DataSource = DataSource2
                Enabled = False
                Properties.Items = <>
                TabOrder = 0
                Text = 'None selected'
                Width = 158
              end
              object mmPhysicalRestraintMethodsExplanation: TcxDBMemo
                Left = 16
                Top = 49
                DataBinding.DataField = 'PHYSICAL_RESTRAINT_METHODS_EXP'
                DataBinding.DataSource = DataSource2
                Enabled = False
                TabOrder = 1
                Height = 40
                Width = 158
              end
            end
          end
          object Panel14: TPanel
            Left = 1
            Top = 1
            Width = 185
            Height = 107
            Align = alLeft
            TabOrder = 1
            object cxGroupBox4: TcxGroupBox
              Left = 1
              Top = 1
              Align = alClient
              Caption = 'Alternatif Se'#231'enekler'
              TabOrder = 0
              Height = 105
              Width = 183
              object ccbAlternativeInitiatives: TcxDBCheckComboBox
                Left = 16
                Top = 24
                DataBinding.DataField = 'ALTERNATIVE_INITIATIVES'
                DataBinding.DataSource = DataSource2
                Properties.Items = <>
                TabOrder = 0
                Text = 'None selected'
                Width = 153
              end
              object mmAlternativeInitiativesExplanation: TcxDBMemo
                Left = 16
                Top = 51
                DataBinding.DataField = 'ALTERNATIVE_INITIATIVES_EXP'
                DataBinding.DataSource = DataSource2
                TabOrder = 1
                Height = 38
                Width = 153
              end
            end
          end
        end
      end
    end
    object Panel19: TPanel
      Left = 0
      Top = 403
      Width = 1091
      Height = 243
      Align = alClient
      Caption = 'Panel19'
      TabOrder = 1
      ExplicitWidth = 1085
      ExplicitHeight = 234
      object grdConstaintEvalCont: TcxGrid
        AlignWithMargins = True
        Left = 4
        Top = 21
        Width = 1083
        Height = 218
        Align = alClient
        PopupMenu = ppmConstraintEval
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        ExplicitWidth = 1077
        ExplicitHeight = 209
        object tvConstaintEvalCont: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCanFocusRecord = tvConstaintEvalContCanFocusRecord
          DataController.DataSource = dsConstraintEvalControls
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object tvConstaintEvalContPROCESS_TIME: TcxGridDBColumn
            Caption = #304#351'lem Zaman'#305
            DataBinding.FieldName = 'PROCESS_TIME'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object tvConstaintEvalContBEHAVIOR_NOTES: TcxGridDBColumn
            Caption = 'Davran'#305#351
            DataBinding.FieldName = 'BEHAVIOR_NOTES'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
          end
          object tvConstaintEvalContCIRCULATION: TcxGridDBColumn
            Caption = 'Dola'#351#305'm'
            DataBinding.FieldName = 'CIRCULATION'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
          end
          object tvConstaintEvalContCONSTRAINATION_COMPLICATION: TcxGridDBColumn
            Caption = 'Komplikasyon'
            DataBinding.FieldName = 'CONSTRAINATION_COMPLICATION'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            Width = 76
          end
          object tvConstaintEvalContNUTRITION: TcxGridDBColumn
            Caption = 'Beslenme'
            DataBinding.FieldName = 'NUTRITION'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
          end
          object tvConstaintEvalContELIMINATION: TcxGridDBColumn
            Caption = 'Eliminasyon'
            DataBinding.FieldName = 'ELIMINATION'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object tvConstaintEvalContHYGIENE_REQUIREMENT: TcxGridDBColumn
            Caption = 'Hijyen Gereksinimi'
            DataBinding.FieldName = 'HYGIENE_REQUIREMENT'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 111
          end
          object tvConstaintEvalContMOBILIZATION: TcxGridDBColumn
            Caption = 'Mobilizasyon'
            DataBinding.FieldName = 'MOBILIZATION'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object tvConstaintEvalContOXYGEN_NEEDS: TcxGridDBColumn
            Caption = 'Oksijen '#304'htiyac'#305
            DataBinding.FieldName = 'OXYGEN_NEEDS'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object tvConstaintEvalContPER_ID: TcxGridDBColumn
            Caption = 'De'#287'erlendiren'
            DataBinding.FieldName = 'PER_NAME'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = tvConstaintEvalContPER_IDPropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object tvConstaintEvalContEXPLANATION: TcxGridDBColumn
            Caption = 'Yorum'
            DataBinding.FieldName = 'EXPLANATION'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 61
          end
          object tvConstaintEvalContTERMINATION_OF_RESTRICTIONS: TcxGridDBColumn
            Caption = 'K'#305's'#305'tlama Sonland'#305'rma'
            DataBinding.FieldName = 'TERMINATION_OF_RESTRICTIONS'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            Properties.OnEditValueChanged = tvConstaintEvalContTERMINATION_OF_RESTRICTIONSPropertiesEditValueChanged
            HeaderAlignmentHorz = taCenter
            Width = 126
          end
          object tvConstaintEvalContDELETE: TcxGridDBColumn
            Caption = 'Sil'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.Images = dmGeneral.ilPatMonitoring
            Properties.ViewStyle = vsButtonsOnly
            Properties.OnButtonClick = tvConstaintEvalContDELETEPropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Width = 61
          end
        end
        object lvConstaintEvalCont: TcxGridLevel
          Caption = 'Hasta Kontrol Listesi'
          GridView = tvConstaintEvalCont
        end
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 
          'Hasta Ajite ise 30 dakikada bir kontrol edilecek. E'#287'er hasta Aji' +
          'te de'#287'il ise 2 saatte bir de'#287'erlendirilecek.'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        ExplicitWidth = 1083
      end
    end
    object Panel15: TPanel
      Left = 0
      Top = 233
      Width = 1091
      Height = 170
      Align = alTop
      Caption = 'Panel15'
      TabOrder = 2
      ExplicitWidth = 1085
      object Panel16: TPanel
        Left = 724
        Top = 1
        Width = 366
        Height = 168
        Align = alRight
        Caption = 'Panel16'
        TabOrder = 0
        ExplicitLeft = 718
        object cxGroupBox5: TcxGroupBox
          Left = 1
          Top = 1
          Align = alClient
          Caption = 'Hasta Yak'#305'n'#305
          TabOrder = 0
          Height = 166
          Width = 364
          object cxButton2: TcxButton
            Left = 129
            Top = -75
            Width = 32
            Height = 25
            Caption = '-'
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object vgCominicationPersonİnformation: TcxDBVerticalGrid
            Left = 4
            Top = 16
            Width = 261
            Height = 134
            Align = alLeft
            LookAndFeel.NativeStyle = False
            OptionsView.RowHeaderWidth = 124
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.Active = True
            ScrollbarAnnotations.CustomAnnotations = <>
            TabOrder = 0
            DataController.DataSource = dsPatientContact
            Version = 1
            object vgCominicationPersonInformationKINSHIP: TcxDBEditorRow
              Properties.Caption = 'Yak'#305'nl'#305'k Derecesi'
              Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.EditProperties.Items = <>
              Properties.DataBinding.FieldName = 'KINSHIP'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object vgCominicationPersonInformationRELATIVE_PATIENT_INFORMATION: TcxDBEditorRow
              Properties.Caption = 'Bilgilendir'
              Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DataBinding.FieldName = 'RELATIVE_PATIENT_INFORMATION'
              ID = 1
              ParentID = -1
              Index = 1
              Version = 1
            end
            object vgCominicationPersonInformationNAME: TcxDBEditorRow
              Properties.Caption = 'Ad'
              Properties.DataBinding.FieldName = 'NAME'
              ID = 2
              ParentID = -1
              Index = 2
              Version = 1
            end
            object vgCominicationPersonInformationSURNAME: TcxDBEditorRow
              Properties.Caption = 'Soyad'
              Properties.DataBinding.FieldName = 'SURNAME'
              ID = 3
              ParentID = -1
              Index = 3
              Version = 1
            end
            object vgCominicationPersonInformationMOBILE_PHONE: TcxDBEditorRow
              Properties.Caption = 'Cep Telefonu'
              Properties.DataBinding.FieldName = 'MOBILE_PHONE'
              ID = 4
              ParentID = -1
              Index = 4
              Version = 1
            end
            object vgCominicationPersonInformationWORK_PHONE: TcxDBEditorRow
              Properties.Caption = #304#351' Telefonu'
              Properties.DataBinding.FieldName = 'WORK_PHONE'
              ID = 5
              ParentID = -1
              Index = 5
              Version = 1
            end
            object vgCominicationPersonInformationHOME_PHONE: TcxDBEditorRow
              Properties.Caption = 'Ev Telefonu'
              Properties.DataBinding.FieldName = 'HOME_PHONE'
              ID = 6
              ParentID = -1
              Index = 6
              Version = 1
            end
            object vgCominicationPersonInformationPERSON_STATUS: TcxDBEditorRow
              Properties.Caption = 'Ki'#351'i Durumu'
              Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.EditProperties.Items = <>
              Properties.DataBinding.FieldName = 'PERSON_TYPE'
              ID = 7
              ParentID = -1
              Index = 7
              Version = 1
            end
            object vgCominicationPersonInformationRELATIVE_PATIENT_EXPLANATION: TcxDBEditorRow
              Properties.Caption = 'A'#231#305'klama'
              Properties.DataBinding.FieldName = 'RELATIVE_PATIENT_EXPLANATION'
              ID = 8
              ParentID = -1
              Index = 8
              Version = 1
            end
          end
        end
        object btnContactDelete: TcxButton
          Left = 140
          Top = 4
          Width = 29
          Height = 22
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = dmGeneral.ilPatMonitoring
          TabOrder = 1
          OnClick = btnContactDeleteClick
        end
        object btnAddContact: TcxButton
          Left = 105
          Top = 4
          Width = 29
          Height = 22
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = dmGeneral.ilPatMonitoring
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnAddContactClick
        end
      end
      object Panel18: TPanel
        Left = 1
        Top = 1
        Width = 723
        Height = 168
        Align = alClient
        Caption = 'Panel15'
        TabOrder = 1
        ExplicitWidth = 717
        object grdFarmaOrder: TcxGrid
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 715
          Height = 160
          Align = alClient
          TabOrder = 0
          RootLevelOptions.DetailTabsPosition = dtpTop
          ExplicitWidth = 709
          object tvFarmaOrder: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = dsPharmacologicalOrder
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object tvFarmaOrderNAME: TcxGridDBColumn
              Caption = #304'la'#231' Ad'#305
              DataBinding.FieldName = 'NAME'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Width = 166
            end
            object tvFarmaOrderDOSE: TcxGridDBColumn
              Caption = 'Dozu'
              DataBinding.FieldName = 'APP_FREQUENCE_INFO'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Width = 196
            end
            object tvFarmaOrderWAYOFUSE: TcxGridDBColumn
              Caption = 'Kullan'#305'm '#350'ekli'
              DataBinding.FieldName = 'DUM_NAME'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Width = 208
            end
            object tvFarmaOrderDELETE: TcxGridDBColumn
              Caption = 'Sil'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.Images = dmGeneral.ilPatMonitoring
              Properties.ViewStyle = vsButtonsOnly
              Properties.OnButtonClick = tvFarmaOrderDELETEPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
          end
          object lvFarmaOrder: TcxGridLevel
            Caption = 'Farmakolojik K'#305's'#305't'
            GridView = tvFarmaOrder
          end
        end
        object btnAddOrder: TcxButton
          Left = 101
          Top = 7
          Width = 56
          Height = 23
          Caption = ' Ekle'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = dmGeneral.ilPatMonitoring
          TabOrder = 1
          OnClick = btnAddOrderClick
        end
      end
    end
  end
  inherited gbBaseTop: TcxGroupBox
    ExplicitWidth = 1085
    Width = 1091
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
  object btnCosntraitEvalControlAdd: TcxButton [3]
    Left = 131
    Top = 539
    Width = 23
    Height = 22
    OptionsImage.ImageIndex = 0
    OptionsImage.Images = dmGeneral.ilPatMonitoring
    TabOrder = 3
    OnClick = btnCosntraitEvalControlAddClick
  end
  inherited AppEvntsBase: TApplicationEvents
    Left = 768
    Top = 20
  end
  inherited OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'SELECT CE.*,CE.ROWID'
      'FROM MC_CONSTRAINT_EVAL CE'
      'WHERE CE.COM_ID =: COM_ID')
    Variables.Data = {
      04000000010000000E0000003A0043004F004D005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_CONSTRAINT_EVA_SEQ_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    Left = 62
    Top = 196
  end
  inherited DataSource1: TDataSource
    Left = 52
    Top = 274
  end
  inherited OracleDataSet1Det: TOracleDataSet
    SQL.Strings = (
      'SELECT CED.*,CED.ROWID,ROWNUM,'
      
        '     SUBSTR(GET_DOCTOR_NAME(CED.START_DR_ID,0,0,0),0,91) AS STAR' +
        'T_DRNAME,'
      
        '     SUBSTR(GET_DOCTOR_NAME(CED.FINISH_DR_ID,0,0,0),0,91) AS FIN' +
        'ISH_DRNAME,'
      
        '     SUBSTR(GET_DEPT_NAME(CED.START_DEPT_ID),0,50) AS START_DEPT' +
        'NAME,'
      
        '     SUBSTR(GET_DEPT_NAME(CED.FINISH_DEPT_ID),0,50) AS FINISH_DE' +
        'PTNAME '
      'FROM MC_CONSTRAINT_EVAL_DETAILS CED'
      'WHERE CED.CE_ID =: CE_ID'
      'ORDER BY CED.STARTTIME DESC')
    Variables.Data = {
      04000000010000000C0000003A00430045005F00490044000300000000000000
      00000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_CONSTRAINT_EVA_DET_SEQ_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    DetailFields = 'CE_ID'
    BeforePost = OracleDataSet1DetBeforePost
    Left = 300
    Top = 190
  end
  inherited DataSource2: TDataSource
    Left = 314
    Top = 268
  end
  object odsPharmacologicalOrder: TOracleDataSet
    SQL.Strings = (
      'SELECT CEO.*,CEO.ROWID,M.NAME '
      'FROM MC_CONSTRAINT_EVAL_ORDERS CEO'
      'JOIN MATERIALS M'
      ' ON M.ID = CEO.ORDER_M_ID'
      'WHERE CEO.CED_ID =: CED_ID')
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A004300450044005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_CONSTRAINT_EVA_ORD_SEQ_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    Master = OracleDataSet1Det
    MasterFields = 'ID'
    DetailFields = 'CED_ID'
    Session = dmMain.OraSession
    Left = 132
    Top = 424
  end
  object dsPharmacologicalOrder: TDataSource
    DataSet = odsPharmacologicalOrder
    Left = 312
    Top = 432
  end
  object odsConstraintEvalControls: TOracleDataSet
    SQL.Strings = (
      
        'SELECT SUBSTR(GET_DOCTOR_NAME(CEC.PER_ID,0,0,0),0,91) AS PER_NAM' +
        'E,'
      ' CEC.*,CEC.ROWID '
      'FROM MC_CONSTRAINT_EVAL_CONTROLS CEC'
      ' LEFT JOIN MC_CONSTRAINT_EVAL_DETAILS CED'
      ' ON CEC.CED_ID = CED.ID'
      'WHERE CED_ID = :CED_ID'
      'ORDER BY CEC.PROCESS_TIME DESC'
      '')
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A004300450044005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_CONSTRAINT_EVA_CONT_SEQ_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    Master = OracleDataSet1Det
    MasterFields = 'ID'
    DetailFields = 'CED_ID'
    Session = dmMain.OraSession
    BeforePost = odsConstraintEvalControlsBeforePost
    Left = 104
    Top = 656
  end
  object dsConstraintEvalControls: TDataSource
    DataSet = odsConstraintEvalControls
    Left = 288
    Top = 664
  end
  object odsPatientContact: TOracleDataSet
    SQL.Strings = (
      'SELECT CEDC.*,CEDC.ROWID'
      'FROM MC_CONSTRAINT_EVAL_D_CONTACT CEDC'
      ' LEFT JOIN MC_CONSTRAINT_EVAL_DETAILS CED'
      ' ON CEDC.CED_ID = CED.ID'
      'WHERE CEDC.CED_ID =: CED_ID')
    Optimize = False
    Variables.Data = {
      04000000010000000E0000003A004300450044005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_CONSTRAINT_EVAL_D_C_SEQ_ID'
    SequenceField.ApplyMoment = amOnNewRecord
    Master = OracleDataSet1Det
    MasterFields = 'ID'
    DetailFields = 'CED_ID'
    Session = dmMain.OraSession
    BeforePost = odsPatientContactBeforePost
    Left = 975
    Top = 495
  end
  object dsPatientContact: TDataSource
    DataSet = odsPatientContact
    Left = 1015
    Top = 415
  end
  object ppmConstraintEval: TPopupMenu
    Left = 872
    Top = 24
    object KstlamaySrdr1: TMenuItem
      Caption = 'K'#305's'#305'tlamay'#305' S'#252'rd'#252'r'
    end
  end
end
