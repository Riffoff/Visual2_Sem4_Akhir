object FormLogin: TFormLogin
  Left = 369
  Top = 181
  Width = 715
  Height = 480
  Caption = 'Login'
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
    Left = 208
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Admin'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Pelajar'
    TabOrder = 1
    OnClick = Button2Click
  end
end
