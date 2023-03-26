unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Memg(Sender: TObject);
  end;

var
  Form2: TForm2;
  ak: array of integer;
   //f5: string;
implementation

{$R *.dfm}
uses Unit4shifr;

procedure TForm2.Button1Click(Sender: TObject);
begin
form1.modalok:=false;
close;
  //form2.hide;
//closem;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form1.modalok:=true;

if  strtoint(edit1.text)>0 then
form1.len:= strtoint(edit1.text)
else
form1.len:=1;// хй тебе а не нулевая длина

// form1.len:= strtoint(edit1.text);
form1.m1.assign(memo1.lines);
close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
 memo1.Clear;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
form2.Color:=$ddeeff;
memo1.onchange:=memg;
end;

procedure TForm2.Memg(Sender: TObject);
var i,k,kk: integer; s,d,e: string;
begin
s:=memo1.Text; k:=0; d:='';
//for i:=1 to length(s) do if ord(s[i])>30 then inc(k);
for i:=1 to length(s) do   if ord(s[i])>30 then
   d:=d+s[i];
  d:=StringReplace(d,' ','',[rfReplaceAll,rfIgnoreCase]);
  k:=length(d);
  label2.Caption:=format('%d',[k]);
  kk:=0;//колво рекомендаций
  e:='';
  setlength(ak,0);
  for i:= 4 to 15 do  if (k div i)*i=k then
  begin
    e:=e+format('%2d',[i])+'  ';
    inc(kk);
    setlength(ak,kk);
    ak[kk-1]:=i;
  end;
  label2.caption:=copy(e,1,length(e)-2);
  if kk=0 then
    form1.dakk:=1
    else
    form1.dakk:=label2.Width / kk;
end;

procedure TForm2.Label2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i,j,k: integer;
begin
//edit1.text:=label2.caption;
i:=trunc(x / form1.dakk);
if i in [0..high(ak)] then//i<=high(ak) then
edit1.text:=inttostr(ak[i]);
end;

end.
