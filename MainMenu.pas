unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TFormMenu = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Hub1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses TabelHubungan, TabelSiswa, TabelOrtu;

{$R *.dfm}

procedure TFormMenu.Hub1Click(Sender: TObject);
begin
formhubungan.ShowModal;
end;

procedure TFormMenu.Button1Click(Sender: TObject);
begin
formsiswa.showmodal;
end;

procedure TFormMenu.Button2Click(Sender: TObject);
begin
formortu.showmodal;
end;


end.
