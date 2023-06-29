unit TabelSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, ComCtrls, StdCtrls, Grids,
  DBGrids;

type
  TFormSiswa = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    l10: TLabel;
    l11: TLabel;
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
    Edit5: TEdit;
    Edit6: TEdit;
    cbbc1: TComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    dtp1: TDateTimePicker;
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
  FormSiswa: TFormSiswa;

implementation

{$R *.dfm}

end.
