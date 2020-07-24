object frmDataProduk: TfrmDataProduk
  Left = 581
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data Jasa'
  ClientHeight = 505
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 8
    Top = 104
    Width = 721
    Height = 393
    Caption = 'Data Jasa'
    TabOrder = 0
    object Label1: TLabel
      Left = 442
      Top = 26
      Width = 61
      Height = 19
      Caption = 'Cari Data'
      FocusControl = DBGrid1
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 56
      Width = 705
      Height = 329
      DataSource = DataSource1
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'id_produk'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID Jasa'
          Title.Color = cl3DLight
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nama Jasa'
          Title.Color = cl3DLight
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'deskripsi'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Deskripsi'
          Title.Color = cl3DLight
          Width = 345
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Title.Color = cl3DLight
          Width = 87
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 512
      Top = 24
      Width = 201
      Height = 27
      TabOrder = 1
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 24
      Width = 97
      Height = 27
      ItemHeight = 19
      TabOrder = 3
      Text = '25'
      OnChange = ComboBox1Change
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        '25'
        '50'
        '100'
        '(100) PERCENT')
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 721
    Height = 89
    Caption = 'Kelola Data Jasa'
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 46
      Height = 19
      Caption = 'ID Jasa'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 70
      Height = 19
      Caption = 'Nama Jasa'
    end
    object Label4: TLabel
      Left = 280
      Top = 24
      Width = 60
      Height = 19
      Caption = 'Deskripsi'
    end
    object Label5: TLabel
      Left = 280
      Top = 56
      Width = 39
      Height = 19
      Caption = 'Harga'
    end
    object Rp: TLabel
      Left = 352
      Top = 56
      Width = 17
      Height = 19
      Caption = 'Rp'
    end
    object edtId: TEdit
      Left = 104
      Top = 24
      Width = 145
      Height = 27
      TabOrder = 0
      Text = 'edtId'
      OnKeyPress = edtIdKeyPress
    end
    object edtNama: TEdit
      Left = 104
      Top = 56
      Width = 145
      Height = 27
      TabOrder = 1
      Text = 'edtNama'
      OnKeyPress = edtNamaKeyPress
    end
    object edtDeskripsi: TEdit
      Left = 352
      Top = 24
      Width = 265
      Height = 27
      TabOrder = 2
      Text = 'edtDeskripsi'
    end
    object edtHarga: TEdit
      Left = 376
      Top = 56
      Width = 137
      Height = 27
      TabOrder = 3
      Text = 'edtHarga'
      OnKeyPress = edtHargaKeyPress
    end
    object Button2: TButton
      Left = 632
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 632
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.qry1
    Left = 48
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 216
    object ambahData1: TMenuItem
      Caption = 'Tambah Data'
      ShortCut = 113
      OnClick = ambahData1Click
    end
    object UbahData1: TMenuItem
      Caption = 'Ubah Data'
      ShortCut = 114
      OnClick = UbahData1Click
    end
    object HapusData1: TMenuItem
      Caption = 'Hapus Data'
      ShortCut = 46
      OnClick = HapusData1Click
    end
    object Refresh2: TMenuItem
      Caption = 'Refresh'
      ShortCut = 116
      OnClick = Refresh2Click
    end
  end
end
