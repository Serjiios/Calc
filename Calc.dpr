program Calc;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {AboutBox},
  UTrig in 'UTrig.pas' {Trig},
  UCLA in 'UCLA.pas' {CLA},
  UFull in 'UFull.pas' {Full};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Калькулятор';
  Application.HelpFile := 'D:\Рабочая\Delfi\Калькулятор\Help\CALC.HLP';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TTrig, Trig);
  Application.CreateForm(TCLA, CLA);
  Application.CreateForm(TFull, Full);
  Application.Run;
end.
