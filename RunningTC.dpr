program RunningTC;

uses
  Forms,
  Windows,
  Unit1 in 'Unit1.pas' {Form1};

{$DYNAMICBASE ON}         // ASLR ON
{$SetPeOptFlags $100}     // NX ON
{$SetPeFlags IMAGE_FILE_RELOCS_STRIPPED}
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Calcolatrice per la corsa';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
