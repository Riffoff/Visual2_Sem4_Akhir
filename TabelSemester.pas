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
    Edit2: TEdit;
    Bb1: TButton;
    Bb2: TButton;
    Bb3: TButton;
    Bb4: TButton;
    Bb5: TButton;
    dbgrddg1: TDBGrid;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSemester: TFormSemester;

implementation

{$R *.dfm}

end.
