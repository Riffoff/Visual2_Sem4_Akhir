unit TabelPoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TFormPoin = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    dg1: TDBGrid;
    b6: TButton;
    c1: TComboBox;
    c2: TComboBox;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    Button1: TButton;
    procedure kolombersih;
    procedure kolomaktif;
    procedure posisiawal;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPoin: TFormPoin;
    id : string;

implementation

{$R *.dfm}

procedure TFormPoin.b1Click(Sender: TObject);
begin
kolombersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

kolomaktif;
end;

procedure TFormPoin.kolomaktif;
begin
edit1.Enabled:= True;
edit2.Enabled:= True;
c1.Enabled:= True;
c2.Enabled:= True;
end;

procedure TFormPoin.kolombersih;
begin
Edit1.Clear;
Edit2.Clear;
c1.text:= '';
c2.text:= '';
end;

procedure TFormPoin.posisiawal;
begin
kolombersih;

edit1.Enabled:= false;
edit2.Enabled:= false;
c1.Enabled:= false;
c2.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TFormPoin.b2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(c1.Text= '')or (c2.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama_poin',Edit1.Text,[])) and (zqry1.Locate('bobot',Edit2.Text,[])) then
begin
ShowMessage('DATA POIN SUDAH DIGUNAKAN');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_poin values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+c1.Text+'","'+c2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TFormPoin.b3Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(c1.Text= '')or (c2.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and (c1.Text = zqry1.Fields[3].AsString) and (c2.Text = zqry1.Fields[4].AsString)  then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_poin').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_poin set nama_poin= "'+Edit1.Text+'",bobot="'+Edit2.Text+'",jenis="'+c1.Text+'",status="'+c2.Text+'" where id_poin="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_poin');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormPoin.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_poin').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_poin where id_poin="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TFormPoin.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPoin.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPoin.dg1CellClick(Column: TColumn);
begin
kolomaktif;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
Edit2.Text:= zqry1.FieldList[2].AsString;
c1.Text:= zqry1.FieldList[3].AsString;
c2.Text:= zqry1.FieldList[4].AsString;
end;

end.
