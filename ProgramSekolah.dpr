program ProgramSekolah;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {FormMenu},
  TabelHubungan in 'TabelHubungan.pas' {FormHubungan},
  TabelKelas in 'TabelKelas.pas' {FormKelas},
  TabelOrtu in 'TabelOrtu.pas' {FormOrtu},
  TabelPoin in 'TabelPoin.pas' {FormPoin},
  TabelSemester in 'TabelSemester.pas' {FormSemester},
  TabelSiswa in 'TabelSiswa.pas' {FormSiswa},
  TabelUser in 'TabelUser.pas' {FormUser},
  TabelWaliKelas in 'TabelWaliKelas.pas' {FormWaliKelas},
  MenuAdmin in 'MenuAdmin.pas' {FormAdmin},
  Login in 'Login.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormAdmin, FormAdmin);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormHubungan, FormHubungan);
  Application.CreateForm(TFormKelas, FormKelas);
  Application.CreateForm(TFormOrtu, FormOrtu);
  Application.CreateForm(TFormPoin, FormPoin);
  Application.CreateForm(TFormSemester, FormSemester);
  Application.CreateForm(TFormSiswa, FormSiswa);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormWaliKelas, FormWaliKelas);
  Application.Run;
end.
