unit uDM;

interface

uses
  SysUtils, Classes, Dialogs, ADODB, DB;

type
  Tdm = class(TDataModule)
    con1: TADOConnection;
    tbl1: TADOTable;
    qry1: TADOQuery;
    qry2: TADOQuery;
    qry3: TADOQuery;
    qry4: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
var NamaFile,svr,dbku,hos,pss,CS,InScur,pass: string;
  List: TStringList;
begin
  try
    NamaFile:='koneksi';
    NamaFile:=ChangeFileExt(NamaFile,'.ini');
    List:=TStringList.Create;
    try
      List.NameValueSeparator:=':';
      try
        List.LoadFromFile(NamaFile);
        svr:=List.Values['SVR'];
        dbku:=List.Values['DB'];
        hos:=List.Values['ID'];
        if hos='' then
          begin
            hos:=hos;
            InScur:='Integrated Security=SSPI';
          end
        else
          begin
            hos:=hos;
            InScur:='Integrated Security=';
          end;
            pss:=List.Values['PAS'];
          if pss='' then pass:=List.Values['PAS'];
            CS:='Provider=SQLOLEDB.1;Password='+pss+';Persist Security Info=False;User ID='+hos+';Initial Catalog='+dbku+';Data Source='+svr+'';
          except
            end;
          finally
            List.Free;
          end;
            con1.Connected:=False;
            con1.LoginPrompt:=False;
            con1.IsolationLevel:=ilReadCommitted;
            con1.ConnectionString:=CS;
            con1.Connected:=True;
            //ShowMessage('Koneksi Berhasil, Selamat Bekerja');
          except
            ShowMessage('Koneksi Gagal');
          end;
end;

end.
