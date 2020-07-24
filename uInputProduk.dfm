object frmInputProduk: TfrmInputProduk
  Left = 813
  Top = 470
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frmInputProduk'
  ClientHeight = 217
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 489
    Height = 201
    Caption = 'Input Produk'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 62
      Height = 19
      Caption = 'ID Produk'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 86
      Height = 19
      Caption = 'Nama Produk'
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 60
      Height = 19
      Caption = 'Deskripsi'
    end
    object Label4: TLabel
      Left = 8
      Top = 120
      Width = 39
      Height = 19
      Caption = 'Harga'
    end
    object Label5: TLabel
      Left = 112
      Top = 120
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object edtId: TEdit
      Left = 112
      Top = 24
      Width = 369
      Height = 27
      TabOrder = 0
      OnKeyPress = edtIdKeyPress
    end
    object edtNama: TEdit
      Left = 112
      Top = 56
      Width = 369
      Height = 27
      TabOrder = 1
      OnKeyPress = edtNamaKeyPress
    end
    object edtDeskripsi: TEdit
      Left = 112
      Top = 88
      Width = 369
      Height = 27
      TabOrder = 2
      OnKeyPress = edtDeskripsiKeyPress
    end
    object edtHarga: TEdit
      Left = 136
      Top = 120
      Width = 345
      Height = 27
      TabOrder = 3
      OnKeyPress = edtHargaKeyPress
    end
    object Button1: TButton
      Left = 288
      Top = 160
      Width = 105
      Height = 25
      Caption = 'Simpan'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 405
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
end
