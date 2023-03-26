unit Unit3shifr;

interface
//   5    ÎÏ×ÓËÑ_ÁÎÎÍÅÂ_ÎÆÀÅÎÍÅÙÅÈÍ     (https://otvet.mail.ru/question/226668282)
{
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus;
}

uses   ClipBrd,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    here1: TMenuItem;
    copytobuffer1: TMenuItem;
    N01: TMenuItem;
    columns1: TMenuItem;
    N3331: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure here1Click(Sender: TObject);
    procedure copytobuffer1Click(Sender: TObject);
    procedure columns1Click(Sender: TObject);
    procedure N3331Click(Sender: TObject);
  private
    { Private declarations }
    
  public
    { Public declarations }
     f5: string;

     len: integer;///11;
     m1: tstringlist;
     modalok: boolean;
     dakk: single;
     //memo3: tmemo;
    MyVariant: integer;
    procedure colada(x: string);
    procedure polystr(x: twincontrol);// ìíîãîñòğî÷íûé çàãîëîâîê
    procedure rowada(x: string);
    procedure creax;
    function maker(y: boolean): string;
    function join(x: string): string;


  end;


 //
var

  Form1: TForm1;
  b1: tbitmap;
  a,h: array of tbutton;
  a2,h2: array of tbutton;
  s: string=

  {
'ÉËÎÂÛÁÅÒÆÓĞ×Î'+
'ÏÈÃÊ×ÎÍÎÑÀÄÜÀ'+
'ÅÅÑËØÛÂÒĞÅÂÃÎ'+
'ÛÀ×ÍÃÓĞÎÄÎÜËÁ'+
'ÒÑßÊÜÍŞÀÈÀÏÅÅ'+
'ÑÑßÊÃĞÓÀÁĞÁÑÅ'+
'ÜÍÍÀ×ÀĞßÌÓÎÏ×'+
'ÇËÇÂÅÑĞÈÅÜÂ×Î'+
'ÑÎÑËÊŞÜß×ÈÊÍÓ'+
'ÀÍÌÈÅĞÅÅÌÀÅÒÕ'+
'ÁÉ×ÍÎÌÎÎÄÜÅËÌ'+
'ÆÏÚÎÍÎÅÄÆÈÅÀÇ'+
'×ÎÅËÁÌÅÅÒËÎÓÍ'+
'ÎÂÍÀÎÂÒËÑÂÅÇÂ'+
'ÍÑÇÒÎÍÆÜÎÌÀÓÑ'+
'ÎÓ×ÍÒİÂÎÜÒÜÕÏ'+
'ÅÓÎŞØÂÈÁÄÎËÍÅ'+
'ÓĞÈÈÅ×ÅËÂÀÍÒÀ'+
'ŞÄÔÏÏËÌÈÎĞÑÔÅ';
              }
{
'ÎÅÄÎÁËÊÂÀËÛ'+
'ÎÎÈÒÏÑÏÛÄÍÓ'+
'ÀÈÌĞÌÎÖÎÓËÄ'+
'ÅÏÃÏĞÑÜÎÎÉÂ'+
'ÒËÌÍÎÀ×ÀÍÈÓ'+
'ÓßÒÈĞÃÊÍÎËÀ'+
'ÅÍÀÅÂ××ĞÍÛÅ'+
'ÆÎÎÛÍÁËËÌÄÎ'+
'ÀÁÎßÒÑĞÎÑÎÜ'+
'ÅÍÁĞÈÎÎÍÛ×Ã'+
'ÅÁÎÎÑÂÙÏÅÎÒ'+
'ÎÅÎÎÒĞÊÃÑËÎ'+
'ÍÛÎÍÎÅÊÍÎÁÂ'+
'ÎÀÎÊÏÉÏÀØËÎ'+
'Â×ÊÑØßÀßÎÍÀ'+
'ÈÈÎÁÇŞÌÈÄÍË'+
'ÅÓÌÅÑËÂÍÛÕÅ'+
'ĞÜÈÄÀÊÅÀÉÏÃ';
}

