unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, ExtCtrls, Menus, Mask, Buttons;

type
  TForm1 = class(TForm)
    B1: TButton;
    B2: TButton;
    B5: TButton;
    B6: TButton;
    B7: TButton;
    B8: TButton;
    B4: TButton;
    B3: TButton;
    Bplmin: TButton;
    BPoint: TButton;
    B9: TButton;
    B0: TButton;
    XPManifest1: TXPManifest;
    Bdelenie: TButton;
    Bumnoj: TButton;
    Bminus: TButton;
    Bplus: TButton;
    Boff: TButton;
    Bce: TButton;
    Bc: TButton;
    Bmminus: TButton;
    Bmplus: TButton;
    Bmr: TButton;
    Bravno: TButton;
    Bsqrt: TButton;
    Bdel: TButton;
    Bms: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    Bsqr: TButton;
    Bdrob: TButton;
    MainMenu1: TMainMenu;
    Servise: TMenuItem;
    Trigonometria: TMenuItem;
    CLAY: TMenuItem;
    N4: TMenuItem;
    About: TMenuItem;
    Help: TMenuItem;
    procedure BoffClick(Sender: TObject);
    procedure BceClick(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure BplminClick(Sender: TObject);
    procedure BmsClick(Sender: TObject);
    procedure BmrClick(Sender: TObject);
    procedure BmplusClick(Sender: TObject);
    procedure BmminusClick(Sender: TObject);
    procedure BsqrtClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BplusClick(Sender: TObject);
    procedure BcClick(Sender: TObject);
    procedure BravnoClick(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure BdrobClick(Sender: TObject);
    procedure BsqrClick(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure CLAYClick(Sender: TObject);
    procedure TrigonometriaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BdelClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses Unit2, UCLA, UFull, UTrig;

var M: real = 0.;
LBegin: Boolean = true;   //фиксация начала ввода
LPoint: Boolean = false;  //фиксация ввода запятой
LOp: Boolean = false;     //фиксация нажатия на кнопке операции
Lravn: Boolean = false;    //многократное нажатие на кнопку операции
Num1, Num2: real;
Op: char = '0';

//Кнопка 'OFF'
procedure TForm1.BoffClick(Sender: TObject);
begin
Close;
end;

//Кнопка 'СЕ'
procedure TForm1.BceClick(Sender: TObject);
begin
Memo1.Clear;
LBegin := true;
Op := ' ';
LOp := false;
Lravn := false;
end;

//Кнопки цифр
procedure TForm1.B1Click(Sender: TObject);
begin
if LBegin then Lpoint := false;
if not (((Sender = B0) and (Memo1.Text = '0'))
   or((Sender = BPoint) and LPoint))
then begin
if (Sender = BPoint)
then begin
LPoint := true;
if LBegin
then Memo1.Text := '0,'
else Memo1.Text := Memo1.Text + ',';
end
else
if (not LBegin) and (Memo1.Text <> '0')
then Memo1.Text := Memo1.Text + (Sender as TButton).Caption
else Memo1.Text := (Sender as TButton).Caption;
LBegin := false;
end;
end;

//Минус
procedure TForm1.BplminClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(-(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Сохранение в память
procedure TForm1.BmsClick(Sender: TObject);
begin
try
M := StrToFloat(Memo1.Text);
LBegin := true;
except
Memo1.Text := 'Нет данных';
Timer1.Enabled := true;
end;
end;

//Вывод памяти на экран
procedure TForm1.BmrClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(M);
LBegin := true;
except
Memo1.Text := 'Нет данных';
Timer1.Enabled := true;
end;
end;

//Прибавление к памяти
procedure TForm1.BmplusClick(Sender: TObject);
begin
try
M := M + StrToFloat(Memo1.Text);
LBegin := true;
except
Memo1.Text := 'Нет данных';
Timer1.Enabled := true;
end;
end;

//Вычитание из памяти
procedure TForm1.BmminusClick(Sender: TObject);
begin
try
M := M - StrToFloat(Memo1.Text);
LBegin := true;
except
Memo1.Text := 'Нет данных';
Timer1.Enabled := true;
end;
end;

//Корень 
procedure TForm1.BsqrtClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(sqrt(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Таймер
procedure TForm1.Timer1Timer(Sender: TObject);
begin
Memo1.Clear;
Timer1.Enabled := false;
end;

//Кнопки '+' '-' '*' '/'
procedure TForm1.BplusClick(Sender: TObject);
begin
if Lravn = false then
try
Num1 := StrToFloat(Memo1.Text);
Op := (Sender as TButton).Caption[1];
LBegin := true;
LOp := true;
Lravn := true;
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end
else
 begin
try
Num2 := StrToFloat(Memo1.Text);
case Op of
'+': Memo1.Text := FloatToStr(Num1 + Num2);
'-': Memo1.Text := FloatToStr(Num1 - Num2);
'*': Memo1.Text := FloatToStr(Num1 * Num2);
'/': Memo1.Text := FloatToStr(Num1 / Num2);
end;
Op := (Sender as TButton).Caption[1];
Num1 := StrToFloat(Memo1.Text);
LBegin := true;
LOp :=true;
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
 end;
end;

//Кнопка 'С'
procedure TForm1.BcClick(Sender: TObject);
begin
try
if Memo1.Text = FloatToStr(Num1)
then Op := ' '
else Memo1.Clear;
except
Memo1.Clear;
end;
end;

//Кнопка '='
procedure TForm1.BravnoClick(Sender: TObject);
begin
try
if LOp then Num2 := StrToFloat(Memo1.Text);
case Op of
'+': Memo1.Text := FloatToStr(Num1 + Num2);
'-': Memo1.Text := FloatToStr(Num1 - Num2);
'*': Memo1.Text := FloatToStr(Num1 * Num2);
'/': Memo1.Text := FloatToStr(Num1 / Num2);
end;
Num1 := StrToFloat(Memo1.Text);
LBegin := true;
LOp :=false;
Lravn := false;
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Разрешение на ввод символов
procedure TForm1.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9', ',', #8: ;
else
Key := #0;
end;
end;

//Кнопка 1/х
procedure TForm1.BdrobClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(1/(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Квадрат
procedure TForm1.BsqrClick(Sender: TObject);
begin
try
Memo1.Text := FloatToStr(sqr(StrToFloat(Memo1.Text)));
except
Application.MessageBox('Исправьте исходные данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//О программе
procedure TForm1.AboutClick(Sender: TObject);
begin
AboutBox.ShowModal;
end;

//Пункт меню СЛАУ
procedure TForm1.CLAYClick(Sender: TObject);
begin
CLA.Top:=Form1.Top;
CLA.Left:=Form1.Left;
CLA.Visible:=true;
Form1.Visible := false;
end;

//Пункт меню Тригонометрия
procedure TForm1.TrigonometriaClick(Sender: TObject);
begin
Trig.Top:=Form1.Top;
Trig.Left:=Form1.Left;
Trig.Visible:=true;
Form1.Visible := false;
end;

//Активация формы
procedure TForm1.FormActivate(Sender: TObject);
begin
CLAY.Checked := false;
Trigonometria.Checked := false;
end;

//Предотвращение повторного запуска приложения
procedure TForm1.FormCreate(Sender: TObject);
var Wnd: HWND;
str: array [0..127] of char;
begin
SetWindowText(Application.Handle,'Калькулятор');
Wnd:=GetWindow(Handle,GW_HWNDFIRST);
While Wnd<>0 do begin
if (Wnd<>Application.Handle)and(GetWindow(Wnd,GW_OWNER)=0)
then begin
GetWindowText(Wnd,str,sizeof(str));
if (StrPas(str)='Калькулятор') then begin
Application.MessageBox('Приложение уже запущено!','Калькулятор',MB_ICONEXCLAMATION);
Halt;
end;
end;
Wnd:=GetWindow(Wnd,GW_HWNDNEXT);
end;
end;

procedure TForm1.HelpClick(Sender: TObject);
begin
Application.HelpJump('Calc.hlp');
end;

//Кнопка Backspace
procedure TForm1.BdelClick(Sender: TObject);
var A: string;
    B: integer;
begin
Lpoint := false;
A:=Memo1.Text;
B:=Length(A);
Setlength(A,(B-1));
Memo1.Text:=A ;
end;

//Пункт меню Помощь
end.
