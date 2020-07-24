object frmInputAdmin: TfrmInputAdmin
  Left = 805
  Top = 351
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Input Data Admin'
  ClientHeight = 185
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 321
    Height = 169
    Caption = 'Input Admin'
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
      Width = 66
      Height = 19
      Caption = 'Username'
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 62
      Height = 19
      Caption = 'Password'
    end
    object edtNama: TEdit
      Left = 88
      Top = 24
      Width = 225
      Height = 27
      TabOrder = 0
    end
    object edtUsername: TEdit
      Left = 88
      Top = 56
      Width = 225
      Height = 27
      TabOrder = 1
    end
    object edtPassword: TEdit
      Left = 88
      Top = 88
      Width = 225
      Height = 27
      TabOrder = 2
    end
    object Button1: TButton
      Left = 120
      Top = 128
      Width = 105
      Height = 25
      Caption = 'Simpan'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 4
      OnClick = Button2Click
    end
    object edtId: TEdit
      Left = 8
      Top = 128
      Width = 73
      Height = 27
      TabOrder = 5
      Text = 'edtId'
      Visible = False
    end
  end
end
