object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 844
  Top = 129
  Height = 150
  Width = 252
  object con1: TADOConnection
    LoginPrompt = False
    Left = 8
    Top = 16
  end
  object tbl1: TADOTable
    Connection = con1
    Left = 40
    Top = 16
  end
  object qry1: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 72
    Top = 16
  end
  object qry2: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 104
    Top = 16
  end
  object qry3: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 136
    Top = 16
  end
  object qry4: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 168
    Top = 16
  end
end
