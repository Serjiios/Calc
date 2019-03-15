unit UTrig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit1, Menus, ExtCtrls, XPMan, StdCtrls;

type
  TTrig = class(TForm1)
    Bsin: TButton;
    Bcos: TButton;
    Bpi: TButton;
    Bctg: TButton;
    Btg: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure TrigonometriaClick(Sender: TObject);
    procedure CLAYClick(Sender: TObject);
    procedure BsinClick(Sender: TObject);
    procedure BcosClick(Sender: TObject);
    procedure BtgClick(Sender: TObject);
    procedure BctgClick(Sender: TObject);
    procedure BpiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Trig: TTrig;

implementation

uses Math, UFull;

{$R *.dfm}

//Закрытие формы
procedure TTrig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Close;
end;

//Активация формы
procedure TTrig.FormActivate(Sender: TObject);
begin
Trig.Top:=Form1.Top;
Trig.Left:=Form1.Left;
Trigonometria.Checked := true;
CLAY.Checked := false;
end;

//Пункт меню тригонометрия
procedure TTrig.TrigonometriaClick(Sender: TObject);
begin
Form1.Top := Trig.Top;
Form1.Left := Trig.Left;
Form1.Visible := true;
Trig.Visible := false;
Form1.Trigonometria.Checked := false;
end;

//Пункт меню СЛАУ
procedure TTrig.CLAYClick(Sender: TObject);
begin
Full.Top := Trig.Top;
Full.Left := Trig.Left;
Full.Visible := true;
Trig.Visible := false;
end;

//Синус
procedure TTrig.BsinClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(sin(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Косинус
procedure TTrig.BcosClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(cos(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Тангенс
procedure TTrig.BtgClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(tan(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Котангенс
procedure TTrig.BctgClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(cotan(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Pi
procedure TTrig.BpiClick(Sender: TObject);
begin
Memo1.Text := FloatToStr(Pi);
end;

end.
