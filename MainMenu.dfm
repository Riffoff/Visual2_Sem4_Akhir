object FormMenu: TFormMenu
  Left = 215
  Top = 189
  Width = 1044
  Height = 540
  Caption = 'Main Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 56
    Top = 32
    object A1: TMenuItem
      Caption = 'A'
      object Hub1: TMenuItem
        Caption = 'Hub'
        OnClick = Hub1Click
      end
    end
  end
end
