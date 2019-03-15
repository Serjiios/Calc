unit UFull;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCLA, Menus, ExtCtrls, XPMan, StdCtrls;

type
  TFull = class(TCLA)
    Bsin: TButton;
    Bcos: TButton;
    Bpi: TButton;
    Bctg: TButton;
    Btg: TButton;
    Panel4: TPanel;
    procedure TrigonometriaClick(Sender: TObject);
    procedure CLAYClick(Sender: TObject);
    procedure BpiClick(Sender: TObject);
    procedure BctgClick(Sender: TObject);
    procedure BtgClick(Sender: TObject);
    procedure BcosClick(Sender: TObject);
    procedure BsinClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Full: TFull;

implementation

uses UTrig, Math;

{$R *.dfm}

//Пункт меню тригонометрия
procedure TFull.TrigonometriaClick(Sender: TObject);
begin
CLA.Top := Full.Top;
CLA.Left := Full.Left;
CLA.Visible := true;
Full.Visible := false;
end;

//Пункт меню СЛАУ
procedure TFull.CLAYClick(Sender: TObject);
begin
Trig.Top := Full.Top;
Trig.Left := Full.Left;
Trig.Visible := true;
Full.Visible := false;
end;

//Pi
procedure TFull.BpiClick(Sender: TObject);
begin
Memo1.Text := FloatToStr(Pi);
end;

//Котангенс
procedure TFull.BctgClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(cotan(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Тангенс
procedure TFull.BtgClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(tan(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Косинус
procedure TFull.BcosClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(cos(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Синус
procedure TFull.BsinClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(sin(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Активация формы
procedure TFull.FormActivate(Sender: TObject);
begin
Trigonometria.Checked := true;
CLAY.Checked := true;
end;

end.


