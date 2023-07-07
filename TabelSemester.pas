unit TabelSemester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  ComCtrls;

type
  TFormSemester = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l8: TLabel;
    l9: TLabel;
    l7: TLabel;
    Edit1: TEdit;
    Bb1: TButton;
    Bb2: TButton;
    Bb3: TButton;
    Bb4: TButton;
    Bb5: TButton;
    dbgrd1: TDBGrid;
    Bb6: TButton;
    cbbc1: TComboBox;
    cbbc2: TComboBox;
    Edit3: TEdit;
    cbbc3: TComboBox;
    cbbc4: TComboBox;
    cbbc5: TComboBox;
    dtp1: TDateTimePicker;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    zqry2: TZQuery;
    zqry3: TZQuery;
    zqry4: TZQuery;
    zqry5: TZQuery;
    zqry6: TZQuery;
    cbb1: TComboBox;
    Button1: TButton;
    procedure kolombersih;
    procedure kolomaktif;
    procedure posisiawal;
    procedure Bb2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bb3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bb1Click(Sender: TObject);
    procedure Bb4Click(Sender: TObject);
    procedure Bb5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSemester: TFormSemester;
  id : string;

implementation

{$R *.dfm}

procedure TFormSemester.Bb2Click(Sender: TObject);
begin
if (cbbc1.Text= '')or (cbbc2.Text= '') or (cbbc3.Text= '')or (cbbc4.Text= '') or (cbbc5.Text= '') or (Edit1.Text= '')or (cbb1.Text ='') or (Edit3.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_semester values (null,"'+cbbc1.Text+'","'+cbbc2.Text+'","'+cbbc3.Text+'","'+cbbc4.Text+'","'+cbbc5.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+Edit1.Text+'","'+cbb1.Text+'","'+Edit3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;



procedure TFormSemester.kolomaktif;
begin
  cbbc1.Enabled:= true;
  cbbc2.Enabled:= true;
  cbbc3.Enabled:= true;
  cbbc4.Enabled:= true;
  cbbc5.Enabled:= true;
  dtp1.Enabled:= True;
  edit1.Enabled:= true;
  cbb1.Enabled:= true;
  edit3.Enabled:= true;

end;

procedure TFormSemester.kolombersih;
begin
  cbbc1.text:= '';
  cbbc2.text:= '';
  cbbc3.text:= '';
  cbbc4.text:= '';
  cbbc5.text:= '';
  Edit1.Clear;
  cbb1.text:= '';
  Edit3.Clear;
end;

procedure TFormSemester.posisiawal;
begin
  kolombersih;

  cbbc1.Enabled:= false;
  cbbc2.Enabled:= false;
  cbbc3.Enabled:= false;
  cbbc4.Enabled:= false;
  cbbc5.Enabled:= false;
  edit1.Enabled:= false;
  cbb1.Enabled:= false;
  edit3.Enabled:= false;


  bb1.Enabled:= True;
  bb2.Enabled:= False;
  bb3.Enabled:= False;
  bb4.Enabled:= False;
  bb5.Enabled:= False;
end;

procedure TFormSemester.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormSemester.Bb3Click(Sender: TObject);
begin
if (cbbc1.Text= '')or (cbbc2.Text= '') or (cbbc3.Text= '') or(cbbc4.Text= '') or(cbbc5.Text= '') or (Edit1.Text= '')or (cbb1.Text ='') or (Edit3.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbbc1.Text = zqry1.Fields[1].AsString) and (cbbc2.Text = zqry1.Fields[2].AsString)and (cbbc3.Text = zqry1.Fields[3].AsString)and (cbbc4.Text = zqry1.Fields[4].AsString)and (cbbc5.Text = zqry1.Fields[5].AsString) and (Edit1.Text = zqry1.Fields[7].AsString) and (cbb1.Text = zqry1.Fields[8].AsString) and (Edit3.Text = zqry1.Fields[9].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_semester').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_semester set id_siswa="'+cbbc1.Text+'",id_poin="'+cbbc2.Text+'",id_wali="'+cbbc3.Text+'",id_ortu="'+cbbc4.Text+'",id_kelas="'+cbbc5.Text+'",tanggal= "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",semester="'+Edit1.Text+'",status="'+cbb1.Text+'",tingkat_kelas="'+Edit3.Text+'" where id_semester="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
posisiawal;
end;
end;
procedure TFormSemester.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbbc1.items.add(zqry2.fieldbyname('id_siswa').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  cbbc2.items.add(zqry3.fieldbyname('id_poin').asstring);
  zqry3.Next;
end;
zqry4.First;
while not zqry4.Eof do
begin
  cbbc3.items.add(zqry4.fieldbyname('id_wali').asstring);
  zqry4.Next;
end;
zqry5.First;
while not zqry5.Eof do
begin
  cbbc4.items.add(zqry5.fieldbyname('id_ortu').asstring);
  zqry5.Next;
end;
zqry6.First;
while not zqry6.Eof do
begin
  cbbc5.items.add(zqry6.fieldbyname('id_kelas').asstring);
  zqry6.Next;
end;
end;


procedure TFormSemester.Bb1Click(Sender: TObject);
begin
kolombersih;
bb1.Enabled:= false;
bb2.Enabled:= True;
bb3.Enabled:= False;
bb4.Enabled:= False;
bb5.Enabled:= True;
kolomaktif;
end;

procedure TFormSemester.Bb4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id_semester').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_semester where id_semester="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TFormSemester.Bb5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormSemester.dbgrd1CellClick(Column: TColumn);
begin
kolomaktif;
bb1.Enabled:= true;
bb2.Enabled:= False;
bb3.Enabled:= True;
bb4.Enabled:= True;
bb5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
cbbc1.Text:= zqry1.FieldList[1].AsString;
cbbc2.Text:= zqry1.FieldList[2].AsString;
cbbc3.Text:= zqry1.FieldList[3].AsString;
cbbc4.Text:= zqry1.FieldList[4].AsString;
cbbc5.Text:= zqry1.FieldList[5].AsString;
dtp1.Date:=FormSemester.zqry1.Fields[6].AsDateTime;
Edit1.Text:= zqry1.FieldList[7].AsString;
cbb1.Text:= zqry1.FieldList[8].AsString;
Edit3.Text:= zqry1.FieldList[9].AsString;
end;

end.
