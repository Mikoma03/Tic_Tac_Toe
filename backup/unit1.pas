unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Math, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    punkte1, punkte2: integer;
    procedure checkgewonnen(s: string);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button10Click(Sender: TObject);
var
  text1: string;

begin
  text1 := (edit1.Text);
  label2.Caption := '' + text1;

end;

procedure TForm1.Button11Click(Sender: TObject);
var
  text1: string;

begin
  text1 := (edit2.Text);
  label3.Caption := text1;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  label4.Caption := '0';
  label5.Caption := '0';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  button1.Caption := ' ';
  button2.Caption := ' ';
  button3.Caption := ' ';
  button4.Caption := ' ';
  button5.Caption := ' ';
  button6.Caption := ' ';
  button7.Caption := ' ';
  button8.Caption := ' ';
  button9.Caption := ' ';
  radiobutton1.Checked := False;
  radiobutton2.Checked := False;
  radiobutton3.Checked := False;
  radiobutton4.Checked := False;
  radiobutton5.Checked := False;
  button1.Enabled := True;
  button2.Enabled := True;
  button3.Enabled := True;
  button4.Enabled := True;
  button5.Enabled := True;
  button6.Enabled := True;
  button7.Enabled := True;
  button8.Enabled := True;
  button9.Enabled := True;

end;

procedure TForm1.Button14Click(Sender: TObject);
var
  i: integer;
  b: TButton;

begin

  if radiobutton2.Checked = True then
  begin
    if radiobutton3.Checked = True then
    begin
      randomize;
      repeat
        i := Randomrange(1, 3 + 1);
        b := FindComponent('button' + i.tostring) as TButton;

      until b.Enabled;

      b.Caption := 'X';
      b.Enabled := False;

    end;
    end;
    if radiobutton4.checked = true then
    begin
      randomize;
      repeat
        i := Randomrange(1, 6 + 1);
        b := FindComponent('button' + i.tostring) as TButton;

      until b.Enabled;

      b.Caption := 'X';
      b.Enabled := False;

    end;
    if radiobutton5.checked=true then
    begin
      randomize;
      repeat
        i := Randomrange(1, 9 + 1);
        b := FindComponent('button' + i.tostring) as TButton;

      until b.Enabled;

      b.Caption := 'X';
      b.Enabled := False;

    end;


  checkgewonnen('X');
end;



procedure TForm1.Button15Click(Sender: TObject);
begin
  Button15.Visible:=false;
  button16.visible:=false;
  label6.Visible:=false;
  label7.Visible:=false;
  label8.Visible:=false;
  Panel1.Visible:=false;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin

  panel1.Visible:=false;
  showmessage('Hallo, ich bin projekt1!');
  showmessage('Ich erkläre dich wie du spielen sollst und die Regeln natürlich auch');
  label9.Visible:=true;
  label10.Visible:=true;
  Showmessage('Das ist "spiel anfang" Knopf');
  showMessage('Wenn du mit jemand anderem spielst, kannst du die vergessen');
  showmessage('Aber wenn du gegen BOT spielst, sollst du auf die drücken jeder mal, wenn du 1 Schritt gemacht hast.');
  label9.Visible:=false;
  label10.Visible:=false;
  label11.Visible:=true;
  ShowMessage('Diese knopf startet den Spiel neu, aber nimmt die Punkten nicht weg.');
  label11.Visible:=false;
  label12.Visible:=true;
  ShowMessage('Und diese nimmt schon die Punkten weg');
  label12.Visible:=false;
  label13.Visible:=true;
  ShowMessage('Das ist die Schwierigkeitswahl');
  ShowMessage('Es gibt insgesamt 4 Schwierigkeiten');
  label29.Visible:=true;
  label30.Visible:=true;
  label31.Visible:=true;
  ShowMessage('Von Anfang hast du möglichkeit nur auf erste 3 Schwierigkeiten zu spielen');
  label29.Visible:=false;
  label30.Visible:=false;
  label31.Visible:=false;
  label13.Visible:=false;
  label14.Visible:=true;
  ShowMessage('Da wählst du gegen wem zu spielen.');
  label14.Visible:=false;
  label15.Visible:=true;
  ShowMessage('Das sind namen von 2 spielern, die immer verändert werden können.');
  label15.Visible:=false;
  label16.Visible:=true;
  ShowMessage('Das ist die Punktenanzahl.');
  label16.Visible:=false;
  label17.Visible:=true;
  label18.Visible:=true;
  label19.Visible:=true;
  label20.Visible:=true;
  label21.Visible:=true;
  label22.Visible:=true;
  label23.Visible:=true;
  label24.Visible:=true;
  label25.Visible:=true;
  label26.Visible:=true;
  label27.Visible:=true;
  label28.Visible:=true;
  ShowMessage('Und das ist Spielfeld.');
  ShowMessage('Viel Spaß beim spielen! :3');
  label17.Visible:=false;
  label18.Visible:=false;
  label19.Visible:=false;
  label20.Visible:=false;
  label21.Visible:=false;
  label22.Visible:=false;
  label23.Visible:=false;
  label24.Visible:=false;
  label25.Visible:=false;
  label26.Visible:=false;
  label27.Visible:=false;
  label28.Visible:=false;


