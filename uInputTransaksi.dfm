object frmInputTransaksi: TfrmInputTransaksi
  Left = 176
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Kelola Transaksi'
  ClientHeight = 601
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object tmpProduk: TLabel
    Left = 168
    Top = 384
    Width = 69
    Height = 19
    Caption = 'tmpProduk'
    Visible = False
  end
  object tmpPayment: TLabel
    Left = 240
    Top = 384
    Width = 81
    Height = 19
    Caption = 'tmpPayment'
    Visible = False
  end
  object Label28: TLabel
    Left = 40
    Top = 384
    Width = 51
    Height = 19
    Caption = 'Label28'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 313
    Height = 161
    Caption = 'Data Konsumen'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 38
      Height = 19
      Caption = 'Nama'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 36
      Height = 19
      Caption = 'Email'
    end
    object Label3: TLabel
      Left = 8
      Top = 89
      Width = 27
      Height = 19
      Caption = 'Telp'
    end
    object Label25: TLabel
      Left = 8
      Top = 122
      Width = 54
      Height = 19
      Caption = 'Member'
    end
    object edtNamaKonsumen: TEdit
      Left = 88
      Top = 24
      Width = 217
      Height = 27
      TabOrder = 0
      Text = 'edtNamaKonsumen'
      OnKeyPress = edtNamaKonsumenKeyPress
    end
    object edtEmailKonsumen: TEdit
      Left = 88
      Top = 56
      Width = 217
      Height = 27
      TabOrder = 1
      Text = 'edtEmailKonsumen'
      OnKeyPress = edtEmailKonsumenKeyPress
    end
    object edtTelpKonsumen: TEdit
      Left = 88
      Top = 88
      Width = 217
      Height = 27
      TabOrder = 2
      Text = 'edtTelpKonsumen'
      OnKeyPress = edtTelpKonsumenKeyPress
    end
    object edtMemberKonsumen: TEdit
      Left = 88
      Top = 120
      Width = 217
      Height = 27
      TabOrder = 4
      Text = 'edtMemberKonsumen'
      OnKeyPress = edtMemberKonsumenKeyPress
    end
    object CheckBox2: TCheckBox
      Left = 64
      Top = 124
      Width = 17
      Height = 17
      Caption = '='
      TabOrder = 3
      OnClick = CheckBox2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 328
    Top = 8
    Width = 313
    Height = 369
    Caption = 'Data Transaksi'
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 83
      Height = 19
      Caption = 'Tanggal Foto'
    end
    object Label5: TLabel
      Left = 8
      Top = 88
      Width = 58
      Height = 19
      Caption = 'Sesi Foto'
    end
    object Label6: TLabel
      Left = 8
      Top = 120
      Width = 43
      Height = 19
      Caption = 'Diskon'
    end
    object Label7: TLabel
      Left = 8
      Top = 152
      Width = 18
      Height = 19
      Caption = 'DP'
    end
    object Label8: TLabel
      Left = 8
      Top = 216
      Width = 76
      Height = 19
      Caption = 'Kekurangan'
    end
    object Label9: TLabel
      Left = 8
      Top = 248
      Width = 65
      Height = 19
      Caption = 'Total Item'
    end
    object Label10: TLabel
      Left = 8
      Top = 280
      Width = 75
      Height = 19
      Caption = 'Total Harga'
    end
    object Label11: TLabel
      Left = 8
      Top = 336
      Width = 31
      Height = 19
      Caption = 'Note'
    end
    object Label12: TLabel
      Left = 104
      Top = 152
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object Label13: TLabel
      Left = 104
      Top = 216
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object Label19: TLabel
      Left = 8
      Top = 24
      Width = 79
      Height = 19
      Caption = 'ID Transaksi'
      FocusControl = Button2
    end
    object lblIDTransaksi: TLabel
      Left = 104
      Top = 24
      Width = 93
      Height = 19
      Caption = 'lblIDTransaksi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 104
      Top = 281
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object Label20: TLabel
      Left = 104
      Top = 120
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object Label24: TLabel
      Left = 104
      Top = 88
      Width = 25
      Height = 19
      Caption = 'Jam'
    end
    object Label14: TLabel
      Left = 8
      Top = 184
      Width = 67
      Height = 19
      Caption = 'Pelunasan'
    end
    object Label26: TLabel
      Left = 104
      Top = 184
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object Label27: TLabel
      Left = 8
      Top = 309
      Width = 80
      Height = 19
      Caption = 'Pembayaran'
    end
    object dateFotoTransaksi: TDateTimePicker
      Left = 104
      Top = 56
      Width = 201
      Height = 27
      Date = 43419.600449421300000000
      Format = 'yyyy-MM-dd'
      Time = 43419.600449421300000000
      TabOrder = 0
      OnKeyPress = dateFotoTransaksiKeyPress
    end
    object edtDibayarTransaksi: TEdit
      Left = 128
      Top = 152
      Width = 177
      Height = 27
      TabOrder = 4
      Text = 'edtDibayarTransaksi'
      OnKeyPress = edtDibayarTransaksiKeyPress
    end
    object edtKekuranganTransaksi: TEdit
      Left = 128
      Top = 216
      Width = 177
      Height = 27
      Enabled = False
      TabOrder = 8
      Text = 'edtKekuranganTransaksi'
      OnKeyPress = edtKekuranganTransaksiKeyPress
    end
    object edtTotalItemTransaksi: TEdit
      Left = 104
      Top = 248
      Width = 201
      Height = 27
      Enabled = False
      TabOrder = 9
      Text = 'edtTotalItemTransaksi'
      OnKeyPress = edtTotalItemTransaksiKeyPress
    end
    object edtTotalHargaTransaksi: TEdit
      Left = 128
      Top = 280
      Width = 177
      Height = 27
      Enabled = False
      TabOrder = 10
      Text = 'edtTotalHargaTransaksi'
      OnKeyPress = edtTotalHargaTransaksiKeyPress
    end
    object edtNoteTransaksi: TEdit
      Left = 104
      Top = 336
      Width = 201
      Height = 27
      TabOrder = 11
      Text = 'edtNoteTransaksi'
    end
    object edtDiskonTransaksi: TEdit
      Left = 128
      Top = 120
      Width = 177
      Height = 27
      TabOrder = 3
      Text = 'edtDiskonTransaksi'
      OnKeyPress = edtDiskonTransaksiKeyPress
    end
    object CheckBox1: TCheckBox
      Left = 56
      Top = 122
      Width = 33
      Height = 17
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object dateSesiTransaksi: TDateTimePicker
      Left = 136
      Top = 88
      Width = 169
      Height = 27
      Date = 43469.731770717590000000
      Format = 'HH:mm'
      Time = 43469.731770717590000000
      Kind = dtkTime
      TabOrder = 1
      OnKeyPress = dateSesiTransaksiKeyPress
    end
    object edtPelunasanTransaksi: TEdit
      Left = 128
      Top = 184
      Width = 177
      Height = 27
      TabOrder = 5
      Text = 'edtPelunasanTransaksi'
      OnKeyPress = edtPelunasanTransaksiKeyPress
    end
    object RadioButton1: TRadioButton
      Left = 104
      Top = 312
      Width = 57
      Height = 17
      Caption = 'Cash'
      TabOrder = 6
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 192
      Top = 312
      Width = 81
      Height = 17
      Caption = 'Transfer'
      TabOrder = 7
      OnClick = RadioButton2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 176
    Width = 313
    Height = 201
    Caption = 'Data Detail Transaksi'
    TabOrder = 1
    object Label15: TLabel
      Left = 8
      Top = 26
      Width = 28
      Height = 19
      Caption = 'Jasa'
    end
    object Label16: TLabel
      Left = 8
      Top = 60
      Width = 45
      Height = 19
      Caption = 'Jumlah'
    end
    object Label17: TLabel
      Left = 8
      Top = 92
      Width = 39
      Height = 19
      Caption = 'Harga'
    end
    object Label18: TLabel
      Left = 8
      Top = 124
      Width = 32
      Height = 19
      Caption = 'Total'
    end
    object Label21: TLabel
      Left = 88
      Top = 93
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object Label22: TLabel
      Left = 88
      Top = 125
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object cbbProdukDetail: TComboBox
      Left = 88
      Top = 24
      Width = 217
      Height = 27
      ItemHeight = 19
      TabOrder = 0
      Text = 'Pilih Jasa'
      OnChange = cbbProdukDetailChange
      OnKeyPress = cbbProdukDetailKeyPress
    end
    object edtJumlahDetail: TEdit
      Left = 88
      Top = 58
      Width = 201
      Height = 27
      TabOrder = 3
      Text = 'edtJumlahDetail'
      OnKeyPress = edtJumlahDetailKeyPress
    end
    object edtHargaDetail: TEdit
      Left = 112
      Top = 90
      Width = 193
      Height = 27
      Enabled = False
      TabOrder = 4
      Text = 'edtHargaDetail'
      OnKeyPress = edtHargaDetailKeyPress
    end
    object edtTotalDetail: TEdit
      Left = 112
      Top = 122
      Width = 193
      Height = 27
      Enabled = False
      TabOrder = 5
      Text = 'edtTotalDetail'
      OnKeyPress = edtTotalDetailKeyPress
    end
    object Button2: TButton
      Left = 8
      Top = 160
      Width = 297
      Height = 33
      Caption = 'Tambah Item'
      TabOrder = 2
      OnClick = Button2Click
    end
    object UpDown1: TUpDown
      Left = 288
      Top = 58
      Width = 17
      Height = 26
      Min = 1
      Position = 1
      TabOrder = 1
      OnChangingEx = UpDown1ChangingEx
    end
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 416
    Width = 635
    Height = 177
    FixedCols = 0
    RowCount = 2
    PopupMenu = PopupMenu1
    TabOrder = 6
    OnKeyPress = StringGrid1KeyPress
    ColWidths = (
      40
      236
      84
      112
      151)
  end
  object Button1: TButton
    Left = 568
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 488
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 328
    Top = 384
    Width = 153
    Height = 25
    Caption = 'Hitung Total'
    TabOrder = 3
    OnClick = Button4Click
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 472
    object Reset1: TMenuItem
      Caption = 'Reset'
      OnClick = Reset1Click
    end
  end
end
