unit uLaporanTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, QuickRpt, QRCtrls, ComCtrls, StdCtrls;

type
  TLaporanTransaksi = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LaporanTransaksi: TLaporanTransaksi;

implementation

uses uCetakLaporanTransaksi, uDM, DateUtils, uMainForm,
  uCetakLaporanTransaksi2;

{$R *.dfm}

procedure TLaporanTransaksi.Button1Click(Sender: TObject);
begin
with frmCetakLaporanTransaksi do
  begin
    with dm.qry1 do
      begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='SELECT * FROM view_LaporanTransaksi WHERE tanggal_transaksi BETWEEN '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date))+' ORDER BY id_transaksi ASC';
      Active:=True;
      ExecSQL;
      end;
    if dm.qry1.RecordCount=0 then
      begin
        ShowMessage('Data Tidak Ada');
      end
    else
      begin
        QuickRep1.DataSet:=dm.qry1;
        QRDBText1.DataSet:=dm.qry1; QRDBText1.DataField:='id_transaksi';
        QRDBText2.DataSet:=dm.qry1; QRDBText2.DataField:='tanggal_transaksi';
        QRDBText3.DataSet:=dm.qry1; QRDBText3.DataField:='tanggal_foto';
        QRDBText4.DataSet:=dm.qry1; QRDBText4.DataField:='konsumen';
        QRDBText5.DataSet:=dm.qry1; QRDBText5.DataField:='status';
        QRDBText6.DataSet:=dm.qry1; QRDBText6.DataField:='total_harga';
        QRDBText7.DataSet:=dm.qry1; QRDBText7.DataField:='admin';
        QRDBText8.DataSet:=dm.qry1; QRDBText8.DataField:='pembayaran';
        QRDBText9.DataSet:=dm.qry1; QRDBText9.DataField:='dibayar';
        QRDBText10.DataSet:=dm.qry1; QRDBText10.DataField:='pelunasan';
        QRDBText11.DataSet:=dm.qry1; QRDBText11.DataField:='tanggal_pelunasan';

        with dm.qry2 do
          begin
          Active:=False;
          Close;
          SQL.Clear;
          SQL.Text:='EXEC sp_Pendapatan '+
                  ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+','+
                  ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date))+'';
                  
          {SQL.Text:='SELECT * FROM view_Pendapatan WHERE tanggal_transaksi BETWEEN '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date))+'';}
          Active:=True;
          ExecSQL;
          end;
        QRDBText12.DataSet:=dm.qry2; QRDBText12.DataField:='pendapatan';
        QRDBText13.DataSet:=dm.qry2; QRDBText13.DataField:='graduation';
        QRDBText14.DataSet:=dm.qry2; QRDBText14.DataField:='couple';
        QRDBText15.DataSet:=dm.qry2; QRDBText15.DataField:='family';
        QRDBText16.DataSet:=dm.qry2; QRDBText16.DataField:='grup';
        QRDBText17.DataSet:=dm.qry2; QRDBText17.DataField:='pasphoto';
        QRDBText18.DataSet:=dm.qry2; QRDBText18.DataField:='wedding';

        tanggal_awal.Caption:=DateToStr(DateTimePicker1.Date);
        tanggal_akhir.Caption:=DateToStr(DateTimePicker2.Date);
        QuickRep1.Preview;
        LaporanTransaksi.Close;
      end;
  end;
end;

procedure TLaporanTransaksi.FormShow(Sender: TObject);
begin
DateTimePicker1.MinDate:=Today;
DateTimePicker1.Date:=DateTimePicker1.MinDate;
DateTimePicker1.MinDate:=TRUNCATE_EXISTING;

DateTimePicker2.MinDate:=Today;
DateTimePicker2.Date:=DateTimePicker2.MinDate;
DateTimePicker2.MinDate:=TRUNCATE_EXISTING;
end;

procedure TLaporanTransaksi.Button2Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TLaporanTransaksi.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;

if Key=#27 then
  Close;
end;

procedure TLaporanTransaksi.DateTimePicker2KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;

if Key=#27 then
  Close;
end;

procedure TLaporanTransaksi.Button2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#27 then
  Close;
end;

end.
