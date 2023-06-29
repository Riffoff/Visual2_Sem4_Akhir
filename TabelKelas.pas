unit TabelKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TFormKelas = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Bb1: TButton;
    Bb2: TButton;
    Bb3: TButton;
    Bb4: TButton;
    Bb5: TButton;
    dbgrddg1: TDBGrid;
    cbbc1: TComboBox;
    Bb6: TButton;
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
  FormKelas: TFormKelas;

implementation

{$R *.dfm}

end.
