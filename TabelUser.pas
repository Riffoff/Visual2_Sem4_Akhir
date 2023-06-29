unit TabelUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TFormUser = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Bb1: TButton;
    Bb2: TButton;
    Bb3: TButton;
    Bb4: TButton;
    Bb5: TButton;
    dbgrddg1: TDBGrid;
    Bb6: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUser: TFormUser;

implementation

{$R *.dfm}

end.
