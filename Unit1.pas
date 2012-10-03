unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    EdOre: TEdit;
    Label1: TLabel;
    EdMinuti: TEdit;
    Label2: TLabel;
    EdSecondi: TEdit;
    Label3: TLabel;
    SpeedButtonPer: TSpeedButton;
    SpeedButtonDiviso: TSpeedButton;
    EdRisultato: TEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TComboBox;
    procedure SpeedButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

uses
  Math;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  with Edit2.Items do
    begin
      Add(FloatToStr(10));
      Add(FloatToStr(20));
      Add(FloatToStr(21.097));
      Add(FloatToStr(42.197));
    end;
end;

procedure TForm1.SpeedButtonClick(Sender: TObject);
var
  ore, minuti, secondi: integer;
  secondo: Extended;
  dt, dtRis : TDateTime;
  Hour, Mins, Sec, MSec: Word;
  HourTxt, MinTxt, SecTxt: string;
begin
  ore:=EnsureRange(StrToIntDef(EdOre.Text, 0), 0, 23);
  EdOre.Text:=IntToStr(ore);

  minuti:=EnsureRange(StrToIntDef(EdMinuti.Text, 0), 0, 59);
  EdMinuti.Text:=IntToStr(minuti);

  secondi:=EnsureRange(StrToIntDef(EdSecondi.Text, 0), 0,59);
  EdSecondi.Text:=IntToStr(secondi);

  secondo:=EnsureRange(StrToFloatDef(Edit2.Text, 0), 0, 10000);
  Edit2.Text:=FloatToStr(secondo);

  dt:=EncodeTime(ore, minuti, secondi,0);

  if SpeedButtonPer.Down
    then dtRis:=dt * secondo
    else
  if SpeedButtonDiviso.Down
    then dtRis:=dt / secondo
    else Exit;

  DecodeTime(dtRis, Hour, Mins, Sec, MSec);

  case Hour of
    0 : HourTxt:='';
    1 : HourTxt:=Format('%d ora',[Hour]);
    else HourTxt:=Format('%d ore',[Hour]);
  end;

  case Mins of
    0 : MinTxt:='';
    1 : MinTxt:=Format('%d minuto',[Mins]);
    else MinTxt:=Format('%d minuti',[Mins]);
  end;

  case Sec of
    0 : SecTxt:='';
    1 : SecTxt:=Format('%.2d secondo',[Sec]);
    else SecTxt:=Format('%.2d secondi',[Sec]);
  end;

  EdRisultato.Text:=HourTxt;
  EdRisultato.Text:=Trim(EdRisultato.Text + ' ' + MinTxt);
  EdRisultato.Text:=Trim(EdRisultato.Text + ' ' + SecTxt);

end;

end.