end;

procedure tform1.checkgewonnen(s:string);
var
    zahl1,zahl2:integer;
    b:tbutton;
begin
     zahl1:=0;
     zahl2:=1;
  if (button1.Caption = s) and (button2.Caption = s) and (button3.Caption = s) then
  begin
    ShowMessage(s+' gewinnt');
     label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);
  end;
  if (button4.Caption = s) and (button5.Caption = s) and (button6.Caption = s) then
  begin
    ShowMessage(s+' gewinnt');
     label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);
  end;
  if (button7.Caption = s) and (button8.Caption = s) and (button9.Caption = s) then
  begin
    ShowMessage(s+' gewinnt');
     label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);
  end;
  if (button1.Caption = s) and (button4.Caption = s) and (button7.Caption = s) then
  begin
    ShowMessage(s+' gewinnt');
     label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);
  end;
  if (button2.Caption = s) and (button5.Caption = s) and (button8.Caption = s) then
  begin
    ShowMessage(s+' gewinnt');
    label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);
  end;
  if (button3.Caption = s) and (button6.Caption = s) and (button9.Caption = s) then
  begin
    ShowMessage(s+' gewinnt');
     label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);
  end;
  if (button1.Caption = s) and (button5.Caption = s) and (button9.Caption = s) then
  begin
    ShowMessage(s+' gewinnt');
    label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);

  end;
  if (button7.Caption = s) and (button5.Caption = s) and (button3.Caption = s) then
  begin
    ShowMessage(s+' gewinn');
    label4.caption:=zahl1.toString+zahl2.toString;
    Inc(punkte1);
    Inc(punkte2);
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  b: TButton;
begin
  b := Sender as TButton;
  b.Caption := 'O';
  b.Enabled := False;
  if b.Caption = 'X' then
  begin
    b.Enabled := False;
  end;
  checkgewonnen('O');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  quadrat1, quadrat2, quadrat3, quadrat4, quadrat5, quadrat6, quadrat7,
  quadrat8, quadrat9, spieler1, spieler2: string;

begin
  spieler1 := (edit1.Text);
  spieler2 := (edit2.Text);
  quadrat1 := button1.Caption;
  quadrat2 := button2.Caption;
  quadrat3 := button3.Caption;
  quadrat4 := button4.Caption;
  quadrat5 := button5.Caption;
  quadrat6 := button6.Caption;
  quadrat7 := button7.Caption;
  quadrat8 := button8.Caption;
  quadrat9 := button9.Caption;
  if quadrat1 = 'O' then
    if quadrat2 = 'O' then
      if quadrat3 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat4 = 'O' then
    if quadrat5 = 'O' then
      if quadrat6 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat7 = 'O' then
    if quadrat8 = 'O' then
      if quadrat9 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat1 = 'O' then
    if quadrat4 = 'O' then
      if quadrat7 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat2 = 'O' then
    if quadrat5 = 'O' then
      if quadrat8 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat3 = 'O' then
    if quadrat6 = 'O' then
      if quadrat9 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat1 = 'O' then
    if quadrat5 = 'O' then
      if quadrat9 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat3 = 'O' then
    if quadrat5 = 'O' then
      if quadrat7 = 'O' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat1 = 'X' then
    if quadrat2 = 'X' then
      if quadrat3 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat4 = 'X' then
    if quadrat5 = 'X' then
      if quadrat6 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat7 = 'X' then
    if quadrat8 = 'X' then
      if quadrat9 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat1 = 'X' then
    if quadrat4 = 'X' then
      if quadrat7 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat2 = 'X' then
    if quadrat5 = 'X' then
      if quadrat8 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat3 = 'X' then
    if quadrat6 = 'X' then
      if quadrat9 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat1 = 'X' then
    if quadrat5 = 'X' then
      if quadrat9 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
  if quadrat3 = 'X' then
    if quadrat5 = 'X' then
      if quadrat7 = 'X' then
      begin
        ShowMessage(spieler1 + 'Won');
      end;
end;

procedure TForm1.Label11Click(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

end.






