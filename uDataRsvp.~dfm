object frmDataRsvp: TfrmDataRsvp
  Left = 183
  Top = 115
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data RSVP'
  ClientHeight = 473
  ClientWidth = 1129
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
    Width = 1113
    Height = 457
    Caption = 'Data RSVP'
    TabOrder = 0
    object Label2: TLabel
      Left = 150
      Top = 24
      Width = 90
      Height = 19
      Caption = 'Input Ke RSVP'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 88
      Width = 1097
      Height = 361
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
          Title.Caption = 'Transaksi'
          Title.Color = cl3DLight
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal_foto'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal Foto'
          Title.Color = cl3DLight
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nama'
          Title.Color = cl3DLight
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telp'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Telp'
          Title.Color = cl3DLight
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Email'
          Title.Color = cl3DLight
          Width = 146
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
          FieldName = 'pembayaran'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Pembayaran'
          Title.Color = cl3DLight
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kekurangan'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Kekurangan'
          Title.Color = cl3DLight
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sudah_jadi'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Jadi'
          Title.Color = cl3DLight
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sudah_diambil'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Diambil'
          Title.Color = cl3DLight
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal_diambil'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal'
          Title.Color = cl3DLight
          Width = 102
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 8
      Top = 24
      Width = 97
      Height = 25
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox2: TGroupBox
      Left = 280
      Top = 16
      Width = 825
      Height = 63
      Caption = 'Filter'
      TabOrder = 2
      object Label8: TLabel
        Left = 545
        Top = 27
        Width = 120
        Height = 19
        Caption = 'Tanggal Foto Akhir'
      end
      object Label3: TLabel
        Left = 242
        Top = 27
        Width = 119
        Height = 19
        Caption = 'Tanggal Foto Awal'
      end
      object Label1: TLabel
        Left = 10
        Top = 26
        Width = 61
        Height = 19
        Caption = 'Cari Data'
        FocusControl = DBGrid1
      end
      object DateTimePicker1: TDateTimePicker
        Left = 368
        Top = 24
        Width = 145
        Height = 27
        Date = 43480.575659479170000000
        Format = 'yyyy-MM-dd'
        Time = 43480.575659479170000000
        TabOrder = 0
        OnChange = DateTimePicker1Change
        OnKeyPress = DateTimePicker1KeyPress
      end
      object DateTimePicker4: TDateTimePicker
        Left = 672
        Top = 24
        Width = 145
        Height = 27
        Date = 43480.586638703700000000
        Format = 'yyyy-MM-dd'
        Time = 43480.586638703700000000
        TabOrder = 1
        OnChange = DateTimePicker4Change
        OnKeyPress = DateTimePicker4KeyPress
      end
      object Edit1: TEdit
        Left = 80
        Top = 23
        Width = 137
        Height = 27
        TabOrder = 2
        Text = 'Edit1'
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
      end
    end
    object Edit2: TEdit
      Left = 134
      Top = 48
      Width = 121
      Height = 27
      TabOrder = 3
      Text = 'Edit2'
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 212
      Top = 48
      Width = 49
      Height = 25
      Caption = 'Input'
      TabOrder = 4
      Visible = False
      OnClick = Button2Click
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 55
      Width = 97
      Height = 27
      ItemHeight = 19
      TabOrder = 5
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
  object DataSource1: TDataSource
    DataSet = dm.qry1
    Left = 32
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 120
    object ResetRSVPIni1: TMenuItem
      Caption = 'Reset RSVP'
      ShortCut = 113
      OnClick = ResetRSVPIni1Click
    end
    object Update1: TMenuItem
      Caption = 'Update'
      ShortCut = 114
      OnClick = Update1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 116
      OnClick = Refresh1Click
    end
  end
end
