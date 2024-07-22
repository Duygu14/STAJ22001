inherited frmbyzMCBase: TfrmbyzMCBase
  Caption = 'frmbyzMCBase'
  ClientHeight = 527
  ClientWidth = 744
  Position = poMainFormCenter
  ExplicitWidth = 762
  ExplicitHeight = 574
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Top = 77
    Width = 744
    ExplicitTop = 77
    ExplicitWidth = 746
    inherited btnBaseClose: TcxButton
      Left = 671
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = DmIcons.ilPatMonitoring
      ExplicitLeft = 667
    end
    inherited btnBaseSave: TcxButton
      OptionsImage.Images = DmIcons.ilPatMonitoring
    end
    inherited btnBaseDelete: TcxButton
      OptionsImage.Images = DmIcons.ilPatMonitoring
    end
    inherited btnBasePrint: TcxButton
      OptionsImage.Images = DmIcons.ilPatMonitoring
    end
    inherited btnBaseAdd: TcxButton
      OptionsImage.Images = DmIcons.ilPatMonitoring
    end
  end
  inherited pnlMain: TPanel
    Top = 112
    Width = 744
    Height = 415
    ExplicitTop = 112
    ExplicitWidth = 746
    ExplicitHeight = 423
  end
  object gbBaseTop: TcxGroupBox [2]
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alCenterCenter
    TabOrder = 2
    Height = 77
    Width = 744
    object pnlDiag: TPanel
      Left = 565
      Top = 4
      Width = 150
      Height = 69
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object cxLabel4: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        AutoSize = False
        Caption = 'Tan'#305' Bilgisi'
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -9
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.Shadow = False
        Style.IsFontAssigned = True
        Transparent = True
        Height = 15
        Width = 150
      end
      object mmDiag: TcxMemo
        Left = 0
        Top = 15
        TabStop = False
        Align = alClient
        ParentShowHint = False
        Properties.ReadOnly = True
        Properties.ScrollBars = ssHorizontal
        Properties.WordWrap = False
        ShowHint = True
        Style.Color = clBtnFace
        Style.Edges = []
        Style.TextStyle = [fsBold]
        TabOrder = 1
        Height = 54
        Width = 150
      end
    end
    object pnlGenLeft: TPanel
      Left = 4
      Top = 4
      Width = 561
      Height = 69
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object pnlPatientDetail: TPanel
        Left = 0
        Top = 32
        Width = 561
        Height = 37
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Shape1: TShape
          Left = 357
          Top = 0
          Width = 8
          Height = 37
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 340
          ExplicitHeight = 33
        end
        object Shape3: TShape
          Left = 408
          Top = 0
          Width = 8
          Height = 37
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 419
          ExplicitTop = 5
          ExplicitHeight = 33
        end
        object Shape4: TShape
          Left = 456
          Top = 0
          Width = 10
          Height = 37
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 583
          ExplicitHeight = 51
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 127
          Height = 37
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object cxLabel6: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Dosya Doktoru'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 8
          end
          object lblDoctor: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            Caption = '--------------------'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 25
          end
        end
        object Panel8: TPanel
          Left = 127
          Top = 0
          Width = 110
          Height = 37
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object lblAssCaption: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Kurumu'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 8
          end
          object lblAss: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            Caption = '--------------------'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 25
          end
        end
        object pnlIsPregnant: TPanel
          Left = 318
          Top = 0
          Width = 39
          Height = 37
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object cxLabel7: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Hamile'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 8
          end
          object cxImage1: TcxImage
            Left = 0
            Top = 15
            Align = alClient
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
              0000003008060000005702F987000000097048597300000B1300000B1301009A
              9C180000083B494441546881ED59696C54D715FEDE3E9BEDF1D8603B78C1106C
              F620200607B027C6D875ED00693081E026515AA0895A51A94A086AAA56AAD442
              D552B552689AD0A86D68E99202AE70CC6202612D69125210426CDEB0C11E3C63
              CFF2DEBC79CBBDFD3104E2DA047BE611FEF4FBF9DEB9E73BDFBBF79E7BCE7DC0
              FFF160C1DC4FE7558B172C4911F83ABBC04D221408EBFA999846771D387CFC63
              AB38EE8B80D5B5DEDF4734BAA6C06D67E717B859CDA0E05806AA66E26467C030
              29ED8B68FAB7F7EC3FF68F64B92C15E0F57ADDA902ED5A3933C7393327152E91
              1FD64ED64D6C3FDD61CA31E34FDB1B5B9E4B86934B66F0E751595999E61149EF
              6B9545F6A24C17448E85AA1B08292A828A0A39A6C33409249187C8B1989F9FCE
              5E0BA9331FCACDC93B7BA9FD9F89F25A36034F5697FB5F2E9BE8C94AB1C11F52
              D01D0822A61943EC588641BACB8EDCCC3448028F9F1EB9AC778795C7DE3B78E2
              A34478D9A4230750B7C4BBA16242A67B8C43C2C52E1F5A7BFCC3060F008452F8
              C30ACE75F4A02F28A36C7C86E0E0F81F24CA6D89003B8FB5051E077BA1CB8790
              121BD11842285A7D01643905108A0589725B2480F5B75CF2D1AE607474032920
              CB116826757BBD5E7722DC9608E889A9F59D21CD38E53771F05A14371513AA49
              06D95C8F18086A64C8D89866605A96431558529208F7F0796E94303576F6F4E9
              13E41FBFD0E0FEF0C245EC3F751A87AE74C024262664A440A30C525D1E5CEBF1
              63D65801F93673D0784A2052D08207268001220361D9060025538A5132A51800
              1089AAE8F2F951F8D0584882000078F5F5DFC2150BC123DDC9E01207DECEB1B9
              89705B2200C494A3AAA603B07DFEB1CB6EC3E48271834C154D076B1F9CBD7906
              8C83672626426DC91E68397AEA4C4F2020CAEADD33504F7F3FBEFBAB3730DE66
              C02D0EA6B5B10C6C229B9208B7250200203DD5B9EDEF878F0FDDA5B7B0E9376F
              23C31CC03869A88961124475F2600574F9E5573EF8F45CA74986D7A0C434E43A
              8561DF110AE8260925C26B998023478E18A5955945B51B7F44FAC39121EFC351
              15123F7CE56202D0752227C26BCD26BE85F5EBDFD429A5FC732B969D71A73826
              D7CC9B2BE58D1D839EC00072521CE0EE52792986A91BC08544382D1500000CC3
              5000B3EABEE2F5FE71FFFB1B0C42261BBA913ADE892C401852FD124AD111D665
              C3609B12E24B3AE211A0AE725167CDF894BC0CDBE0F8CFF5A9F4235F94A68BDC
              8ABFECFB607722BE2D9F81CF505DB96899472CDCEC8F7614BB241EFEA8019F62
              806540AF0E68A18066120ED8B3FFFDE32F24C3739F5ACA8613698EB1258BA77F
              83F738B3B1FDF0B7C00B0204D60E7FE40678C6F98EC246D63637378FAC74FD02
              582EE0C9EAE5D7CA8A57E7CE2AA80100ECFA7033164C7A06E9522E043B8BF3DD
              8771FA726374C7DEB71D56F059BA8456D63CBDAFF4E115E36615548310E04AFB
              79F843D7116D4B4794CA909C2C72C64D8266CAB67B7B1B192C135051F15885C7
              955B316B7C35130918E8EF52F1C9CD264CB42D0168DC262613B4779C45CC5475
              AB782D3BC8DC42D6CB53C72D14227D3AFADAA2D0751DEDD1E39860F70EB2FBB8
              7B177443E9B78A376101B5558B5635ACA8DB595F3F4D04009E131714A57BE1EF
              8CEFCB7EAD0302E7C07FC27F854A0600003EED0278D8C1B25CD88AE081043631
              A59459F3D4D28E92195373E63D3283DFB1A7C908F64B9186053F4BF35F31194D
              89D7421DFA21E43DDA0E4323683A7A0A6EB610605864F2C5B8A8EC3BD774A879
              A61502463503353535D2BA86955DAF7CF3D9BC0D0DCFF0F3A714418EA9FCD239
              DF733386703B780038E57F0BCF2F5F8A75CB96A071F3ABC8CED301CA22539C04
              96816245F0A316D0DCDC1CA394BAA715E40372105489802122DC8E6CC87D77AE
              513A993D7871553D586A02BA86A0ACE05267371EF76C824163A00409156EC361
              5459E8A5FAEF2FD48C3EE9F9D7B6C065176013525157F4130C741228FDF13EB7
              95EC4666713796553C0DC8F1A5FEFABBFBF188337E834841C082EFFDD2055455
              55395BFD278F6EAC6D64743386F6B63630A14C84DA2400F1AFFF89BE15555585
              A8F3AE02A261C034D0D97B13573A42287394010008D561329A2587D8A8046409
              79EF4E2F2A678C18C1CD56038212EF75FB8D365C27C7A0BBAEA2B66A0EAA1796
              02D108A0C753FD4B5BDFC0F2CCEDB7FD504A40C10E7F6D77BF0478BDDE6C83D1
              BC73F397E3C605197A2CBE592F0ADBA03B7A306FF654D496AD8543E0817010A0
              F1F7AB7FF84BD4646C05CF48779CB10C58CA58760E8C4880C01AA5E9CE2C2970
              2D7A3BF8EBB65D287C98C7BAFAEF008606681AA0C593CB994BADF8C5CE262C4E
              F9397838071352096069FE972A20CD963DD3256432117F7CE6294CDCD4CFE3EB
              F3BF0A4406001AAF157C0341FCADE5343E3DEF47B9630B780C5DEA362E159422
              E74B150003F922BD7375C980431629C3AFFFBC1B5F2B2F417F2882F74E9E436F
              6000531D4F61A1B3F2AEAE24CE0D0A3333E9C86F61440274A2FA11735088774E
              EE6C5A0E29EAC13B7BF682271E1470CF626EFA947BFA7270E9B0B1690349C43C
              08233AC81433D87839D4A2FEEFF3743A0325D226CCB6AFC718F1DEC103000F1B
              C2C68DC9F5F5F596FC1D1A918083878F9D0819DD88116B6A30375FD8190C7667
              58E16BC4A584C8DAFFD0133B6F49FE5648EF184D132D29E547ECA4B165EF8BFF
              0EBF158E183E2B782DC3A8BE8214CB9CD6ECDF9874236E25462560D7B11D373C
              FCD4C29D375693D6E8D1FB15D3A830EA4C70F6EABF22B31F756DEE0DFA4ABBB5
              33A93112721850C13112046664BD7A877AA24785F2665B5B5BD2657552D72A4B
              1E5F542E71A96B7888A51A0915084CAAACD2C0171E522E2EEBBA4852B6EC3CF4
              BB6DC9707F064BEF859E78628E231C4EB9EB3F02001045913B70E080650DCD7F
              0165995C73895EC0C10000000049454E44AE426082}
            Properties.Center = False
            Style.BorderStyle = ebsNone
            Style.Edges = []
            Style.HotTrack = False
            TabOrder = 1
            Transparent = True
            Visible = False
            Height = 22
            Width = 39
          end
        end
        object Panel17: TPanel
          Left = 237
          Top = 0
          Width = 81
          Height = 37
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object cxLabel12: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Ek Kurumu'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 8
          end
          object lblSecAss: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 25
          end
        end
        object Panel1: TPanel
          Left = 365
          Top = 0
          Width = 43
          Height = 37
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object lblLength: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            AutoSize = False
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taBottomJustify
            Transparent = True
            Height = 20
            Width = 43
            AnchorY = 35
          end
          object cxLabel9: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            AutoSize = False
            Caption = 'Boy (cm)'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Transparent = True
            Height = 15
            Width = 43
          end
        end
        object Panel2: TPanel
          Left = 416
          Top = 0
          Width = 40
          Height = 37
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object lblWeight: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            AutoSize = False
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taBottomJustify
            Transparent = True
            Height = 20
            Width = 40
            AnchorY = 35
          end
          object cxLabel11: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            AutoSize = False
            Caption = 'Kilo(kg)'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Transparent = True
            Height = 15
            Width = 40
          end
        end
        object Panel3: TPanel
          Left = 466
          Top = 0
          Width = 65
          Height = 37
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object cxLabel13: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Dosya No'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 8
          end
          object teUPN: TcxTextEdit
            Left = 0
            Top = 15
            Align = alTop
            ParentColor = True
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = True
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderStyle = ebsNone
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.BorderStyle = ebsNone
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Text = '12345678'
            Width = 65
          end
        end
      end
      object pnlPatientInfo: TPanel
        Left = 0
        Top = 0
        Width = 561
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Shape2: TShape
          Left = 455
          Top = 0
          Width = 10
          Height = 36
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 583
          ExplicitHeight = 51
        end
        object Shape12: TShape
          Left = 320
          Top = 0
          Width = 8
          Height = 36
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 340
          ExplicitHeight = 33
        end
        object shpFirst: TShape
          Left = 0
          Top = 0
          Width = 10
          Height = 36
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 8
          ExplicitHeight = 41
        end
        object Shape5: TShape
          Left = 530
          Top = 0
          Width = 8
          Height = 36
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 599
          ExplicitHeight = 33
        end
        object Shape11: TShape
          Left = 405
          Top = 0
          Width = 8
          Height = 36
          Align = alLeft
          Brush.Style = bsClear
          Pen.Style = psClear
          ExplicitLeft = 497
          ExplicitHeight = 33
        end
        object lblPatName: TcxLabel
          Left = 10
          Top = 0
          Align = alLeft
          AutoSize = False
          Caption = 'Ad Soyad'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          Height = 36
          Width = 227
          AnchorX = 124
          AnchorY = 18
        end
        object pnlProt: TPanel
          Left = 465
          Top = 0
          Width = 65
          Height = 36
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object cxLabel1: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Prot No'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 8
          end
          object teProt: TcxTextEdit
            Left = 0
            Top = 15
            Align = alTop
            ParentColor = True
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = True
            Style.LookAndFeel.NativeStyle = False
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderStyle = ebsNone
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.BorderStyle = ebsNone
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Text = '12345678'
            Width = 65
          end
        end
        object pnlPatInfoAge: TPanel
          Left = 328
          Top = 0
          Width = 77
          Height = 36
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object lblAge: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            AutoSize = False
            Caption = '-----'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taBottomJustify
            Transparent = True
            Height = 20
            Width = 77
            AnchorY = 35
          end
          object cxLabel3: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            AutoSize = False
            Caption = 'Ya'#351#305
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Transparent = True
            Height = 15
            Width = 77
          end
        end
        object pnlPatInfoBirthDate: TPanel
          Left = 237
          Top = 0
          Width = 83
          Height = 36
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object lblBirth: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            AutoSize = False
            Caption = '04.07.1988'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taBottomJustify
            Transparent = True
            Height = 20
            Width = 83
            AnchorY = 35
          end
          object cxLabel5: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            AutoSize = False
            Caption = 'Do'#287'um tarihi'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Transparent = True
            Height = 15
            Width = 83
          end
        end
        object pnlPatInfoSexuality: TPanel
          Left = 413
          Top = 0
          Width = 42
          Height = 36
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object lblGender: TcxLabel
            Left = 0
            Top = 15
            Align = alTop
            AutoSize = False
            Caption = '-----'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taBottomJustify
            Transparent = True
            Height = 20
            Width = 42
            AnchorY = 35
          end
          object cxLabel8: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            AutoSize = False
            Caption = 'Cinsiyeti'
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.Shadow = False
            Style.IsFontAssigned = True
            Transparent = True
            Height = 15
            Width = 42
          end
        end
      end
    end
  end
  object OracleDataSet1: TOracleDataSet
    Optimize = False
    Session = dmMain.OraSession
    Left = 344
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = OracleDataSet1
    Left = 336
    Top = 232
  end
  object OracleDataSet1Det: TOracleDataSet
    Optimize = False
    Master = OracleDataSet1
    MasterFields = 'ID'
    Session = dmMain.OraSession
    Left = 432
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = OracleDataSet1Det
    Left = 424
    Top = 240
  end
end
