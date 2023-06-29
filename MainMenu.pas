unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFormMenu = class(TForm)
    procedure Hub1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses TabelHubungan;

{$R *.dfm}

procedure TFormMenu.Hub1Click(Sender: TObject);
begin
formhubungan.ShowModal;
end;

end.
