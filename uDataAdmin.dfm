object frmDataAdmin: TfrmDataAdmin
  Left = 190
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data Admin'
  ClientHeight = 441
  ClientWidth = 609
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
    Width = 593
    Height = 329
    Caption = 'Data Admin'
    TabOrder = 0
    object Label1: TLabel
      Left = 290
      Top = 26
      Width = 61
      Height = 19
      Caption = 'Cari Data'
      FocusControl = DBGrid1
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 56
      Width = 577
      Height = 265
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
          FieldName = 'id_admin'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID Admin'
          Title.Color = cl3DLight
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nama'
          Title.Color = cl3DLight
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'username'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Username'
          Title.Color = cl3DLight
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'password'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Password'
          Title.Color = cl3DLight
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'akses'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Akses'
          Title.Color = cl3DLight
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Title.Color = cl3DLight
          Width = 72
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 360
      Top = 24
      Width = 225
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
    Width = 593
    Height = 89
    Caption = 'Kelola Data Admin'
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 38
      Height = 19
      Caption = 'Nama'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 66
      Height = 19
      Caption = 'Username'
    end
    object Label4: TLabel
      Left = 256
      Top = 24
      Width = 62
      Height = 19
      Caption = 'Password'
    end
    object Label5: TLabel
      Left = 256
      Top = 56
      Width = 38
      Height = 19
      Caption = 'Akses'
    end
    object edtNama: TEdit
      Left = 80
      Top = 24
      Width = 145
      Height = 27
      TabOrder = 0
      Text = 'edtNama'
      OnKeyPress = edtNamaKeyPress
    end
    object edtUsername: TEdit
      Left = 80
      Top = 56
      Width = 145
      Height = 27
      TabOrder = 1
      Text = 'edtUsername'
      OnKeyPress = edtUsernameKeyPress
    end
    object edtPassword: TEdit
      Left = 328
      Top = 24
      Width = 145
      Height = 27
      TabOrder = 2
      Text = 'edtPassword'
      OnKeyPress = edtPasswordKeyPress
    end
    object cbbAkses: TComboBox
      Left = 328
      Top = 56
      Width = 145
      Height = 27
      ItemHeight = 19
      TabOrder = 3
      Text = 'Pilih Akses'
      OnKeyPress = cbbAksesKeyPress
      Items.Strings = (
        'CS'
        'ADMIN')
    end
    object edtId: TEdit
      Left = 184
      Top = 16
      Width = 41
      Height = 27
      TabOrder = 4
      Text = 'edtId'
    end
    object Button2: TButton
      Left = 504
      Top = 24
      Width = 81
      Height = 25
      Caption = 'Simpan'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 504
      Top = 56
      Width = 81
      Height = 25
      Caption = 'Batal'
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.qry1
    Left = 400
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 248
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
    object SetONOFF1: TMenuItem
      Caption = 'Set ON/OFF'
      ShortCut = 115
      OnClick = SetONOFF1Click
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
