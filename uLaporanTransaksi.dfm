object LaporanTransaksi: TLaporanTransaksi
  Left = 199
  Top = 305
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Laporan Trasaksi'
  ClientHeight = 137
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 121
    Caption = 'Format Laporan Transaksi'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 80
      Height = 19
      Caption = 'Tanggal Awal'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 83
      Height = 19
      Caption = 'Tanggal Akhir'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 104
      Top = 24
      Width = 129
      Height = 27
      Date = 43480.568327847220000000
      Format = 'yyyy-MM-dd'
      Time = 43480.568327847220000000
      TabOrder = 0
      OnKeyPress = DateTimePicker1KeyPress
    end
    object DateTimePicker2: TDateTimePicker
      Left = 104
      Top = 56
      Width = 129
      Height = 27
      Date = 43480.568365208330000000
      Format = 'yyyy-MM-dd'
      Time = 43480.568365208330000000
      TabOrder = 1
      OnKeyPress = DateTimePicker2KeyPress
    end
    object Button1: TButton
      Left = 128
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Cetak'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Reset'
      TabOrder = 3
      OnClick = Button2Click
      OnKeyPress = Button2KeyPress
    end
  end
end
