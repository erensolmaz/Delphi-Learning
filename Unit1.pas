unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label10: TLabel;
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ListBox1: TListBox;
    Label16: TLabel;
    Label17: TLabel;
    Combobox: TComboBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ScrollBar1: TScrollBar;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    EditS: TEdit;
    Label25: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label26: TLabel;
    Edit5: TEdit;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Label27: TLabel;
    Label28: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label30: TLabel;
    Label31: TLabel;
    TrackBar1: TTrackBar;
    Label29: TLabel;
    Label32: TLabel;
    Edit6: TEdit;
    Label33: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure DateTimePicker1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
a,b:byte;
c:integer;
begin
a:=strtoint(edit2.text);
b:=strtoint(edit3.text);
c:=a+b;
edit4.Text :=inttostr(c);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ProgressBar1.Position:= ProgressBar1.Position+5;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Timer1.Enabled:=True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position-100;
Timer1.Enabled:=False;
end;

procedure TForm1.DateTimePicker1Click(Sender: TObject);
begin
Edit5.Text:=DateToStr(DateTimePicker1.Date);
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
EditS.Text:=inttostr(ScrollBar1.Position);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:= ProgressBar1.Position+5;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
Edit6.Text:=inttostr(TrackBar1.Position);
end;

end.