'ÎÏ×ÓËÑ_ÁÎÎÍÅÂ_ÎÆÀÅÎÍÅÙÅÈÍ';

mx: integer=0;
my: integer=0;

pun: integer=5;
vert: boolean=true;
ksum: integer;



implementation

{$R *.dfm}
uses unit2;


procedure CopyStringToClipboard(const Value: String); // áóôåğ äëÿ ğóññêèõ  uses ClipBrd,
const
  RusLocale = (SUBLANG_DEFAULT shl $A) or LANG_RUSSIAN;
var
  hMem: THandle;
  pData: Pointer;
begin
  Clipboard.AsText:=value;  // ğàçáëîêèğîâàòü áóôåğ. õç êàê îí áëîêèğóòñÿ, ïî÷åìó îäíîçàğÿäíûé
  Clipboard.Open;
  try
    Clipboard.AsText := Value;
    hMem := GlobalAlloc(GMEM_MOVEABLE, SizeOf(DWORD));
    try
      pData := GlobalLock(hMem);
      try
        DWORD(pData^) := RusLocale;
      finally
        GlobalUnlock(hMem);
      end;
        Clipboard.SetAsHandle(CF_LOCALE, hMem);
    finally
      GlobalFree(hMem);
    end;
  finally
    Clipboard.Close;
  end;
end;


procedure tform1.creax;
var i,j,k: integer; d,e: string;
begin
for i:=0 to len-1 do   //12
 begin
   d:=''; e:='';
   for j:=0 to length(s) div len-1 do
      d:=d+s[1+len*j+i];     //13

   colada(d);//
 end;
//************
pun:=length(s) div len;
for i:=0 to   pun-1 do //12
 begin
   e:='';
   for j:=0 to len-1 do   //13
      e:=e+s[1+len*i+j];
   rowada(e);
 end;
//*************
setlength(a2,1+high(a));
setlength(h2,1+high(h));
for i:=0 to high(h) do h2[i]:=h[i];
end;


procedure TForm1.FormCreate(Sender: TObject);
var i,j,k: integer; d,e: string;
begin
form1.len:=5;
form1.m1:=Tstringlist.create();
form1.color:=$ee82ee;
creax;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 ReleaseCapture;
(sender as tbutton).perform(WM_SysCommand,$F012,0);
end;

procedure TForm1.polystr(x: twincontrol);// ìíîãîñòğî÷íûé çàãîëîâîê
var i: thandle;
begin
i:=x.handle;
SetWindowLong(i, GWL_STYLE, GetWindowLong(i, GWL_STYLE) OR BS_MULTILINE);
end;


procedure TForm1.colada(x: string);
var i,j,k: integer;  s: string;
begin
inc(mx);
s:='';
for i:=1 to length(x) do s:=s+x[i]+' ';
x:=trim(s);
setlength(a,high(a)+2);
a[high(a)]:=tbutton.create(form1);
with a[high(a)] do
  begin
    top:=20;
    left:=83+mx*32;
    width:=27;
    height:=10+13*length(x);
    font.Size:=15;
    parent:=form1;
    caption:=x;
    onmousedown:=Image1MouseDown;
    visible:=vert;
  end;
polystr(a[high(a)]);// ìíîãîñòğî÷íûé çàãîëîâîê
end;


procedure TForm1.rowada(x: string);
var i,j,k: integer;  s: string;
begin
inc(my);
s:='';
for i:=1 to length(x) do s:=s+x[i]+' ';
x:=trim(s);
setlength(h,high(h)+2);
h[high(h)]:=tbutton.create(form1);
with h[high(h)] do
  begin
    top:=13+my*32;
    left:=20;
    width:=10+13*length(x);
    height:=27;
    font.Size:=15;
    parent:=form1;
    caption:=x;
    onmousedown:=Image1MouseDown;
    visible:= not vert;
  end;
end;


