object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calcolatrice per la corsa'
  ClientHeight = 208
  ClientWidth = 296
  Color = clGradientActiveCaption
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 24
    Top = 22
    Width = 26
    Height = 21
    Caption = 'Ore'
    FocusControl = EdOre
    Transparent = True
  end
  object Label2: TLabel
    Left = 117
    Top = 22
    Width = 45
    Height = 21
    Caption = 'Minuti'
    FocusControl = EdMinuti
  end
  object Label3: TLabel
    Left = 211
    Top = 22
    Width = 55
    Height = 21
    Caption = 'Secondi'
    FocusControl = EdSecondi
  end
  object SpeedButtonPer: TSpeedButton
    Tag = 1
    Left = 24
    Top = 92
    Width = 30
    Height = 30
    GroupIndex = 1
    Down = True
    Caption = '*'
  end
  object SpeedButtonDiviso: TSpeedButton
    Left = 60
    Top = 92
    Width = 30
    Height = 30
    GroupIndex = 1
    Caption = '/'
  end
  object SpeedButton1: TSpeedButton
    Left = 211
    Top = 92
    Width = 66
    Height = 30
    Caption = '='
    OnClick = SpeedButtonClick
  end
  object EdOre: TEdit
    Left = 24
    Top = 44
    Width = 66
    Height = 29
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
  end
  object EdMinuti: TEdit
    Left = 117
    Top = 44
    Width = 66
    Height = 29
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object EdSecondi: TEdit
    Left = 211
    Top = 43
    Width = 66
    Height = 29
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
  end
  object EdRisultato: TEdit
    Left = 24
    Top = 149
    Width = 253
    Height = 27
    Alignment = taCenter
    Color = clActiveCaption
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
    Text = '0'
  end
  object Edit2: TComboBox
    Left = 105
    Top = 92
    Width = 90
    Height = 29
    TabOrder = 3
  end
end
