object frmCetakLaporanRsvp: TfrmCetakLaporanRsvp
  Left = 463
  Top = 137
  Width = 928
  Height = 480
  Caption = 'frmCetakLaporanRsvp'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 19
  object QuickRep1: TQuickRep
    Left = 0
    Top = -2
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object QRBand3: TQRBand
      Left = 48
      Top = 220
      Width = 698
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375000000000000000
        1846.791666666667000000)
      BandType = rbDetail
      object QRSysData1: TQRSysData
        Left = 8
        Top = 5
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          13.229166666666670000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Transparent = False
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 40
        Top = 5
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          13.229166666666670000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 200
        Top = 5
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          529.166666666666700000
          13.229166666666670000
          256.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 304
        Top = 5
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          13.229166666666670000
          235.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 400
        Top = 5
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          13.229166666666670000
          320.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 544
        Top = 5
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          13.229166666666670000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 624
        Top = 5
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1651.000000000000000000
          13.229166666666670000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 526
        Top = 5
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1391.708333333333000000
          13.229166666666670000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rp'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 606
        Top = 5
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1603.375000000000000000
          13.229166666666670000
          44.979166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rp'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 128
        Top = 5
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          13.229166666666670000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 48
      Top = 334
      Width = 698
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1846.791666666667000000)
      BandType = rbPageFooter
      object QRLabel1: TQRLabel
        Left = 8
        Top = 8
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Halaman'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 64
        Top = 8
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          21.166666666666670000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
      object QRSysData4: TQRSysData
        Left = 576
        Top = 8
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1524.000000000000000000
          21.166666666666670000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        FontSize = 10
      end
    end
    object ChildBand1: TQRChildBand
      Left = 48
      Top = 250
      Width = 698
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1846.791666666667000000)
      ParentBand = QRBand3
      object QRLabel12: TQRLabel
        Left = 235
        Top = 1
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          621.770833333333300000
          2.645833333333333000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sudah Jadi'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 313
        Top = 1
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          828.145833333333300000
          2.645833333333333000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 375
        Top = 1
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          2.645833333333333000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sudah Diambil'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 475
        Top = 1
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1256.770833333333000000
          2.645833333333333000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 540
        Top = 1
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1428.750000000000000000
          2.645833333333333000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tgl Diambil'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 618
        Top = 1
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1635.125000000000000000
          2.645833333333333000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 40
        Top = 2
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          5.291666666666667000
          222.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Pembayaran'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 126
        Top = 2
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          5.291666666666667000
          240.770833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 48
      Top = 282
      Width = 698
      Height = 52
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        137.583333333333300000
        1846.791666666667000000)
      BandType = rbSummary
      object QRSysData2: TQRSysData
        Left = 290
        Top = 8
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          767.291666666666700000
          21.166666666666670000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Transparent = False
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 208
        Top = 8
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          550.333333333333300000
          21.166666666666670000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total Data'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 8
        Top = 27
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          71.437500000000000000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanggal Akhir:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 8
        Top = 8
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tanggal Awal:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tanggal_awal: TQRLabel
        Left = 104
        Top = 8
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          21.166666666666670000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '     '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object tanggal_akhir: TQRLabel
        Left = 104
        Top = 27
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          71.437500000000000000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '     '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand7: TQRBand
      Left = 48
      Top = 48
      Width = 698
      Height = 140
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        370.416666666666700000
        1846.791666666667000000)
      BandType = rbPageHeader
      object QRImage2: TQRImage
        Left = 133
        Top = 0
        Width = 97
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333300000
          351.895833333333300000
          0.000000000000000000
          256.645833333333300000)
        Picture.Data = {
          0A544A504547496D6167652E640000FFD8FFE000104A46494600010101004800
          480000FFE10DE64578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001E0000007201320002000000140000009087
          69000400000001000000A4000000D0000AFC8000002710000AFC800000271041
          646F62652050686F746F73686F7020435336202857696E646F77732900323031
          383A31303A32362032303A33393A3238000003A00100030000000100010000A0
          0200040000000100000211A003000400000001000000D8000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          00000100000CAF0000000000000048000000010000004800000001FFD8FFDB00
          4300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E
          1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E33
          3432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232FFC00011080061006103012100021101031101FFC4001F0000
          010501010101010100000000000000000102030405060708090A0BFFC400B510
          0002010303020403050504040000017D01020300041105122131410613516107
          227114328191A1082342B1C11552D1F02433627282090A161718191A25262728
          292A3435363738393A434445464748494A535455565758595A63646566676869
          6A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2
          E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101
          01010000000000000102030405060708090A0BFFC400B5110002010204040304
          0705040400010277000102031104052131061241510761711322328108144291
          A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738
          393A434445464748494A535455565758595A636465666768696A737475767778
          797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4
          B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9
          EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA2800A2800A28
          00A2800A2800A2800A2800A2800A28033F54D7749D12359355D4ECEC55B3B4DC
          CEB1EEFA64F3F8572775F19FC0168EC8FE204775ED0DBCAE0FD085C7EB401141
          F1B3E1FCE71FDBBE5B13C092D661FAECC575FA4F88746D750BE93AAD9DF05196
          16F3AB95FA80723F1A00D2A2800A2800A2800A2802A6A7AA58E8DA6CFA86A575
          1DADA40BBA49646C051FD493C003924E057CEFE39F8FFA8DFCB35878513EC567
          CAFDB645CCF27BA83C20EBEADD0FCA78A00C9D13E23E95E27D323F0EFC49B637
          76EABB2DB598C7FA4DB1F563825BB73CE71F306ED85E37F865A9784E25D4ED26
          8F55F0FCC0341A8DAFCCA14F4DF8CE3EB920E4739E00070D4F8A592095658A46
          8E4439574382A7D41A00FA5750F8A97DE13F0BF81356921FED1D3F51B1F2EFB7
          37EF7CC45405D5BFBD92DC1EB8EDD6BD43C35E26D27C5BA347AA68F7427B773B
          5811868DC75565EC47F2208C820D006BD14005140054379776F61653DE5DCAB0
          DBC11B492C8E701140C927F0A00F907E26FC49BDF1EEB1B537C1A35B39FB25B1
          E09EDE63FAB91F828E0772784A002BBBF875E35F13F872E9ECF4AB29F58D3663
          FE91A5F96D22383D70003B4919E7183DC1C500775E28F8371788B4AFF848FC1D
          A7DE699349969B44D42230B29EFE5EEE9F4CEDE78231B6BC3EE6DAE2CAE65B6B
          A82482E226292452A156461D4107906803D5B501FDAFFB346952A0DCFA46AAD1
          C8DD70AC5CE3AFFD344AE27C11E36D4FC0BAF26A360DE642D85B9B56621274F4
          3E847386EC7D464100FB17C39E21D3FC53A0DAEB1A6485EDAE172030C3237756
          1D981E0FE991CD6AD001450015E6DF17F47D77C49A343A3E9F7DA6E9BA639F36
          F6EAFAE7CA0FB4FCA8300F19F98E7D179EB401E2E3E1EF8234CD8DADFC4AD3DB
          FBF1E9B6E6E3BF66527FF41ABDA559FC276D5A0D334BD33C49E25BEB8611C31B
          BAC31B31F7050A8EE49180067B5007BE69BF0EFC1DA52A8B4F0DE9A197043C90
          095C7FC09F27F5AB9178AFC2C970BA7C3AFE8EB383B16DD2F220C0F4C0507AFB
          5006A1BCB51782D0DCC22E8AEE10EF1BC8F5DBD715C978EFE19E87E3BB5DD749
          F65D491710DF42A378F40C3F8D7D8FE0466803CDECBC0DACF877E11F8EFC35AB
          42BB610350B7B98CE639954063B49EE3C9E41008C8EB915F3E5007AE7C06F1AB
          685E29FEC0BB971A7EAAC163DCDC4771FC247FBDF74FA9D9E95F51D001450007
          819AF85BC4FAD49E22F146A7ABC858FDAEE5E450C795427E55FC0607E1401935
          F4E7C0CF874341D257C4DAA438D4EFA3FF004646EB0427BE3B33707D86071961
          4009F13F53D5BC53E37D37E1B68F766CE1BA8BCED46E0039D8724AF6E02AE719
          C31600E2ACCDF087E17DABDBF87EE19A3D5EE23CC2EF7EC2E641CFCC133B0FDD
          3FC18E3A50079B785EE2DFC27F1B2D4EADE208AFF4CD3A19228752DFE62187CB
          6541919E85B61EA01047415F4E595F5A6A5671DE58DCC3736D28CC7342E1D187
          4E08E0D0017F691DFE9D756728CC77113C4FF46041FE75F05CB13C333C522957
          462AC0F623AD007AC780B4BB5F02F8526F88DAEC01EE5818743B4907FAC94E47
          9847A75C1F40C7A95AFA4F40D4C6B5E1DD3754000FB65AC73E076DCA0E3F5A00
          D1A28031FC5976F61E0DD72F23FBF6FA7CF2AFD56363FD2BE18A00F4BF843E07
          B6D7F563AEEB8638F41D3A68D18CC3E4B89D98048B9E08CB2E7EAA3F8B23EB4A
          00F14F1EDD4DE03F8CBA3F8CEE2291F45BD83EC77522AE7CB6C10474F4DAE075
          3B580E95CC7C599F4EF177C48F0E9D3F5CB54D3EE74FD92DFC730D9147BA4326
          4E7A84CFCA704E71DE8032FC256FE19F12FC63B3D1AC2C9A5F0D25ACB690C770
          5B74C8B1BB17249C82CE59874C71C0C62BB3D06DA5F85BF1A21F0C5A5CC8FE1D
          D763F36282462DE4B90C01FA864DB9EEAC33922803DCEBE5FB6F86BFDB9F18BC
          491EA38B6D034DBC92EEF6676D8A2262645407B654F5C8C2827AE0500727F127
          C6C7C67E220D6A9E468D62BF67D3AD946D548C606EDBD016C0E31C00A3B57D23
          F06EE1EE7E136832392488E58F939E165751FA01401DDD140193E29B37D47C23
          AD58C60B3DCD84F0A81D4968D80FE75F18784FC317FE30F11DAE8DA7A9F3266C
          C92632B0C63EF3B7B01F99C0EA4500767F127C596969369FE10F0B4863D17409
          0112A9E6E2E54F32123AE0E791D4963D318FAAAC2F22D434EB6BD84E62B88965
          439CE558023F9D003750D3ACB56B096C750B58AEAD661892195032B7E07DF9AF
          99FE27F87B45F0478FF46B5D2B48927D37ECC6E6E2C44D23798859C480364B01
          B14F39E393401E95A4F893E110B9B7F15DADDD958DE5A5B7931C6CCF1BC29820
          A884704E091F283D7A9AC5F0EDC4DF14BE32C7E2AB6B6923F0F6871F9304B22E
          DF35F0481FEF65F763B285CE091900F72AF9F7E3BF8EA1B669FC23A3158E5B87
          59B569A200173B542C64F73B55327D028CF51401E055F657C24B17D3BE15F87E
          07EAD6E67FC2476907E8C2803B5A2800AF00F1469F0FC25F0EEA9A7F87A29AE3
          5FD7A690FDA21424DA5A6E3B40207071C718E7273F28A00F0CFEC8D4FF00E81D
          77FF007E1BFC2BEC2F8597B35EFC32D05EE2378E68ADFECEC8E30C3CB6318C8F
          A283F8D007615E41E2FB79DFF687F074C90CAD125A10D22A12A3FD7753401D9D
          DFC32F04DF5EFDB27F0DD819B392510A293EA554807F115D2DA59DAE9F6B1DAD
          95B436D6F10C470C2811107B01C0A00E67E2278BDBC1FE169AEED606B8D4A6CC
          5670AA96CB91F7881FC2BD4FAF038CD7C7F7363ACDE5D4D7573677D2DC4CED24
          B23C2C59D89C924E3A9268025D33C33AC6A9AA5A69F0E9F72B2DCCCB12978582
          82C719271C01D49AFB7B4DB0874BD2ACF4FB7CF936B02411EE393B55428FD050
          05AA2800AE5FC4BA9EB96BA959AE916334D6D6B8BAD419533BE2C95F2D01E5DB
          6891B0BC829183C372018769E23F11CD61A3B5AD95F4E6C635935979ED5A2693
          F84A2065064217CC7C27F12C6390D838DA55FF008C52E74E5D526D663B296D4B
          5F94B732BC60F944488446082C5B614C12804A4740C003A6D546AD7961A4DBE8
          37FA98135E4CAF73728D132A88A52BBB31E76070B8DC3E6C0E4E726BCF7BE265
          96C52F1AEA3D3CCB74B7773691B34C63598046D9E5FCB9F947CB93B19D8631B8
          0057926D75A637515DEB9FD9A3CC58985BFEF5ADC3C00B98CA6E2E04970178DC
          CA8AC0311F33A6BED4D6F661F6AD68E8816536721B7915E4982AE11D96369046
          0EE2AC579391F300A18033EC353F1B79F7AD2C1A92CF730F91670CC038F34A45
          F3B3089523F2F2EE49C07DC540CAE05EF3BC6777B6EF7CF6B716690C5736E41D
          93C99657DA021F958EC7DEA4ED5E31D68035ECBFE123B8F12AADCDCBC166D2C8
          F344885D008F66C5490AAE03190EEC8E7CBC0C7CC4F6140051400514005664DA
          43CB2BBAEABA846199CED490606E18C0E3A0EA3DE801B2E8F7120651AC5FC6AC
          A01D85723000E091C67193DF24E31D291745915837F6B6A195271FBDEB920F20
          E41C63038E84F7E6801574795482352BCEA09064247F0F4C9E9F2F7CF5E73939
          487459624556D6351936AAA82D22E7036673C724ECE4F5F99B18CE0003A5D265
          91C326A779161B2364993D00039C83D3D3B9EFCD69202A8AA58B103049EF400E
          A2800A2800A2800A2800A2800A2800A2800A2800A2800A2800A2800A2800A280
          0A2800A2800A2803FFD900FFED27CA50686F746F73686F7020332E3000384249
          4D0425000000000010000000000000000000000000000000003842494D043A00
          00000000E5000000100000000100000000000B7072696E744F75747075740000
          00050000000050737453626F6F6C0100000000496E7465656E756D0000000049
          6E746500000000436C726D0000000F7072696E745369787465656E426974626F
          6F6C000000000B7072696E7465724E616D65544558540000000100000000000F
          7072696E7450726F6F6653657475704F626A630000000C00500072006F006F00
          6600200053006500740075007000000000000A70726F6F665365747570000000
          0100000000426C746E656E756D0000000C6275696C74696E50726F6F66000000
          0970726F6F66434D594B003842494D043B00000000022D000000100000000100
          00000000127072696E744F75747075744F7074696F6E73000000170000000043
          70746E626F6F6C0000000000436C6272626F6F6C00000000005267734D626F6F
          6C000000000043726E43626F6F6C0000000000436E7443626F6F6C0000000000
          4C626C73626F6F6C00000000004E677476626F6F6C0000000000456D6C44626F
          6F6C0000000000496E7472626F6F6C000000000042636B674F626A6300000001
          00000000000052474243000000030000000052642020646F7562406FE0000000
          00000000000047726E20646F7562406FE0000000000000000000426C2020646F
          7562406FE000000000000000000042726454556E744623526C74000000000000
          000000000000426C6420556E744623526C740000000000000000000000005273
          6C74556E74462350786C40520000000000000000000A766563746F7244617461
          626F6F6C010000000050675073656E756D000000005067507300000000506750
          43000000004C656674556E744623526C74000000000000000000000000546F70
          20556E744623526C7400000000000000000000000053636C20556E7446235072
          6340590000000000000000001063726F705768656E5072696E74696E67626F6F
          6C000000000E63726F7052656374426F74746F6D6C6F6E67000000000000000C
          63726F70526563744C6566746C6F6E67000000000000000D63726F7052656374
          52696768746C6F6E67000000000000000B63726F7052656374546F706C6F6E67
          00000000003842494D03ED000000000010004800000001000200480000000100
          023842494D042600000000000E000000000000000000003F8000003842494D04
          0D000000000004000000783842494D04190000000000040000001E3842494D03
          F3000000000009000000000000000001003842494D271000000000000A000100
          000000000000023842494D03F5000000000048002F66660001006C6666000600
          0000000001002F6666000100A1999A0006000000000001003200000001005A00
          000006000000000001003500000001002D000000060000000000013842494D03
          F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03
          E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0400000000
          00000200033842494D040200000000000800000000000000003842494D043000
          0000000004010101013842494D042D0000000000060001000000033842494D04
          08000000000010000000010000024000000240000000003842494D041E000000
          000004000000003842494D041A00000000034900000006000000000000000000
          0000D8000002110000000A0055006E007400690074006C00650064002D003100
          0000010000000000000000000000000000000000000001000000000000000000
          000211000000D800000000000000000000000000000000010000000000000000
          000000000000000000000010000000010000000000006E756C6C000000020000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E67000000D800000000526768746C6F6E67000002110000
          0006736C69636573566C4C73000000014F626A6300000001000000000005736C
          6963650000001200000007736C69636549446C6F6E6700000000000000076772
          6F757049446C6F6E6700000000000000066F726967696E656E756D0000000C45
          536C6963654F726967696E0000000D6175746F47656E65726174656400000000
          54797065656E756D0000000A45536C6963655479706500000000496D67200000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E67000000D800000000526768746C6F6E67000002110000
          000375726C54455854000000010000000000006E756C6C544558540000000100
          00000000004D7367655445585400000001000000000006616C74546167544558
          540000000100000000000E63656C6C54657874497348544D4C626F6F6C010000
          000863656C6C546578745445585400000001000000000009686F727A416C6967
          6E656E756D0000000F45536C696365486F727A416C69676E0000000764656661
          756C740000000976657274416C69676E656E756D0000000F45536C6963655665
          7274416C69676E0000000764656661756C740000000B6267436F6C6F72547970
          65656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F
          6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F
          75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E
          67000000000000000B72696768744F75747365746C6F6E670000000000384249
          4D042800000000000C000000023FF00000000000003842494D04140000000000
          04000000053842494D040C000000001EB000000001000000A000000041000001
          E0000079E000001E9400180001FFD8FFE20C584943435F50524F46494C450001
          0100000C484C696E6F021000006D6E74725247422058595A2007CE0002000900
          0600310000616373704D53465400000000494543207352474200000000000000
          00000000000000F6D6000100000000D32D485020200000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000001163707274000001500000003364657363000001840000006C777470
          74000001F000000014626B707400000204000000147258595A00000218000000
          146758595A0000022C000000146258595A0000024000000014646D6E64000002
          5400000070646D6464000002C400000088767565640000034C00000086766965
          77000003D4000000246C756D69000003F8000000146D6561730000040C000000
          2474656368000004300000000C725452430000043C0000080C67545243000004
          3C0000080C625452430000043C0000080C7465787400000000436F7079726967
          6874202863292031393938204865776C6574742D5061636B61726420436F6D70
          616E790000646573630000000000000012735247422049454336313936362D32
          2E31000000000000000000000012735247422049454336313936362D322E3100
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000058595A20000000000000F351000100
          00000116CC58595A200000000000000000000000000000000058595A20000000
          0000006FA2000038F50000039058595A2000000000000062990000B785000018
          DA58595A2000000000000024A000000F840000B6CF6465736300000000000000
          1649454320687474703A2F2F7777772E6965632E636800000000000000000000
          001649454320687474703A2F2F7777772E6965632E6368000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000064657363000000000000002E4945432036313936362D322E312044
          656661756C742052474220636F6C6F7572207370616365202D20735247420000
          0000000000000000002E4945432036313936362D322E312044656661756C7420
          52474220636F6C6F7572207370616365202D2073524742000000000000000000
          0000000000000000000000000064657363000000000000002C5265666572656E
          63652056696577696E6720436F6E646974696F6E20696E204945433631393636
          2D322E3100000000000000000000002C5265666572656E63652056696577696E
          6720436F6E646974696F6E20696E2049454336313936362D322E310000000000
          00000000000000000000000000000000000000000076696577000000000013A4
          FE00145F2E0010CF140003EDCC0004130B00035C9E0000000158595A20000000
          00004C09560050000000571FE76D656173000000000000000100000000000000
          0000000000000000000000028F00000002736967200000000043525420637572
          76000000000000040000000005000A000F00140019001E00230028002D003200
          37003B00400045004A004F00540059005E00630068006D00720077007C008100
          86008B00900095009A009F00A400A900AE00B200B700BC00C100C600CB00D000
          D500DB00E000E500EB00F000F600FB01010107010D01130119011F0125012B01
          320138013E0145014C0152015901600167016E0175017C0183018B0192019A01
          A101A901B101B901C101C901D101D901E101E901F201FA0203020C0214021D02
          26022F02380241024B0254025D02670271027A0284028E029802A202AC02B602
          C102CB02D502E002EB02F50300030B03160321032D03380343034F035A036603
          72037E038A039603A203AE03BA03C703D303E003EC03F9040604130420042D04
          3B0448045504630471047E048C049A04A804B604C404D304E104F004FE050D05
          1C052B053A05490558056705770586059605A605B505C505D505E505F6060606
          160627063706480659066A067B068C069D06AF06C006D106E306F50707071907
          2B073D074F076107740786079907AC07BF07D207E507F8080B081F0832084608
          5A086E0882089608AA08BE08D208E708FB09100925093A094F09640979098F09
          A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B
          0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C
          8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E
          2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0F
          EC1009102610431061107E109B10B910D710F511131131114F116D118C11AA11
          C911E81207122612451264128412A312C312E31303132313431363138313A413
          C513E5140614271449146A148B14AD14CE14F01512153415561578159B15BD15
          E0160316261649166C168F16B216D616FA171D17411765178917AE17D217F718
          1B18401865188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A
          771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1C
          F51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F
          941FBF1FEA20152041206C209820C420F0211C2148217521A121CE21FB222722
          55228222AF22DD230A23382366239423C223F0241F244D247C24AB24DA250925
          382568259725C725F726272657268726B726E827182749277A27AB27DC280D28
          3F287128A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B
          692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822E
          B72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A318231BA31F232
          2A3263329B32D4330D3346337F33B833F1342B3465349E34D83513354D358735
          C235FD3637367236AE36E937243760379C37D738143850388C38C83905394239
          7F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D
          613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440A640E7412941
          6A41AC41EE4230427242B542F7433A437D43C044034447448A44CE4512455545
          9A45DE4622466746AB46F04735477B47C04805484B489148D7491D496349A949
          F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E
          6E4EB74F004F494F934FDD5027507150BB51065150519B51E65231527C52C753
          13535F53AA53F65442548F54DB5528557555C2560F565C56A956F75744579257
          E0582F587D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865C
          D65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261
          F56249629C62F06343639763EB6440649464E9653D659265E7663D669266E867
          3D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576C
          AF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F072
          4B72A67301735D73B87414747074CC7528758575E1763E769B76F8775677B378
          11786E78CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E
          017E627EC27F237F847FE5804780A8810A816B81CD8230829282F4835783BA84
          1D848084E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A
          648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90
          D6913F91A89211927A92E3934D93B69420948A94F4955F95C99634969F970A97
          7597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E
          409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A5
          38A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC
          5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3
          AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB
          2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2
          DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CA
          B7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2
          C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DA
          FBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE3
          63E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EB
          FBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4
          C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FD
          BAFE4BFEDCFF6DFFFFFFED000C41646F62655F434D0001FFEE000E41646F6265
          00648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F
          1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E
          0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108004100A003012200021101031101
          FFDD0004000AFFC4013F00000105010101010101000000000000000300010204
          05060708090A0B01000105010101010101000000000000000100020304050607
          08090A0B1000010401030204020507060805030C330100021103042112310541
          51611322718132061491A1B14223241552C16233347282D14307259253F0E1F1
          63733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F34627
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6374757677787
          97A7B7C7D7E7F711000202010204040304050607070605350100021103213112
          044151617122130532819114A1B14223C152D1F0332462E17282924353156373
          34F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3
          F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F627374757
          67778797A7B7C7FFDA000C03010002110311003F00F5549249252924954EABD5
          30FA4E0D99D98EDB557D86AE738FD0AEB6FE73DFFEBEC4090059D29746329C84
          620CA5235188DC92CF3B3F0FA7E3BB2B36E6D14B397BCF789DAD1F49EFFE433D
          EB96BFFC6774665FB2AC7BEEA8183680D6C89FA4CADCEDDF47F7FD35998ACCBF
          ACD7647D65EB4CDBD27A732C7E2E1CFB1DE9836399FF0008DF67EB176DFD3D9F
          A2FE6EBF4AAE33168B333329C6647A993636B6F006E7B83071FD65572F313D38
          05097CB7F349E8391F8472C4641CC48CF26203DDE1970E2C5297ABDBE28FCF3C
          7FE51F72C6C8AF2B1AAC9AA7D3BD8DB19220ED780F6EE6FCD4CBD8D735AE700E
          7E8D04EA481BBDBFD95C87F8C8CBFB1F45C5C4C7B1D4BACB843584B66BAD8EDC
          DF6FE6B5EFA573FF00E2DB0FD7EBEFC9734918B4B9C1DE0F791537FCEADD7294
          E6AC831D593566DA18FE1827C9E4E70E4E08478B831F0F11970FA63EBE28FE93
          EA29249299CC5249249294924924A52AB8BD53A666586BC4CBA322C68DC59558
          C790263716D6E77B75553EB4E2E6E67D5FCDC6C09FB458C01A1A60B9A1CD75B5
          8FF8DA4595AF39FAA1D23AC3BEB1633EAA2CA062581D9363DAE6063469654F2E
          1F4ED66EABD250E4CB28CE3111BE2EAE8F27C862CFCB66CD3CC31CB15D43CA3C
          572FEFFC8FADA4924A67394924924A7FFFD0F55557A9753C0E978A72F3EE14D2
          086EE324971E18C63373DEEFEA2B4BCFBFC62F49EB799D4B1EEC6A2ECBC4156D
          63296B9FB1F24DBBAB66FDBEA37D3FD26DFE47F834CCB3308120596D721CBE3E
          63988E3C93F6E06C996DF2FE8C78BF49D17FF8CEE841C4371F29C077DB589FFC
          1972BF597EB2B7EB1753A2B7BDF8BD2AB7343439B2E68740BB26CAEB2FDF635B
          F419BBFF003E58B47AADEDE81F54F1BA73319987D57A9D64666DD6CF4813B9D6
          BCB9D635D91EDFD1FF0037FD259FA35A5FE2E3A154DE9F6F54C9ADAF7E5935D2
          1C0102A69DB67FDBB6FF00E7A5589C992431990D4714B4F97FAAEDC21C9F278A
          7CE4714870CA5870133E3965FD03961FA10FD3E1F9FD0BFD63EB9D059F539F89
          D1AFADCC7FA78F55559F7B5B3BDFEAD567E99BBEBAACF7D8DF7BD72FF5170CE5
          FD66C596EE663EEBDFE5B1BFA377FDBEEA96B7F8C8C0E9385661FD8F1ABA322E
          DE6D350D836B76864D4C8AFDCE7BFDFB3F3117FC56E20764E7E6999AD8CA587B
          1DE4D967F9BE8D484819731189AF4D7CBF2FA7D4BF1CB1E1F8466CD8CCFF005D
          C66F2FF39C794FB1F34517F8D0CADFD4B0F1348A297593E76BB6C7FECBB569FF
          008AFC3F4FA665E6199C8B856076DB53643BFCEBDEB91FAE598333EB2E758D9D
          B5D9E8807FE080A5D1FD6B18F72F45E8029E8BF5431AEB89D94E31C9B7B3BDE0
          E4B99AC7BFDFE9B51C7EACF39F48DFFDEB173A0E1F84F2FCB81EBCDC0387FBDF
          AE97FE38C3EB4FD6FC5E82C14B1BEBE7D8DDD5D530D68E1B65CEFDDFE437F9CF
          E42E73A6F5BFF1899ADFDA78F48C8C20E73BD12CAD8C701CB69DDB32AC6B7F31
          D5BECF7FFA4581D36ABFEB37D67AC659DC72ED366444C0ADA37BEB61F7398D6D
          4CF46AFEC2F57EA792CE9BD272726B0D60C5A1EEA99A35A0B1BFA2AC0FEB6D62
          74652CA653E2308476E161CF8B0F211C5CB8C38F98E67300724B30E38C78BD3C
          38FF0077D5FA4F9FE4FF008CCEB1F68B0E35540C72E9ADB6B1DBC37F75E596ED
          5DF63E5DD4F476E6F51816B28F5F24301686C37D5B18D6B9CFFE6FE82F1AE958
          ADCDEA78788E9DB917D75BE39DAE735AF3FE6AF53FAF59BF63FAB5950EDB6646
          DA19E7BCFE95BFF6C36E43064918E49C8DF08D193E2BC9E08E6E5796C38C4259
          65EB901EAE1F4C07ABFC77901FE32FAF58F6B5CCC6A58480E7B6B7BA01E5DB5D
          71DDB558EB3FE30BAF33200C6C51838EF8B28F5EB26CB2B3F46C76FF00D1ECB7
          FE0BFEDE595F50FA7B737EB1D3EA31B6558CC7DEF6B848F68F4EBFF36EB6B7AF
          45EBBF567A6F5E343B34D80E313B3D3706C876DDCC7EE6BFDBECFCDF7A18C669
          E3244CDDE9FEFB27392F8772BCD63C73E5A263C065390D7878BE5FD5FE9FC8E0
          759FAF19D8DD13A4E7E25758BFA8079B43DA4B41AB6D76860DFBBDD6BFD8AD7D
          4BFACFD5FAFDF9232EBA1946331B26A6B83CBDE4ECFA7658DD9B2BB7F35733FE
          311F4D7D5717A76300CC7C1C66B1B50E1A5C5C7FF3D0A574BFE2DF1063740B32
          DE034E55AE787FFC1D7FA213FD5B19727427339F878B488F57F823FEF98799E5
          F96C7F0B198620326697EA89F9E31CB9253847FC1C0E9FD65FAD383F57E96FAA
          0DF956EB56334C1207F84B1FEEF4EBFF005FF48B8FC1FAC5F5EBAD1CAC8C0B59
          4D18CC3658056C0C10377A55BAE65D63AD7EDFDF5CD75BEAB7757EA77E7DA4FE
          95C7D361FCDAC69557A7EEB17ACF44E894F4FE83574C737697D4464969009B2C
          1FA776F6FC7656EFF47E9A119CF34CD48C611FDDD3C939797E5FE1BCB6339314
          33733988E2F747B90801EAC9C103FB9F2B9BF51BEB366F5DA326BCE6B4DD8859
          FA660DBBC59BFE9D7F477B7D2FCCFF00B6D750B1FEAF7D59C0FABECBDB88FB2C
          7643817BEC209DADDDE9B3D818DF6EF72D856318908013372EAE473B3C13E632
          4B978F0E1247046B87F47D5E9FEFBFFFD1F5549240CEB5F4E1645CCFA75D4F7B
          67C5AD2E0914C459007534F92FD62CCBBAF7D67B5B41DDEA5CDC5C404FB76877
          A35C7EEB6DB3F4DFF5C5EB7878B5616253894FF358EC6D6C9E61A36FBBF94BCA
          7EA1633723EB3E297416D21F6907B90D73591FD5B1ED7AF5C55B9517C733BC8B
          B5F1E90C6797E561A430E307EDF40FFA0F94FF008C5CB37FD647D3C0C4AABA87
          9970FB46EFFC1B6AEAFEA0D2307EAA3B30FBBD67DB905BC1867E876FFECBAE4F
          ABFD57FAD19DD532F346059B6FB9EF602EAC90D2E3E9B7F9CFCD67B57A474DE9
          E31FA263F4EB46D2CC76D3686FEF6CD9691FDADC9B863239673208DEAFC597E2
          39B0C390E5B9784E33A30F7382519FC91F5FCBFD77C671A9B7A867D54174DB97
          73585E7F7AC706EE77F69CBD47EBFD8DABEAB643039ACF51D556C6C813EF63F6
          307F519FE62E1BA87D48FAC383986AA31DF955EEFD0E4531047E6B9CDDDBA877
          F5FF00CF7FD35D1F4CFA8BD4BA81FB4FD69CAB6D706399563FAA5EF613ED0F75
          D2FADBB3F9C6D75EFDEFFE7BFC252998A330270E03C52D2CEC1B5CFE5E5673E5
          7993CC43DAC07DC8E387AF2E495C655187F81FA7FCDB95FE2C834F5FB8BA2462
          BCB67C77D234FECADDFF00195D5D9474B674B6381BB31C1F6374245559DFBB9D
          CDDF7359B3FE2EE5CD5FF527EB574ECF27018FB7D371F432E87B6B24111BBF9C
          6D94BB6BB6D9FF00A32B5B189FE2EB2F27072B23AB646FEAB90C068DCF2F15BC
          43A722DF77AAF76DF45DFCE57533FD37E8FD330F73DB3884083AFA8ECB3993C9
          1E731F3D3E661280E0E1C50F5CF8C7CB297EE461FCE49C5FF17D88723EB350F8
          05B8CCB2E703FD5F45BFF825CC5B1FE33FA9D4F76274BAEC0E7D64DF90C1F9A4
          8D98FBBF95B5D77B561F4FFAB5F5C70FA8B4E1E2DD8F92C240B81686011EEFD3
          6EF45EC46EA3F51BEB30CD78654ECE73835D66497340758E01F6ED75D67A8FD8
          F76CF52CFA69838C62301096A7534CF9072D2F8863E667CCE2AC78FF00570E28
          FF005BD5297CBFE53D1FFA03B1FE2B70F5CFCD734E9B29ADFDBF3ACB9BFF009E
          177EB07EA5747C9E8FD11B8F96CF4F26CB1F6DB5C8741315B3DD5B9ECFE6AAAD
          6F2B9823C38E20EFBFDAF3DF14CE337399A712251BE1891AC78718E0F4BE35F5
          BF2BED5F597A85B11B6D3547FC4818FF00FA297A136AAFA7FD42757229DBD39C
          49263F496D65C75FDE7DF6AE37EB37D4EEB58FD4B23231B1DF998B916BACADF4
          836386F2E7FA765637DDB99FE9168743FA9DD7BAA329675FBEFA7A65001AB11F
          612F3036D6D6D4EDEDC7631BFBFF00A5D9FA2AFF00D232B63E31927E82652BF2
          D5DBE6CF2D9395E548E6210C58382463F3E49FB71D21187F9C78EC06D4ECEC66
          DD02A75AC164F1B4B9BBA7FB2BDD9791F55FA8DD7F0721CCA71DD994127D2BA9
          1323F9754EFADCAF74FF00ABBF5D3AB96E2F50BF271FA7E82D39163A3688F6B6
          873B75AEFDCDCDF4D2C0678CCA260492AF8A63E5F9C8E2CA39AC70C78C4AECF1
          1F5F0FCB0FDFF4FC8FA5D37557D6DB6978B2A78963DA65A47EF35C3E9354D0F1
          E8AB1A8AF1E96ECAA9636BADBCC35A3631BAFF0024222BBE6F312AB3C3757A5E
          F4FF00FFD2F5550B6B65B53EAB06E658D2D70F1046D729A49281AD43E65F55F0
          723A17D76674FCC696B9EDB195D8746BDA5AE7D57339DCDB7D2DBFF19FA3FE71
          7A6AAD99D3F0B3857F6AA9B63A970B2A7F0F639A5AF6BEAB5BB6CAFDCC6FD072
          B2A3C58FDB063B8BB0DCE7B9CFBDCE194C7872080864FDC918FE9C7FBDFBAE5F
          5AEBF8DD1DF8CDBEAB2DFB539CD67A5B4905BB7F35EE66F7BB7FB2BAFF0048F5
          6BA8F50A3A7638C9C8D2AF52BADCF2400DF51EDA7D47B9E5AD6D75EFDCF52BF0
          31AFCBC6CCB1A4DF87BFD0702401EA37D3B25A3DAFF67EF2964E2D394C632E04
          B59632D6C18F754E6DD5FF00D36277ABD5A8FEAB0DE0AC43865A5FBE6FE7F5E8
          21FF005343D33A9E3F52C06750AA594BCBE0BE38ADEFA8BBDA4B76FE8F720607
          5DAF32FAAA38F6E3B32EB37615966C8BAB68617BDADAECB2CABF9E63F65CD67B
          15CC2C2C7C1C718D8E0B6A697B8024B8CBDCEB9FEE77F2EC72AF85D17030AEF5
          A86BF735A59535F63DEDA98EDBBAAC6AEC7399431DE9B3F9B4BD7E9D47F5937C
          BDE5F4CA893ECF78C7D5C3C5EAFF0067FBECECEA0E6754A7A70A1EEF5AA7DDEB
          82CD8D6D6436CDCD2FF5BE9D9437F9BFF0DFF0762167F5818B94CC3A71ADCCC9
          7566F7D549602DA9AE6D66C3EB5956EDCE77E8AB67F38ADBB169765332C83EB5
          75BEA699D36BCD763FDBFD6A6B40CFE91859EF6597FA8DB2B69607D363EA71AD
          C5AEB297BA87337D4FD8DF6392225468F5D3C950961E2871C4F088913AEB93D5
          C32F9BFBBFA70487A8620E9DFB4F7FEA9E8FDA3D483FCDEDF5776CFA7F43F350
          7A7755FB6D9753663BF16EA7693558FA9CFDAE1B9A5D5E3DB73EA76DD9BD96FF
          00A456BECB8FF66FB27A6DFB36CF4BD181B3D38D9E9ECFDCD9ED557A7F45C0E9
          D6DB7E3B5E6EB806BADB5EFB5FB1BFCDD4D7DCE7B9B5B12F558DABAA01C1C190
          112E3BFD5795FE97AA3FF426C0F5BA075BFD8DE9586ED82C360DA5A010F77B9B
          BBD5D9FA3D9EAFA7E9FABE957FE16B44EABD6317A53297E407117D82B1B04968
          87596DEF1FE828AD9EA5CFFCC4E7A4E17ED2FDA81AE1970186C0E3AB00737D37
          37E8FA7EFDFB3FD232AB3FC1A6EA1D1BA6F527B5D9F43723656FA98D7EA1A2CD
          BEA399FB96FE8DBFA667E91887AE8ED77E9FEEAE0796E3C7627ED880F76BE796
          5AF570FABE5E24BD4B3ABE9D817E75AD73D98EC2F735B1240F0DD09BA667D7D4
          70ABCCA98E632DDD0D7ED27DAE7567DD5BACADEC76CFD1BD8FF7B12BFA763647
          4F3D3AFDD663BAB153B73897968007BAD9DEE77B7E92B49DADF856DFD663271F
          B74013938CFAFA7B55E98F0B9BD23AF60F57DDF643BB6534DD6410769BBD4FD0
          3F6176DBAAF47F4AA5FB62AFDAFF00B23D27FDA36FAB3A6DF476FF0049DDFBBF
          68FD5767F39EA7FC12361F4EC5C28F4011B69AB184927F4746FF0045BAFEEFAC
          F52FB0E3FDBFF6841FB48ABD0DD26366EF56367D0FA7F9C8013A1645DEBE4BE5
          2E5F8E7C3197B663FAB04FAA392B797F84D8492493981FFFD3F55497CAA924A7
          EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CA
          A924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7FF
          D93842494D042100000000005500000001010000000F00410064006F00620065
          002000500068006F0074006F00730068006F00700000001300410064006F0062
          0065002000500068006F0074006F00730068006F007000200043005300360000
          0001003842494D04060000000000070008000000010100FFE10DD6687474703A
          2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B65
          7420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265
          537A4E54637A6B633964223F3E0D0A3C783A786D706D65746120786D6C6E733A
          783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F62
          6520584D5020436F726520352E332D633031312036362E3134353636312C2032
          3031322F30322F30362D31343A35363A32372020202020202020223E0D0A093C
          7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E7733
          2E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E
          0D0A09093C7264663A4465736372697074696F6E207264663A61626F75743D22
          2220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D
          2F7861702F312E302F2220786D6C6E733A786D704D4D3D22687474703A2F2F6E
          732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73
          744576743D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F73547970652F5265736F757263654576656E74232220786D6C6E733A6463
          3D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E
          312F2220786D6C6E733A70686F746F73686F703D22687474703A2F2F6E732E61
          646F62652E636F6D2F70686F746F73686F702F312E302F2220786D703A437265
          61746F72546F6F6C3D2241646F62652050686F746F73686F7020435336202857
          696E646F7773292220786D703A437265617465446174653D22323031382D3130
          2D32365432303A33393A32382B30373A30302220786D703A4D65746164617461
          446174653D22323031382D31302D32365432303A33393A32382B30373A303022
          20786D703A4D6F64696679446174653D22323031382D31302D32365432303A33
          393A32382B30373A30302220786D704D4D3A496E7374616E636549443D22786D
          702E6969643A3942343631443546323444394538313139323345393541444233
          3933453336302220786D704D4D3A446F63756D656E7449443D22786D702E6469
          643A394134363144354632344439453831313932334539354144423339334533
          36302220786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D
          702E6469643A3941343631443546323444394538313139323345393541444233
          393345333630222064633A666F726D61743D22696D6167652F6A706567222070
          686F746F73686F703A436F6C6F724D6F64653D2233222070686F746F73686F70
          3A49434350726F66696C653D22735247422049454336313936362D322E31223E
          0D0A0909093C786D704D4D3A486973746F72793E0D0A090909093C7264663A53
          65713E0D0A09090909093C7264663A6C692073744576743A616374696F6E3D22
          63726561746564222073744576743A696E7374616E636549443D22786D702E69
          69643A3941343631443546323444394538313139323345393541444233393345
          333630222073744576743A7768656E3D22323031382D31302D32365432303A33
          393A32382B30373A3030222073744576743A736F6674776172654167656E743D
          2241646F62652050686F746F73686F7020435336202857696E646F777329222F
          3E0D0A09090909093C7264663A6C692073744576743A616374696F6E3D227361
          766564222073744576743A696E7374616E636549443D22786D702E6969643A39
          4234363144354632344439453831313932334539354144423339334533363022
          2073744576743A7768656E3D22323031382D31302D32365432303A33393A3238
          2B30373A3030222073744576743A736F6674776172654167656E743D2241646F
          62652050686F746F73686F7020435336202857696E646F777329222073744576
          743A6368616E6765643D222F222F3E0D0A090909093C2F7264663A5365713E0D
          0A0909093C2F786D704D4D3A486973746F72793E0D0A09093C2F7264663A4465
          736372697074696F6E3E0D0A093C2F7264663A5244463E0D0A3C2F783A786D70
          6D6574613E0D0A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020203C3F7870
          61636B657420656E643D2777273F3EFFE20C584943435F50524F46494C450001
          0100000C484C696E6F021000006D6E74725247422058595A2007CE0002000900
          0600310000616373704D53465400000000494543207352474200000000000000
          00000000010000F6D6000100000000D32D485020200000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000001163707274000001500000003364657363000001840000006C777470
          74000001F000000014626B707400000204000000147258595A00000218000000
          146758595A0000022C000000146258595A0000024000000014646D6E64000002
          5400000070646D6464000002C400000088767565640000034C00000086766965
          77000003D4000000246C756D69000003F8000000146D6561730000040C000000
          2474656368000004300000000C725452430000043C0000080C67545243000004
          3C0000080C625452430000043C0000080C7465787400000000436F7079726967
          6874202863292031393938204865776C6574742D5061636B61726420436F6D70
          616E790000646573630000000000000012735247422049454336313936362D32
          2E31000000000000000000000012735247422049454336313936362D322E3100
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000058595A20000000000000F351000100
          00000116CC58595A200000000000000000000000000000000058595A20000000
          0000006FA2000038F50000039058595A2000000000000062990000B785000018
          DA58595A2000000000000024A000000F840000B6CF6465736300000000000000
          1649454320687474703A2F2F7777772E6965632E636800000000000000000000
          001649454320687474703A2F2F7777772E6965632E6368000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000064657363000000000000002E4945432036313936362D322E312044
          656661756C742052474220636F6C6F7572207370616365202D20735247420000
          0000000000000000002E4945432036313936362D322E312044656661756C7420
          52474220636F6C6F7572207370616365202D2073524742000000000000000000
          0000000000000000000000000064657363000000000000002C5265666572656E
          63652056696577696E6720436F6E646974696F6E20696E204945433631393636
          2D322E3100000000000000000000002C5265666572656E63652056696577696E
          6720436F6E646974696F6E20696E2049454336313936362D322E310000000000
          00000000000000000000000000000000000000000076696577000000000013A4
          FE00145F2E0010CF140003EDCC0004130B00035C9E0000000158595A20000000
          00004C09560050000000571FE76D656173000000000000000100000000000000
          0000000000000000000000028F00000002736967200000000043525420637572
          76000000000000040000000005000A000F00140019001E00230028002D003200
          37003B00400045004A004F00540059005E00630068006D00720077007C008100
          86008B00900095009A009F00A400A900AE00B200B700BC00C100C600CB00D000
          D500DB00E000E500EB00F000F600FB01010107010D01130119011F0125012B01
          320138013E0145014C0152015901600167016E0175017C0183018B0192019A01
          A101A901B101B901C101C901D101D901E101E901F201FA0203020C0214021D02
          26022F02380241024B0254025D02670271027A0284028E029802A202AC02B602
          C102CB02D502E002EB02F50300030B03160321032D03380343034F035A036603
          72037E038A039603A203AE03BA03C703D303E003EC03F9040604130420042D04
          3B0448045504630471047E048C049A04A804B604C404D304E104F004FE050D05
          1C052B053A05490558056705770586059605A605B505C505D505E505F6060606
          160627063706480659066A067B068C069D06AF06C006D106E306F50707071907
          2B073D074F076107740786079907AC07BF07D207E507F8080B081F0832084608
          5A086E0882089608AA08BE08D208E708FB09100925093A094F09640979098F09
          A409BA09CF09E509FB0A110A270A3D0A540A6A0A810A980AAE0AC50ADC0AF30B
          0B0B220B390B510B690B800B980BB00BC80BE10BF90C120C2A0C430C5C0C750C
          8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D8E0DA90DC30DDE0DF80E130E
          2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F410F5E0F7A0F960FB30FCF0F
          EC1009102610431061107E109B10B910D710F511131131114F116D118C11AA11
          C911E81207122612451264128412A312C312E31303132313431363138313A413
          C513E5140614271449146A148B14AD14CE14F01512153415561578159B15BD15
          E0160316261649166C168F16B216D616FA171D17411765178917AE17D217F718
          1B18401865188A18AF18D518FA19201945196B199119B719DD1A041A2A1A511A
          771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C021C2A1C521C7B1CA31CCC1C
          F51D1E1D471D701D991DC31DEC1E161E401E6A1E941EBE1EE91F131F3E1F691F
          941FBF1FEA20152041206C209820C420F0211C2148217521A121CE21FB222722
          55228222AF22DD230A23382366239423C223F0241F244D247C24AB24DA250925
          382568259725C725F726272657268726B726E827182749277A27AB27DC280D28
          3F287128A228D429062938296B299D29D02A022A352A682A9B2ACF2B022B362B
          692B9D2BD12C052C392C6E2CA22CD72D0C2D412D762DAB2DE12E162E4C2E822E
          B72EEE2F242F5A2F912FC72FFE3035306C30A430DB3112314A318231BA31F232
          2A3263329B32D4330D3346337F33B833F1342B3465349E34D83513354D358735
          C235FD3637367236AE36E937243760379C37D738143850388C38C83905394239
          7F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3BE83C273C653CA43CE33D223D
          613DA13DE03E203E603EA03EE03F213F613FA23FE24023406440A640E7412941
          6A41AC41EE4230427242B542F7433A437D43C044034447448A44CE4512455545
          9A45DE4622466746AB46F04735477B47C04805484B489148D7491D496349A949
          F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724CBA4D024D4A4D934DDC4E254E
          6E4EB74F004F494F934FDD5027507150BB51065150519B51E65231527C52C753
          13535F53AA53F65442548F54DB5528557555C2560F565C56A956F75744579257
          E0582F587D58CB591A596959B85A075A565AA65AF55B455B955BE55C355C865C
          D65D275D785DC95E1A5E6C5EBD5F0F5F615FB36005605760AA60FC614F61A261
          F56249629C62F06343639763EB6440649464E9653D659265E7663D669266E867
          3D679367E9683F689668EC6943699A69F16A486A9F6AF76B4F6BA76BFF6C576C
          AF6D086D606DB96E126E6B6EC46F1E6F786FD1702B708670E0713A719571F072
          4B72A67301735D73B87414747074CC7528758575E1763E769B76F8775677B378
          11786E78CC792A798979E77A467AA57B047B637BC27C217C817CE17D417DA17E
          017E627EC27F237F847FE5804780A8810A816B81CD8230829282F4835783BA84
          1D848084E3854785AB860E867286D7873B879F8804886988CE8933899989FE8A
          648ACA8B308B968BFC8C638CCA8D318D988DFF8E668ECE8F368F9E9006906E90
          D6913F91A89211927A92E3934D93B69420948A94F4955F95C99634969F970A97
          7597E0984C98B89924999099FC9A689AD59B429BAF9C1C9C899CF79D649DD29E
          409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A296A306A376A3E6A456A4C7A5
          38A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9A9AA1CAA8FAB02AB75ABE9AC
          5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0EAB160B1D6B24BB2C2B338B3
          AEB425B49CB513B58AB601B679B6F0B768B7E0B859B8D1B94AB9C2BA3BBAB5BB
          2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABFF5C070C0ECC167C1E3C25FC2
          DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7BFC83DC8BCC93AC9B9CA38CA
          B7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CFB8D039D0BAD13CD1BED23FD2
          C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7E0D864D8E8D96CD9F1DA76DA
          FBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE036E0BDE144E1CCE253E2DBE3
          63E3EBE473E4FCE584E60DE696E71FE7A9E832E8BCE946E9D0EA5BEAE5EB70EB
          FBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F172F1FFF28CF319F3A7F434F4
          C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA57FAE7FB77FC07FC98FD29FD
          BAFE4BFEDCFF6DFFFFFFDB004300020101020101020202020202020203050303
          0303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C
          0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807
          080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080061006103012200
          021101031101FFC4001F00000105010101010101000000000000000001020304
          05060708090A0BFFC400B5100002010303020403050504040000017D01020300
          041105122131410613516107227114328191A1082342B1C11552D1F024336272
          82090A161718191A25262728292A3435363738393A434445464748494A535455
          565758595A636465666768696A737475767778797A838485868788898A929394
          95969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9
          CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4
          001F0100030101010101010101010000000000000102030405060708090A0BFF
          C400B51100020102040403040705040400010277000102031104052131061241
          510761711322328108144291A1B1C109233352F0156272D10A162434E125F117
          18191A262728292A35363738393A434445464748494A535455565758595A6364
          65666768696A737475767778797A82838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C030100021103
          11003F00FDFCA28A2800A28A09C0A0028AE07E3B7ED59F0C7F65ED2A0BDF891F
          113C11E01B5BB0C6DDFC43ADDB69BF69DBD44626753211C70B93CD7C99E3CFF8
          39A3F621F87BA85CD9DD7C71B0D42EED813B34BF0FEADA84729048C24D15AB42
          7907F8F18C1CE082403EF1A2BF3F7C27FF000745FEC3DE2B9562FF0085CCDA5C
          CCCCAA97FE15D6215202EEDC5FECA6300F20658124631C8CFD75FB3DFED8BF09
          FF006B1D3A5BAF865F127C0FE3D8EDE3596E1742D6ADEFA5B456E9E6C71B1788
          F23870A7DA803D228A28A0028A28A0028A28A0028A2B17E237C44D0FE11F8035
          AF15789B53B5D17C3BE1CB19B53D4EFEE9F6C3656D0A192595CF6555524FD280
          337E39FC76F07FECCFF09F5AF1D78FBC45A5F84FC23E1DB7373A86A7A84C2286
          DD721547AB3B315444505DDD9554333007F9E1FF0082AC7FC1DF9E3CF8B5AC6B
          3E0BFD99ED8F817C1FF35A9F18DFDB07D7F535E8D25B46D98ECE36CB852CAF3E
          DD8E1A07CA2FC77FF05CDFF82DAF8B7FE0AE3F1DBC9B46BCF0FF00C1BF095DC9
          FF0008A7875BE49273CA1D46F76921EEE45C80B92902318D325A5966F846803F
          56BF65DFF82D5FC34FDBB7E1169BF01FF6FED066F19787EDA1369E1BF8B7631F
          FC553E1276C2879E454679970109942B96312F9F15CEE2C9E17FF0549FF82177
          C40FF827C68D6FF10FC2FAA69FF183F67FD7923BAD17C7FE1C22E6D521948110
          BC1196584B12A165566864DE9B5C3B18D7E19AFBB7FE08C3FF000541FDA27F62
          CF19DDF85BE1BF8475EF8D7F0DF5E62BE21F86CDA75C6A963A8C6EA56530AC71
          CA6DA678F729754647017CD8E508A0007C2556F42D7AFBC2FACDAEA5A65E5DE9
          DA858C8B35BDD5ACCD0CD6EEA721D1D48656079041C8AFDC9FDBCBFE0DA7D3BF
          6CFF0082CBF1EBF653F02F8D3E156B5A9992E759F83BE3AD2E6D0EF2DE5032E2
          C3ED1C464B619626730307223922F2C415F87FE37F03EB5F0CFC5FA9787FC49A
          3EA9A06BDA35C3D9EA1A6EA36AF6B7763321C3C52C4E03A3A9041560083401FD
          267C63FF0082FDF8CBFE09F3FB1AFEC2BF132FB4B6F899E01F8ABE071A7F8E45
          C4F8D5D751B1B7B18E5BBB7B924869DA592E59926DCB2F93B7742C4C95FA7DFB
          117EDCDF0CFF00E0A1BF00F4EF891F0AFC4517883C3B7CED6F3A32186F34ABA4
          00C9697509F9A1993729C1E19591D0BC6E8EDFCE67C638BFE1A27FE0D0AF857A
          95AA1BABDF817F14EE74DD427C96682DEE65BD7DAD86200DDA95901B82901540
          18396F8A7FE0969FF0546F887FF04A4FDA56CFC79E0998EA3A45D94B6F12F86A
          E2E1A2B1F1259827F752100EC9937334530563139CE1D1A48DC03FB67A2BCAFF
          0062AFDB1FC0FF00B7C7ECD1E17F8A9F0F6FE4BDF0DF8A2DBCD48A7511DDE9D3
          AFCB35A5C202C12689C3230059491B959D1958FAA5001451450015F9B3FF0007
          1C7ECE3F19BF6D6F805A2FC2BF03F8C3E17FC2FF0086B7F30D5BC67E24F1AF89
          0E9506A021917ECF6081124628AF89E42EAAA592DC06E1C1FD2491C468598ED5
          5E493D857F0BBFB75FED377DFB667ED8FF00133E28DF4974CDE36F115E6A76D1
          CEFB9ED2D5E56FB35BFF00BB142238C0F441401F7147FF000470FD903E067D8A
          E3E307FC1413E1CDC31DA6EB4FF87BA0CDE25FE3C10B736D24B8381FC56FC672
          46073DA7C03F869FF04CABFF008D9A0FC3DF875F0EFF006A2FDA97C75E2AB987
          4FD22C6EEF20D174DBCB96CE73244F6734310E59E4914A471A33B305566AFC91
          AFE9CBFE0D4FFF00823027EC9BF04E0FDA13E22692A9F12FE22D80FF008476D2
          E3E693C39A2CA032B95E89737402B93CB243E5A6519E74A00FBC3E0AFF00C11A
          3F654FD9FED6D97C35FB3FFC2D86E2D4AB43777FA1C5AB5E42CA08056E6EC4B3
          03C9C9DD93DEBACF0F7FC1407F671D3BC556FE08D2BE35FC15835A8241636FA1
          5A78BB4C5B88DC1D8214B7597706078D8173ED5F9BBFF05DBF8E5F13BF6F5FF8
          28A7C36FD807E15789A6F0568BE33D346B1F10B5C895CBB5932CB2BDB328DA5A
          28ED60690C61C2DC4971144CC815B3D2788BFE0DCBFF008273F80B50D07E07EB
          7713E9FF0016BC51A699348B9BCF1E4F0F8AB534FDEFFA5456BBC5A3B7EE65E9
          69E5E636F94E0D007EA84DF127C370F8EA3F0BC9AFE88BE269ADFED69A435F44
          2F9E1E7F7820DDE614F95BE6C6383CF15F25FF00C158FF00E0869F06FF00E0AC
          BE0F69BC4967FF00089FC48B1B730E93E35D2AD90DF40003B22BA4CA8BBB756C
          1F2DD8328DC239222EC4FE1FFEC1BE31D17FE09F1FF070E78664F899F1BF49F8
          85F0D3E14E8DA8691A47C4137C750B27D1DB4FB9B7B38FCE8FCC3FB99AE3ECAC
          A19961789E30DE5C608FE9C7E187C54F0CFC6BF0269DE28F07788345F15786B5
          743258EABA45EC7796778A18A931CB1928D86565383C1520F20D007E177C31FF
          008253FC59FD8D3FE0863FB75FECFDF13349B7FB2E86B1FC46F0F7886C64F3B4
          BD7E0B7862B995A07620AC91FF0063A892278D244F350FCCB246C7F9F3AFEF6F
          E2CFC3AB1F8BBF0AFC4DE13D497769FE28D2AEB49BA5CE3745710BC4E3BFF0B9
          ED5FC17EBFA1DD78635DBDD36FA192DEF74F9DEDAE22752AD1488C559483C820
          82306803F58FFE0D26FF00829ECDFB297ED9EDF04BC4DA918FC03F1AA74B7B05
          9E6610E99E2055DB6AE80B6D5FB52816CC15773C9F64C90B1D7F51C0E457F2DF
          FF000493F80BE1CFF8250FEC4DAD7EDEDF19B458AF7C45731BE8DF043C2F7ABF
          36ADA94CAE835378FE5223015CA31604431DC48AACED6CC7FA4CFD91BE3947FB
          4DFECABF0D7E23471A42BE3CF0BE9BE203120C085AEAD6399931938DA5CAE327
          18A00F44A28A2803C7FF00E0A13F102E7E137EC0DF1C3C55663379E19F87FAF6
          AB00C0E64834EB8957AF1D5075E2BF863AFEE93F6F5F86D75F19BF618F8D1E0F
          B18A69EF7C59E04D7346B78E23892492E34F9E1555383C92E00E0F3D8D7F18BF
          F04F7FD853C69FF051EFDAC3C2DF09FC0F6EFF00DA1AF4FBEFB50688C96FA1D8
          260DC5ECFC80238D7A02C0BBB471AE5E450403EC3FF83733FE095FA07ED75F1B
          9BE337C61934FD2FE037C2CD66C2D2E9F5541F62F13EB971710C565A592E3CB6
          8FCE9EDCCCAD9DC258222B89CB2FF59E062BF937FF0082DA7FC142BC33F0F7C4
          1F0FFF0065AFD9BAFA4D37E0BFECCF7C8D1EA304BBA5F14788E190B4DA8492AE
          D1279531976BA2AABCB24EEB98CC3B3FAA8F84BF11F4FF008C5F0B3C35E2ED25
          D64D2BC55A55AEB166EAE1C3C3710A4D19047072AE391D6803F1CFFE0ADFE3DD
          5BFE092DFF0005FAF843FB5A6BDA7EA97DF05FE206843C15E26BFB680CBFD993
          08E58DD0ED4382B18B6BA44FBF30B6BA441F2123E63FF8385BC5BE02FF008289
          FF00C159BF67693C0BF183C2761F0FFC59E01169AAF8DACB598BEC5A469A2EB5
          27D48C8E1D40912CCCC1AD9CABB96113005F15FD117C62F82FE13FDA13E1B6AB
          E0EF1CF87347F1678575C88437DA5EA96A9736B72A1832EE46046E560ACAC3E6
          5655604100D7F33DFF0005D9FD8DBE12FF00C12CBFE0A75F073C3BF0DBE17EA1
          AF7C37FF00846A4F146BDE0C5D63509DB53B5927BB8B52892E4C8F710A3595B3
          12FB984786720A8604033BFE09E5E0EFD9E7F6DFFF0082F6F83FE14F827C2371
          AC7ECD7A7F86356F08E9163AE49706E75FB482C2F6EA5BF999984A924F7EF35C
          A6DF29A20D1009094D8BF667EC93E0AD4FFE0821FF00070568BFB3BF85F5ED52
          FF00F679FDA3F4F3AAE95A3DFDCBDD1D0AF5D2748597E5CF9CB7167F672FFC76
          D711195A4785597DB3F67DFDB5FF00E09730F8B3C3BFB4C7873C4DE05F0078C3
          C13E1B5D16C2C6E27BCD36FF0041B430C88F6B168D1B18E491565990B5B43286
          2EC55DF7063E2DFB19F8C356FF0082F7FF00C17EF4DFDA4B41F0FEA9A6FECF5F
          B3969E747D1353D42DDADCEB57CA933C4A3E63FBF335DB5C955FF570436EB204
          79543007EE4E78AFE5FF00C11FF0445FF86AAFF82F57ED1D61E3A317857E02FC
          27F17EA3E30F1AEAD753FD86DA1D32E247D42DAC966DD8432C1202D2165F2E08
          E59372B0446FEA031C57F3F3FF0007667FC157F4AF03DCEB9FB2FF00C2792D74
          FD53C517706B9F16B55D3A158A4BF945B4115B69F24806E790DBDBDAB4CDD445
          0DAC3BCAF9B1800FCD4FF82DC7FC150DBFE0A63FB554771E1BB35F0FFC1CF873
          6E7C3BF0F3C3F047F67B7B0D3D36A1B81000A914971E546C51547971C7045F37
          9218FF0048FF00F06D278BEEBC6FFF000440F80F7B78D23CB0D86A7A7A9772E4
          476DABDF5B46327B0489401D00000E057F1DB5FD957FC1BB9F0AAEBE0DFF00C1
          16FE0068F77BBCDBCD025D757273FBBD46F6E7508FB0FE0B95EDF89EA403ED2A
          28A28003CD7E027EDDFF0007F4AFF83793F657F89DE08F81BA6EB7E22F8FBFB4
          A6B1A8B8D7749B19A49BC0DE116B9985B43148884C72F94446A576334CD34A1F
          16B0AD7EFDD7CBFF00B707C73F8C5E01F8B3E0F87E17F83F59D73C35E0DF2FC5
          7E3F9E0B4127F68696D2B5B9D3ACD19775DDD1B75D42E8456C7CD59ECF4F47C4
          77415C03F8D5FF008673F885FF00421F8CBFF04B73FF00C457F615FF00040BF8
          99AA7C51FF00823EFC09BAD6AC6F34CD5B45F0F7FC239716978863B88469B3CB
          611EF52015DD1DBC6E0119DAEA79CE4F97FC3EFDB43E3DF893E197C1D9BC37E1
          1F1F7885FE1BD85BEA7F192E758F0BDD69575A99622DE6B3B386E6DE292FE68E
          0FB7DDEDB1524CF6BA7C61992E191BC67E017C5DFDAB34AF16FC3B83E226A9F1
          BF4EF05EB5E197BBF1DCB67E1F9356BFD2A39068F2C5A8DACC9A7A3C72DC4B3B
          5A4962B0C9358450EAB2213B63B98C03F5DB757E42FF00C146BC1BAD6A9FF075
          27EC7BAB5A693AADCE9765E13912E2F61B491EDE03BB59243C806D53820E09E8
          47AD7D41F1F20F89DF123E197C26D0FE0AF8DBE2AC4BAE78C757B6BAD7FC4563
          3E9573676B1E91AA4B6ED70D369C656B38AF23B61134F0FF00A5048D4CD22CA2
          47E6FC51F137F686B0D6BC0B67E2A9BC59A7FC3F7D4BC51078AFC45E16D3EE2E
          F5E7D3A0D6123B29CD9AD837D99A4C5BC205B999C59DCDE4C8C8611711807A67
          C45FF8217FEC87F157E21FFC253ACFC01F87726B1E634CED6964D636F3BB7DE6
          96DE06486463D497424924F524D7D2FF000EFE1BF873E10F82F4FF000DF84F41
          D13C2FE1DD2633158E97A458C563656484962B14312AA20DC49C2803249EF5F9
          F9ACF88BE33DFF00881FC45A6F89BE3F7FC2B881B50B6D3274D058EB175A0437
          FE1F8E5BE92C1AD5677BD8D2FBC4096FBA21733DAD8DBDC2C375322B4D63C47F
          15FE225978FF005A88788BE3B4DF04D6DF549BC23A83E81A85AEA1AA6B096F6B
          B2C6F2EADF4EB8D4A1D3924374F6F72F6C4CD279A85AE234B58E600F63FF0082
          CBFF00C1466E3FE09BBFB19EB1E28F0EE8F75E26F88FAE87D27C21A45B5ABDD1
          92F590E6EA58D159BECF6EBFBC7CE03111C7B94CAAC3F8FCF1C7C29F8B3F12FC
          69AC7893C41E15F1F6B1AF7882F66D4B52BFBBD26EA5B8BEB99A469259A47299
          677766624F24926BFA62F84FF1D7F6BC1E23F19CDA9E8FF142D75CF16692341F
          07693ABC515F42DA94D61A42FDB679A2D32DACEC1B4FDD7B792B3F970DE34F2C
          1146B25B18A3EE17C47FB58FC426B7F138BCF10784B5FF00025968DA3F897419
          6273A7F8875059AEADAF3ECD12D93AB5BDC3B59DE7DB60999A080797E531F305
          007F2F5F03FF0061AF8A5F1EBE33784FC0FA4F823C5306A7E2ED5ED747B696E7
          48B88E081E795631248E530B1A6EDCCC78555627001AFEDE7E08FC26D2FE027C
          18F08F81743F3BFB17C17A2D9E8361E736E93ECF6B02411EE3DDB622E4F735F3
          47C321F1E7C63FB5D5BC1E20D7AFBC3DE0FB9D4F52BBD674BB5B392F2C638F4D
          1626C6DEC6FE4B781923BB6D4646B8322319469BB22F2C09DE4FAFC702800A28
          A2800A28A2800AF31F12FECE579AFEB579750FC48F891A6C77935D4DF67B5D46
          111C1E7C450247BA22556262648C1CE1BA9650147A751401E53AEFECE3AE6B49
          3431FC56F885A7DB5C431C4E2D64B51347B228A206391E162BBFCAF31CE0B192
          472AD1A9294CB2FD98B50B5BB8A6FF008599F11FCCB76919197530DBC3BC2F87
          4915E36D82231A7C83092B93B9C992BD668A00F2BB4FD9C351B29D258FE2078D
          776E476493519A48C15F20614348484C439018B12CE4BB481E55961F0C7ECC5A
          9683A75BDBDC7C52F899AA7D96082DE396E2FE1F30A47F640E5CAC437BC82D32
          CED960D757450A2C8A89EB545007987883F678D4758D4639AD7E20F8E3495867
          32C7F65BE2EE008E1454612EF89D418893BA33BBCC7272ECCEDE93A6DB3D969F
          6F0C933DC490C6A8D2B8F9A5200058FB9EBF8D4D450014514500145145001451
          45001451450014514500145145001451450014514500145145007FFFD9}
      end
      object QRLabel20: TQRLabel
        Left = 229
        Top = 16
        Width = 337
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333330000
          605.895833333333300000
          42.333333333333330000
          891.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ALARIC PHOTOGRAPHY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Levenim MT'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 20
      end
      object QRLabel21: TQRLabel
        Left = 229
        Top = 47
        Width = 337
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          605.895833333333300000
          124.354166666666700000
          891.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Jl. Laksda Adisucipto No. 12, Sleman, Yogyakarta'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 229
        Top = 64
        Width = 337
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          605.895833333333300000
          169.333333333333300000
          891.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'www.alaricphotography.com - 087773846262'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 133
        Top = 88
        Width = 433
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333300000
          351.895833333333300000
          232.833333333333300000
          1145.645833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Laporan RSVP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Levenim MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 25
      end
    end
    object ChildBand2: TQRChildBand
      Left = 48
      Top = 188
      Width = 698
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        1846.791666666667000000)
      ParentBand = QRBand7
      object QRLabel10: TQRLabel
        Left = 8
        Top = 8
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 40
        Top = 8
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          21.166666666666670000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ID Transaksi'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 127
        Top = 8
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          336.020833333333300000
          21.166666666666670000
          174.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tgl Foto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 200
        Top = 8
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          529.166666666666700000
          21.166666666666670000
          256.645833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nama'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 304
        Top = 8
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          21.166666666666670000
          235.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Telp'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 400
        Top = 8
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          21.166666666666670000
          320.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Email'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 526
        Top = 8
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1391.708333333333000000
          21.166666666666670000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 608
        Top = 8
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          21.166666666666670000
          214.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Kekurangan'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