procedure TForm1.Panel10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 ReleaseCapture;
(sender as tpanel).perform(WM_SysCommand,$F012,0);
end;

procedure TForm1.here1Click(Sender: TObject);
begin
showmessage(paramstr(0)); //
end;


function TForm1.maker(y: boolean): string;
var i,j,k,n,v: integer; s,d:string;
begin
memo1.Clear;
v:=0;
 if  vert then
  begin
    k:=(length(a[0].caption)+1) div 2;
    for i:=0 to k do memo1.lines.add('');
    for i:=1 to form1.Width do
      begin
        for j:=0 to high(a) do
            if a[j].left=i then
              begin

                s:=a[j].Caption;
                s:=StringReplace(s,' ','',[rfReplaceAll,rfIgnoreCase]);
                a2[v]:=a[j];
                a[j].Tag:=v;
                inc(v);
                for n:=0 to pun do
                  memo1.Lines.Strings[n]:=memo1.Lines.Strings[n]+s[n+1];
              end;
    end;
  end
  else
  begin
    for i:=0 to 2*form1.height do
      for j:=0 to high(h) do
        if h[j].top=i then
          begin
          memo1.lines.add(StringReplace(h[j].caption,' ','',[rfReplaceAll,rfIgnoreCase]));
          h2[v]:=h[j];
          h[j].Tag:=v;
          inc(v);
          end;
  end;
//************************
s:=memo1.lines.strings[0];
for i:=1 to memo1.Lines.Count-1 do
  s:=s+memo1.Lines.Strings[i];
result:=s;
memo1.Clear;
if y then exit;

CopyStringToClipboard(s);
end;


procedure TForm1.copytobuffer1Click(Sender: TObject);
begin
s:=maker(false);
end;

procedure TForm1.columns1Click(Sender: TObject);
var g: tmenuitem; i,j,k: integer;
begin
s:=maker(true);
g:=sender as tmenuitem;
if g.caption='&rows' then
  g.Caption:='c&olumns'
  else
  g.Caption:='&rows';
vert:=g.Caption='c&olumns';
//*************************************
mx:=0; my:=0;
for i:=0 to high(a) do a[i].Visible:=vert;
for i:=0 to high(h) do h[i].Visible:=not vert;

//*************************************
/// ñòğîêó ğàñêèäàòü ïî áàòòîíàì
for i:=0 to high(h) do
  h2[i].Caption:=join(copy(s,1+len*i,len));

for i:=0 to high(a2) do a2[i].Caption:='';
for i:=0 to high(a2) do
  begin
  for j:=0 to pun-1 do
    begin
    k:=1+len*j+i;
    a2[i].caption:= a2[i].caption+s[k];
    end;
  a2[i].caption:=join(a2[i].caption);
  end;
end;

function TForm1.join(x: string): string;
var i: integer;
begin
result:='';
for i:=1 to length(x) do result:=result+x[i]+' ';
result:=trim(result);
end;

procedure TForm1.N3331Click(Sender: TObject);   // paste
var i,j,k: integer; d,e: string;
begin
form2.ShowModal;
if not modalok then exit;
if not vert then columns1Click(columns1);
mx:=0;my:=0;
d:='';
for i:=0 to form1.m1.Count-1 do
   d:=d+m1[i];
d:=StringReplace(d,' ','',[rfReplaceAll,rfIgnoreCase]);
s:=d;
ksum:=length(d);
if length(d) mod len = 0 then
  N01.Caption:=format('%d / %d = %d',[length(d),len,length(d) div len])
  else
  N01.Caption:=format('%d / %d = %f',[length(d),len,length(d)/len]);
//************************************************
for i:=0 to high(a) do
  freeandnil(a[i]);
setlength(a,0);
//*******************************
for i:=0 to high(h) do
  freeandnil(h[i]);
setlength(h,0);
creax;
end;



initialization
b1:=Tbitmap.Create();
finalization
form1.m1.free;
b1.Free;
end.
