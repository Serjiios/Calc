object Form1: TForm1
  Left = 933
  Top = 414
  ActiveControl = Memo1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 217
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object B1: TButton
    Left = 56
    Top = 88
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = B1Click
  end
  object B2: TButton
    Left = 96
    Top = 88
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = B1Click
  end
  object B5: TButton
    Left = 96
    Top = 120
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '5'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = B1Click
  end
  object B6: TButton
    Left = 136
    Top = 120
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '6'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = B1Click
  end
  object B7: TButton
    Left = 56
    Top = 152
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '7'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = B1Click
  end
  object B8: TButton
    Left = 96
    Top = 152
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '8'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = B1Click
  end
  object B4: TButton
    Left = 56
    Top = 120
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '4'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = B1Click
  end
  object B3: TButton
    Left = 136
    Top = 88
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '3'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = B1Click
  end
  object Bplmin: TButton
    Left = 136
    Top = 184
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '+/-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BplminClick
  end
  object BPoint: TButton
    Left = 56
    Top = 184
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = ','
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = B1Click
  end
  object B9: TButton
    Left = 136
    Top = 152
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '9'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = B1Click
  end
  object B0: TButton
    Left = 96
    Top = 184
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = B1Click
  end
  object Bdelenie: TButton
    Left = 184
    Top = 184
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '/'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BplusClick
  end
  object Bumnoj: TButton
    Left = 184
    Top = 152
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '*'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BplusClick
  end
  object Bminus: TButton
    Left = 184
    Top = 120
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = BplusClick
  end
  object Bplus: TButton
    Left = 184
    Top = 88
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '+'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = BplusClick
  end
  object Boff: TButton
    Left = 8
    Top = 48
    Width = 49
    Height = 25
    Cursor = crHandPoint
    Caption = 'OFF'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = BoffClick
  end
  object Bce: TButton
    Left = 72
    Top = 48
    Width = 49
    Height = 25
    Cursor = crHandPoint
    Caption = 'CE'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = BceClick
  end
  object Bc: TButton
    Left = 128
    Top = 48
    Width = 49
    Height = 25
    Cursor = crHandPoint
    Caption = 'C'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = BcClick
  end
  object Bmminus: TButton
    Left = 8
    Top = 184
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'M-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = BmminusClick
  end
  object Bmplus: TButton
    Left = 8
    Top = 152
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'M+'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = BmplusClick
  end
  object Bmr: TButton
    Left = 8
    Top = 120
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'MR'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnClick = BmrClick
  end
  object Bravno: TButton
    Left = 224
    Top = 184
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '='
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    OnClick = BravnoClick
  end
  object Bsqrt: TButton
    Left = 224
    Top = 152
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'sqrt'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnClick = BsqrtClick
  end
  object Bdel: TButton
    Left = 184
    Top = 48
    Width = 73
    Height = 25
    Cursor = crHandPoint
    Caption = 'Backspace'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    OnClick = BdelClick
  end
  object Bms: TButton
    Left = 8
    Top = 88
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'MS'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Book Antiqua'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = BmsClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 249
    Height = 23
    Alignment = taRightJustify
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 27
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 26
    OnKeyPress = Memo1KeyPress
  end
  object Bsqr: TButton
    Left = 224
    Top = 120
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'x*x'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    OnClick = BsqrClick
  end
  object Bdrob: TButton
    Left = 224
    Top = 88
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = '1/x'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
    OnClick = BdrobClick
  end
  object XPManifest1: TXPManifest
    Top = 192
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 32
    Top = 192
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 192
    object Servise: TMenuItem
      AutoCheck = True
      Caption = '&'#1057#1077#1088#1074#1080#1089
      object Trigonometria: TMenuItem
        AutoCheck = True
        Caption = '&'#1058#1088#1080#1075#1086#1085#1086#1084#1077#1090#1088#1080#1103
        ShortCut = 16468
        OnClick = TrigonometriaClick
      end
      object CLAY: TMenuItem
        AutoCheck = True
        Caption = '&'#1057#1051#1040#1059
        ShortCut = 16451
        OnClick = CLAYClick
      end
    end
    object N4: TMenuItem
      Caption = '?'
      object Help: TMenuItem
        Caption = #1055#1086#1084#1086#1097#1100
        OnClick = HelpClick
      end
      object About: TMenuItem
        Caption = '&'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = AboutClick
      end
    end
  end
end
