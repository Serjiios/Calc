inherited Full: TFull
  Left = 436
  Top = 401
  ActiveControl = Memo1
  ClientWidth = 313
  PixelsPerInch = 96
  TextHeight = 18
  inherited Bevel1: TBevel
    Width = 313
  end
  inherited Memo1: TMemo
    Width = 297
  end
  object Bsin: TButton [34]
    Left = 272
    Top = 88
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'sin'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 32
    OnClick = BsinClick
  end
  object Bcos: TButton [35]
    Left = 272
    Top = 120
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'cos'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 33
    OnClick = BcosClick
  end
  object Bpi: TButton [36]
    Left = 272
    Top = 48
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'Pi'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 34
    OnClick = BpiClick
  end
  object Bctg: TButton [37]
    Left = 272
    Top = 184
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'ctg'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 35
    OnClick = BctgClick
  end
  object Btg: TButton [38]
    Left = 272
    Top = 152
    Width = 33
    Height = 25
    Cursor = crHandPoint
    Caption = 'tg'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 36
    OnClick = BtgClick
  end
  object Panel4: TPanel [39]
    Left = 272
    Top = 224
    Width = 33
    Height = 137
    BorderStyle = bsSingle
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Bookman Old Style'
    Font.Style = []
    ParentFont = False
    TabOrder = 37
  end
  inherited Edit13: TEdit
    TabOrder = 38
  end
  inherited Edit14: TEdit
    TabOrder = 39
  end
  inherited Edit15: TEdit
    TabOrder = 40
  end
  inherited Bc1: TButton
    TabOrder = 41
  end
  inherited Bc2: TButton
    TabOrder = 42
  end
  inherited MainMenu1: TMainMenu
    inherited Servise: TMenuItem
      inherited Trigonometria: TMenuItem
        AutoCheck = False
      end
    end
  end
end
