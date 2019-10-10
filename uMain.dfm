object Form1: TForm1
  Left = 657
  Top = 353
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FieldByName Test'
  ClientHeight = 174
  ClientWidth = 191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 15
    Width = 77
    Height = 13
    Caption = 'Qtd de registros:'
  end
  object Button1: TButton
    Left = 102
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Testar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 15
    Top = 34
    Width = 77
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 100000
  end
  object GroupBox1: TGroupBox
    Left = 14
    Top = 64
    Width = 165
    Height = 95
    Caption = ' Resultado '
    TabOrder = 2
    object lblLoadByName: TLabel
      Left = 15
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Por nome:'
    end
    object lblLoadByField: TLabel
      Left = 15
      Top = 46
      Width = 59
      Height = 13
      Caption = 'Pelo campo:'
    end
    object lblPerformance: TLabel
      Left = 16
      Top = 68
      Width = 63
      Height = 13
      Caption = 'Performance:'
    end
  end
end
