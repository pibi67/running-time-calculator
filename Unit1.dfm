object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calcolatrice per la corsa'
  ClientHeight = 341
  ClientWidth = 522
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 522
    Height = 168
    Align = alTop
    Shape = bsBottomLine
  end
  object Label1: TLabel
    Left = 16
    Top = 222
    Width = 26
    Height = 21
    Caption = 'Ore'
    Transparent = True
  end
  object Label2: TLabel
    Left = 109
    Top = 222
    Width = 45
    Height = 21
    Caption = 'Minuti'
  end
  object Label3: TLabel
    Left = 203
    Top = 222
    Width = 55
    Height = 21
    Caption = 'Secondi'
  end
  object SpeedButton2: TSpeedButton
    Left = 439
    Top = 242
    Width = 66
    Height = 30
    Caption = '='
    OnClick = SpeedButton2Click
  end
  object Label4: TLabel
    Left = 297
    Top = 54
    Width = 23
    Height = 21
    Caption = 'Km'
  end
  object Label5: TLabel
    Left = 16
    Top = 16
    Width = 423
    Height = 21
    Caption = 'Dato il tempo totale e il numero di km, trova il passo di corsa:'
    Transparent = True
  end
  object Label6: TLabel
    Left = 16
    Top = 54
    Width = 26
    Height = 21
    Caption = 'Ore'
    Transparent = True
  end
  object Label7: TLabel
    Left = 109
    Top = 54
    Width = 45
    Height = 21
    Caption = 'Minuti'
  end
  object Label8: TLabel
    Left = 203
    Top = 54
    Width = 55
    Height = 21
    Caption = 'Secondi'
  end
  object SpeedButton1: TSpeedButton
    Left = 439
    Top = 76
    Width = 66
    Height = 30
    Caption = '='
    OnClick = SpeedButton1Click
  end
  object Label9: TLabel
    Left = 16
    Top = 184
    Width = 423
    Height = 21
    Caption = 'Dato il passo di corsa e il numero di km, trova il tempo totale:'
    Transparent = True
  end
  object Label10: TLabel
    Left = 297
    Top = 222
    Width = 23
    Height = 21
    Caption = 'Km'
  end
  object Label11: TLabel
    Left = 280
    Top = 79
    Width = 6
    Height = 21
    Caption = '/'
  end
  object Label12: TLabel
    Left = 280
    Top = 247
    Width = 7
    Height = 21
    Caption = '*'
  end
  object EdOre2: TEdit
    Left = 16
    Top = 244
    Width = 66
    Height = 29
    Alignment = taRightJustify
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 5
    Text = '0'
  end
  object EdMinuti2: TEdit
    Left = 109
    Top = 244
    Width = 66
    Height = 29
    Alignment = taRightJustify
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 6
    Text = '0'
  end
  object EdSecondi2: TEdit
    Left = 203
    Top = 243
    Width = 66
    Height = 29
    Alignment = taRightJustify
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 7
    Text = '0'
  end
  object EdRisultato2: TEdit
    Left = 16
    Top = 291
    Width = 489
    Height = 27
    Alignment = taCenter
    Color = clActiveCaption
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
    Text = '0'
  end
  object EditKm1: TComboBox
    Left = 297
    Top = 75
    Width = 120
    Height = 29
    MaxLength = 10
    TabOrder = 3
    OnKeyDown = EditKmKeyDown
    OnKeyPress = EditKmKeyPress
  end
  object EdOre1: TEdit
    Left = 16
    Top = 76
    Width = 66
    Height = 29
    Alignment = taRightJustify
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
  end
  object EdMinuti1: TEdit
    Left = 109
    Top = 76
    Width = 66
    Height = 29
    Alignment = taRightJustify
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object EdSecondi1: TEdit
    Left = 203
    Top = 75
    Width = 66
    Height = 29
    Alignment = taRightJustify
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
  end
  object EdRisultato1: TEdit
    Left = 16
    Top = 123
    Width = 489
    Height = 27
    Alignment = taCenter
    Color = clActiveCaption
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
    Text = '0'
  end
  object EditKm2: TComboBox
    Left = 297
    Top = 243
    Width = 120
    Height = 29
    MaxLength = 10
    TabOrder = 8
    OnKeyDown = EditKmKeyDown
    OnKeyPress = EditKmKeyPress
  end
end
