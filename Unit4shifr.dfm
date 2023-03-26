object Form1: TForm1
  Left = 217
  Top = 176
  Width = 1088
  Height = 684
  Caption = #1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1072#1103'  '#1087#1077#1088#1077#1089#1090#1072#1085#1086#1074#1082#1072
  Color = 15631086
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 29
  object Image1: TImage
    Left = 72
    Top = 40
    Width = 105
    Height = 105
    Visible = False
    OnMouseDown = Image1MouseDown
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    BorderStyle = bsNone
    Color = 15631086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 0
    WordWrap = False
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 40
    object N3331: TMenuItem
      Caption = 'paste'
      OnClick = N3331Click
    end
    object N01: TMenuItem
      Caption = '0'
    end
    object columns1: TMenuItem
      Caption = 'columns'
      OnClick = columns1Click
    end
    object v1: TMenuItem
      Caption = 'copy to buffer'
      object N1: TMenuItem
        Caption = '>'
        OnClick = N1Click
      end
      object v2: TMenuItem
        Caption = 'v'
        OnClick = v2Click
      end
    end
    object here1: TMenuItem
      Caption = 'here'
      OnClick = here1Click
    end
  end
end
