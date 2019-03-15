unit UCLA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit1, StdCtrls, ExtCtrls, Menus, XPMan, Buttons;

type
  TCLA = class(TForm1)
    Panel1: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit1: TEdit;
    Panel2: TPanel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label1: TLabel;
    Braschet: TButton;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Bc1: TButton;
    Bc2: TButton;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLAYClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TrigonometriaClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BraschetClick(Sender: TObject);
    procedure Bc1Click(Sender: TObject);
    procedure Bc2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CLA: TCLA;

implementation

uses UFull;

{$R *.dfm}

//Закрытие формы
procedure TCLA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Close; 
end;

//Пункт меню СЛАУ
procedure TCLA.CLAYClick(Sender: TObject);
begin
Form1.Top := CLA.Top;
Form1.Left := CLA.Left;
Form1.Visible := true;
CLA.Visible := false;
Form1.CLAY.Checked := false;
end;

//Активация формы
procedure TCLA.FormActivate(Sender: TObject);
begin
CLAY.Checked := true;
Trigonometria.Checked := false;
end;

//Пункт меню тригонометрия
procedure TCLA.TrigonometriaClick(Sender: TObject);
begin
Full.Top := CLA.Top;
Full.Left := CLA.Left;
Full.Visible := true;
CLA.Visible := false;
end;

procedure TCLA.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//Enter аналогичен Tab
If Key = #13 then begin
SelectNext(Sender as tWinControl, True, True );
Key := #0;
//Разрешение на ввод символов
case Key of
'0'..'9', ',', #8: ;
else
Key := #0;
end;
end;
end;

//Расчет умножения матрицы на вектор
procedure TCLA.BraschetClick(Sender: TObject);
var M1, M2, M3, M4, M5, M6, M7, M8, M9, V1, V2, V3, R1, R2, R3: REAL;
begin
try
Edit13.Clear;
Edit14.Clear;
Edit15.Clear;
M1 := StrToFloat(Edit1.Text);
M2 := StrToFloat(Edit2.Text);
M3 := StrToFloat(Edit3.Text);
M4 := StrToFloat(Edit4.Text);
M5 := StrToFloat(Edit5.Text);
M6 := StrToFloat(Edit6.Text);
M7 := StrToFloat(Edit7.Text);
M8 := StrToFloat(Edit8.Text);
M9 := StrToFloat(Edit9.Text);
V1 := StrToFloat(Edit10.Text);
V2 := StrToFloat(Edit11.Text);
V3 := StrToFloat(Edit12.Text);
R1 := M1*V1+M2*V2+M3*V3;
R2 := M4*V1+M5*V2+M6*V3;
R3 := M7*V1+M8*V2+M9*V3;
Edit13.Text := FloatToStr(R1);
Edit14.Text := FloatToStr(R2);
Edit15.Text := FloatToStr(R3);
except
Application.MessageBox('Введите все данные!','Ошибка!',MB_ICONEXCLAMATION);
end;
end;

//Очистка
procedure TCLA.Bc1Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
end;

//Очистка
procedure TCLA.Bc2Click(Sender: TObject);
begin
Edit10.Clear;
Edit11.Clear;
Edit12.Clear;
end;

end.

