unit MenuAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TFormAdmin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    img1: TImage;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin: TFormAdmin;

implementation

uses TabelHubungan, TabelSemester, TabelKelas, TabelOrtu, TabelSiswa,
  TabelUser, TabelPoin, Login, TabelWaliKelas;

{$R *.dfm}

procedure TFormAdmin.Button1Click(Sender: TObject);
begin
formhubungan.showmodal;
end;

procedure TFormAdmin.Button2Click(Sender: TObject);
begin
formsemester.showmodal;

end;

procedure TFormAdmin.Button3Click(Sender: TObject);
begin
formkelas.showmodal;
end;

procedure TFormAdmin.Button5Click(Sender: TObject);
begin
formortu.showmodal;
end;

procedure TFormAdmin.Button6Click(Sender: TObject);
begin
formsiswa.showmodal;
end;

procedure TFormAdmin.Button7Click(Sender: TObject);
begin
formwalikelas.showmodal;
end;

procedure TFormAdmin.Button8Click(Sender: TObject);
begin
formuser.showmodal;
end;

procedure TFormAdmin.Button4Click(Sender: TObject);
begin
formpoin.showmodal;
end;

procedure TFormAdmin.Button9Click(Sender: TObject);
begin
close;
formlogin.show;
end;

end.
