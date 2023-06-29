object FormSemester: TFormSemester
  Left = 324
  Top = 168
  Width = 732
  Height = 575
  Caption = 'Tabel Semester'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 56
    Top = 240
    Width = 54
    Height = 16
    Caption = 'TANGGAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 368
    Top = 40
    Width = 63
    Height = 16
    Caption = 'SEMESTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 56
    Top = 40
    Width = 56
    Height = 16
    Caption = 'ID SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 56
    Top = 80
    Width = 44
    Height = 16
    Caption = 'ID POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 368
    Top = 80
    Width = 52
    Height = 16
    Caption = 'STATUS '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 368
    Top = 120
    Width = 91
    Height = 16
    Caption = 'TINGKAT KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 56
    Top = 120
    Width = 46
    Height = 16
    Caption = 'ID WALI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l9: TLabel
    Left = 56
    Top = 160
    Width = 49
    Height = 16
    Caption = 'ID ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l7: TLabel
    Left = 56
    Top = 200
    Width = 52
    Height = 16
    Caption = 'ID KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 504
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 504
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Bb1: TButton
    Left = 56
    Top = 280
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 2
  end
  object Bb2: TButton
    Left = 160
    Top = 280
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 3
  end
  object Bb3: TButton
    Left = 264
    Top = 280
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 4
  end
  object Bb4: TButton
    Left = 368
    Top = 280
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 5
  end
  object Bb5: TButton
    Left = 472
    Top = 280
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 6
  end
  object dbgrddg1: TDBGrid
    Left = 48
    Top = 338
    Width = 625
    Height = 167
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Bb6: TButton
    Left = 576
    Top = 280
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 8
  end
  object cbbc1: TComboBox
    Left = 192
    Top = 40
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      '')
  end
  object cbbc2: TComboBox
    Left = 192
    Top = 80
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      '')
  end
  object Edit3: TEdit
    Left = 504
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object cbbc3: TComboBox
    Left = 192
    Top = 120
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      '')
  end
  object cbbc4: TComboBox
    Left = 192
    Top = 160
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      '')
  end
  object cbbc5: TComboBox
    Left = 192
    Top = 200
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      '')
  end
  object dtp1: TDateTimePicker
    Left = 192
    Top = 240
    Width = 161
    Height = 21
    Date = 45105.542622997690000000
    Time = 45105.542622997690000000
    TabOrder = 15
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 480
    Top = 160
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual2akhir'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'libmysql'
    Left = 592
    Top = 216
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_semester')
    Params = <>
    Left = 592
    Top = 160
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 368
    Top = 216
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DataSet = frxdbdtst1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45101.545964409700000000
    ReportOptions.LastChange = 45105.542209583300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 216
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 219.212740000000000000
          Top = 11.338590000000000000
          Width = 279.685220000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA SEMESTER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 15.118120000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 45.354360000000000000
          Top = 15.118120000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SISWA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Top = 15.118120000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID POIN')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 476.220780000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SEMESTER')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 551.811380000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 181.417440000000000000
          Top = 15.118120000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID WALI')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 241.889920000000000000
          Top = 15.118120000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID ORTU')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 309.921460000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID KELAS')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 381.732530000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 623.622450000000000000
          Top = 15.118120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TINGKAT ')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 15.118120000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_semester'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_semester"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 45.354360000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_siswa'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_siswa"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 109.606370000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_poin'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_poin"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 181.417440000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_wali'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_wali"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 241.889920000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_ortu'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_ortu"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 309.921460000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_kelas'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_kelas"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 476.220780000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'semester'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."semester"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 551.811380000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tingkat_kelas'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tingkat_kelas"]')
          ParentFont = False
        end
      end
    end
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_siswa')
    Params = <>
    Left = 424
    Top = 160
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_poin')
    Params = <>
    Left = 536
    Top = 160
  end
  object zqry4: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_wali_kelas')
    Params = <>
    Left = 480
    Top = 216
  end
  object zqry5: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 368
    Top = 160
  end
  object zqry6: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_kelas')
    Params = <>
    Left = 424
    Top = 216
  end
end
