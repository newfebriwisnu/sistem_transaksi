object frmDataTransaksi: TfrmDataTransaksi
  Left = 146
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data Transaksi'
  ClientHeight = 569
  ClientWidth = 1358
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
    Top = 8
    Width = 1345
    Height = 553
    Caption = 'Data Transaksi'
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 75
      Width = 45
      Height = 19
      Caption = 'Jumlah'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 112
      Width = 1329
      Height = 433
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
          FieldName = 'id_transaksi'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Color = cl3DLight
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal_transaksi'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tgl Transaksi'
          Title.Color = cl3DLight
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nama'
          Title.Color = cl3DLight
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal_foto'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tgl Foto'
          Title.Color = cl3DLight
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sesi_foto'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Sesi'
          Title.Color = cl3DLight
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Title.Color = cl3DLight
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'diskon'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Diskon'
          Title.Color = cl3DLight
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dibayar'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'DP'
          Title.Color = cl3DLight
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kekurangan'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Kekurangan'
          Title.Color = cl3DLight
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total_item'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Color = cl3DLight
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total_harga'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Color = cl3DLight
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'note'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Note'
          Title.Color = cl3DLight
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'admin'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Admin'
          Title.Color = cl3DLight
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pembayaran'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Pembayaran'
          Title.Color = cl3DLight
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pelunasan'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Pelunasan'
          Title.Color = cl3DLight
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal_pelunasan'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tgl Lunas'
          Title.Color = cl3DLight
          Width = 87
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 8
      Top = 24
      Width = 121
      Height = 33
      Caption = 'Reset'
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 264
      Top = 16
      Width = 1073
      Height = 89
      Caption = 'Filter'
      TabOrder = 2
      object Label2: TLabel
        Left = 8
        Top = 59
        Width = 40
        Height = 19
        Caption = 'Status'
      end
      object Label3: TLabel
        Left = 792
        Top = 27
        Width = 119
        Height = 19
        Caption = 'Tanggal Foto Awal'
      end
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 79
        Height = 19
        Caption = 'ID Transaksi'
      end
      object Label4: TLabel
        Left = 272
        Top = 27
        Width = 80
        Height = 19
        Caption = 'Pembayaran'
      end
      object Label5: TLabel
        Left = 528
        Top = 27
        Width = 97
        Height = 19
        Caption = 'Transaksi Awal'
      end
      object Label6: TLabel
        Left = 528
        Top = 57
        Width = 98
        Height = 19
        Caption = 'Transaksi Akhir'
      end
      object Label7: TLabel
        Left = 272
        Top = 60
        Width = 41
        Height = 19
        Caption = 'Admin'
      end
      object Label8: TLabel
        Left = 792
        Top = 59
        Width = 120
        Height = 19
        Caption = 'Tanggal Foto Akhir'
      end
      object ComboBox1: TComboBox
        Left = 101
        Top = 56
        Width = 145
        Height = 27
        ItemHeight = 19
        TabOrder = 0
        Text = 'Pilih Status'
        OnChange = ComboBox1Change
        OnKeyPress = ComboBox1KeyPress
        Items.Strings = (
          'BOOKING'
          'RSVP'
          'SELESAI'
          'CANCEL')
      end
      object Edit1: TEdit
        Left = 101
        Top = 24
        Width = 145
        Height = 27
        TabOrder = 1
        Text = 'Edit1'
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
      end
      object ComboBox2: TComboBox
        Left = 360
        Top = 24
        Width = 145
        Height = 27
        ItemHeight = 19
        ItemIndex = 0
        TabOrder = 2
        Text = 'Lunas'
        OnChange = ComboBox2Change
        OnKeyPress = ComboBox2KeyPress
        Items.Strings = (
          'Lunas'
          'Belum Lunas')
      end
      object DateTimePicker2: TDateTimePicker
        Left = 632
        Top = 24
        Width = 145
        Height = 27
        Date = 43480.570892627310000000
        Format = 'yyyy-MM-dd'
        Time = 43480.570892627310000000
        TabOrder = 3
        OnChange = DateTimePicker2Change
        OnKeyPress = DateTimePicker2KeyPress
      end
      object DateTimePicker3: TDateTimePicker
        Left = 632
        Top = 55
        Width = 145
        Height = 27
        Date = 43480.570892627310000000
        Format = 'yyyy-MM-dd'
        Time = 43480.570892627310000000
        TabOrder = 4
        OnChange = DateTimePicker3Change
        OnKeyPress = DateTimePicker3KeyPress
      end
      object ComboBox3: TComboBox
        Left = 360
        Top = 56
        Width = 145
        Height = 27
        ItemHeight = 19
        TabOrder = 5
        Text = 'Pilih Admin'
        OnChange = ComboBox3Change
        OnKeyPress = ComboBox3KeyPress
      end
      object DateTimePicker1: TDateTimePicker
        Left = 920
        Top = 24
        Width = 145
        Height = 27
        Date = 43480.575659479170000000
        Format = 'yyyy-MM-dd'
        Time = 43480.575659479170000000
        TabOrder = 6
        OnChange = DateTimePicker1Change
        OnKeyPress = DateTimePicker1KeyPress
      end
      object DateTimePicker4: TDateTimePicker
        Left = 920
        Top = 56
        Width = 145
        Height = 27
        Date = 43480.586638703700000000
        Format = 'yyyy-MM-dd'
        Time = 43480.586638703700000000
        TabOrder = 7
        OnChange = DateTimePicker4Change
        OnKeyPress = DateTimePicker4KeyPress
      end
    end
    object Button2: TButton
      Left = 136
      Top = 24
      Width = 121
      Height = 80
      Caption = 'Input Transaksi'
      TabOrder = 3
      OnClick = Button2Click
    end
    object ComboBox4: TComboBox
      Left = 56
      Top = 72
      Width = 73
      Height = 27
      ItemHeight = 19
      TabOrder = 4
      Text = '25'
      OnChange = ComboBox4Change
      OnKeyPress = ComboBox4KeyPress
      Items.Strings = (
        '25'
        '50'
        '100'
        '(100) PERCENT')
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.qry1
    Left = 56
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 152
    object UbahData: TMenuItem
      Caption = 'Ubah Data'
      ShortCut = 114
      OnClick = UbahDataClick
    end
    object CancelTransaksi1: TMenuItem
      Caption = 'Cancel Transaksi'
      ShortCut = 115
      OnClick = CancelTransaksi1Click
    end
    object CetakTransaksi1: TMenuItem
      Caption = 'Cetak Transaksi'
      ShortCut = 16464
      OnClick = CetakTransaksi1Click
    end
  end
end
