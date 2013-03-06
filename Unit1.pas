unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    EdOre2: TEdit;
    Label1: TLabel;
    EdMinuti2: TEdit;
    Label2: TLabel;
    EdSecondi2: TEdit;
    Label3: TLabel;
    EdRisultato2: TEdit;
    SpeedButton2: TSpeedButton;
    EditKm1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdOre1: TEdit;
    EdMinuti1: TEdit;
    EdSecondi1: TEdit;
    EdRisultato1: TEdit;
    SpeedButton1: TSpeedButton;
    EditKm2: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditKmKeyPress(Sender: TObject; var Key: Char);
    procedure EditKmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  end;

var
  Form1: TForm1;

implementation

uses
  Math, DateUtils;

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
  with EditKm1.Items do
    begin
      Add(FloatToStr(5));
      Add(FloatToStr(10));
      Add(FloatToStr(21.097));
      Add(FloatToStr(42.195));
    end;
  EditKm2.Items.Assign(EditKm1.Items);
end;

procedure TForm1.EditKmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DECIMAL
    then SendMessage((Sender as TComboBox).Handle, WM_CHAR, Ord(decimalSeparator), 0);
end;

procedure TForm1.EditKmKeyPress(Sender: TObject; var Key: Char);
begin
  Key:=UpCase(Key);
  if Pos(Key, #3#8#22#24 + '0123456789' + decimalSeparator) = 0
    then Key:=#0;
  if (Key = decimalSeparator) and (
     (Pos(decimalSeparator, (Sender as TComboBox).Text) > 0) or
     ((Sender as TComboBox).Text = ''))
    then Key:=#0;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  ore, minuti, secondi: integer;
  km: Extended;
  dt, dtRis : TDateTime;
  Hour, Mins, Sec, MSec: Word;
  HourTxt, MinTxt, SecTxt: string;
begin
  ore:=EnsureRange(StrToIntDef(EdOre1.Text, 0), 0, 999);
  EdOre1.Text:=IntToStr(ore);

  minuti:=EnsureRange(StrToIntDef(EdMinuti1.Text, 0), 0, 59);
  EdMinuti1.Text:=IntToStr(minuti);

  secondi:=EnsureRange(StrToIntDef(EdSecondi1.Text, 0), 0, 59);
  EdSecondi1.Text:=IntToStr(secondi);

  km:=EnsureRange(StrToFloatDef(EditKm1.Text, 0), 0, 9999);
  EditKm1.Text:=FloatToStr(km);

  if km = 0
    then Exit;

  dt:=EncodeTime(ore mod 24, minuti, secondi, 0);
  dt:=dt + IncDay(0, ore div 24);

  dtRis:=dt / km;

  DecodeTime(dtRis, Hour, Mins, Sec, MSec);

  case Hour of
    0 : HourTxt:='';
    1 : HourTxt:=Format('%d ora', [Hour]);
    else HourTxt:=Format('%d ore', [Hour]);
  end;

  case Mins of
    0 : MinTxt:='';
    1 : MinTxt:=Format('%d minuto', [Mins]);
    else MinTxt:=Format('%d minuti', [Mins]);
  end;

  case Sec of
    0 : SecTxt:='';
    1 : SecTxt:=Format('%d secondo', [Sec]);
    else SecTxt:=Format('%d secondi', [Sec]);
  end;

  EdRisultato1.Text:=HourTxt;
  EdRisultato1.Text:=Trim(EdRisultato1.Text + ' ' + MinTxt);
  EdRisultato1.Text:=Trim(EdRisultato1.Text + ' ' + SecTxt);

end;


procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  ore, minuti, secondi, dbt: integer;
  km: Extended;
  dt, dtRis : TDateTime;
  Hour, Mins, Sec, MSec: Word;
  HourTxt, MinTxt, SecTxt: string;
begin
  ore:=EnsureRange(StrToIntDef(EdOre2.Text, 0), 0, 999);
  EdOre2.Text:=IntToStr(ore);

  minuti:=EnsureRange(StrToIntDef(EdMinuti2.Text, 0), 0, 59);
  EdMinuti2.Text:=IntToStr(minuti);

  secondi:=EnsureRange(StrToIntDef(EdSecondi2.Text, 0), 0, 59);
  EdSecondi2.Text:=IntToStr(secondi);

  km:=EnsureRange(StrToFloatDef(EditKm2.Text, 0), 0, 9999);
  EditKm2.Text:=FloatToStr(km);

  dt:=EncodeTime(ore mod 24, minuti, secondi, 0);
  dt:=dt + IncDay(0, ore div 24);

  dtRis:=dt * km;

  dbt:=DaysBetween(0, dtRis);
  DecodeTime(dtRis, Hour, Mins, Sec, MSec);

  Inc(Hour, dbt * 24);
  case Hour of
    0 : HourTxt:='';
    1 : HourTxt:=Format('%d ora', [Hour]);
    else HourTxt:=Format('%d ore', [Hour]);
  end;

  case Mins of
    0 : MinTxt:='';
    1 : MinTxt:=Format('%d minuto', [Mins]);
    else MinTxt:=Format('%d minuti', [Mins]);
  end;

  case Sec of
    0 : SecTxt:='';
    1 : SecTxt:=Format('%d secondo', [Sec]);
    else SecTxt:=Format('%d secondi', [Sec]);
  end;

  EdRisultato2.Text:=HourTxt;
  EdRisultato2.Text:=Trim(EdRisultato2.Text + ' ' + MinTxt);
  EdRisultato2.Text:=Trim(EdRisultato2.Text + ' ' + SecTxt);

end;






end.
