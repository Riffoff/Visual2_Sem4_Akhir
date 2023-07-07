unit MenuAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAdmin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin: TFormAdmin;

implementation

uses TabelHubungan, TabelSemester, TabelKelas;

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

end.
