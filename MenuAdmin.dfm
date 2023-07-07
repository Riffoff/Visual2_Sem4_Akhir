object FormAdmin: TFormAdmin
  Left = 210
  Top = 173
  Width = 1044
  Height = 540
  Caption = 'Main Menu Admin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 152
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Hub'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Semester'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 152
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Kelas'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 256
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Poin'
    TabOrder = 3
  end
end
