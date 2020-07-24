object frmDataKonsumen: TfrmDataKonsumen
  Left = 381
  Top = 130
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Data Konsumen'
  ClientHeight = 409
  ClientWidth = 721
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
    Width = 705
    Height = 393
    Caption = 'Data Konsumen'
    TabOrder = 0
    object Label1: TLabel
      Left = 426
      Top = 26
      Width = 61
      Height = 19
      Caption = 'Cari Data'
      FocusControl = DBGrid1
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 56
      Width = 689
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
          FieldName = 'id_konsumen'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Color = cl3DLight
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Nama'
          Title.Color = cl3DLight
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Email'
          Title.Color = cl3DLight
          Width = 171
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
          FieldName = 'member'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Member'
          Title.Color = cl3DLight
          Width = 125
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 496
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
  object DataSource1: TDataSource
    DataSet = dm.qry1
    Left = 96
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 128
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 116
      OnClick = Refresh1Click
    end
  end
end
