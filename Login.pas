unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLogin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses MenuAdmin, MainMenu;

{$R *.dfm}

procedure TFormLogin.Button1Click(Sender: TObject);
begin
    formadmin.show;
end;

procedure TFormLogin.Button2Click(Sender: TObject);
begin
formmenu.showmodal;

end;

end.
