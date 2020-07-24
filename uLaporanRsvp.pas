unit uLaporanRsvp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TLaporanRsvp = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LaporanRsvp: TLaporanRsvp;

implementation

uses DateUtils, uCetakLaporanRsvp, uDM, uMainForm;

{$R *.dfm}

procedure TLaporanRsvp.Button2Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TLaporanRsvp.FormShow(Sender: TObject);
begin
DateTimePicker1.MinDate:=Today;
DateTimePicker1.Date:=DateTimePicker1.MinDate;
DateTimePicker1.MinDate:=TRUNCATE_EXISTING;

DateTimePicker2.MinDate:=Today;
DateTimePicker2.Date:=DateTimePicker2.MinDate;
DateTimePicker2.MinDate:=TRUNCATE_EXISTING;
end;

procedure TLaporanRsvp.Button1Click(Sender: TObject);
begin
with frmCetakLaporanRsvp do
  begin
    with dm.qry1 do
      begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='SELECT * FROM view_LaporanRsvp WHERE tanggal_transaksi BETWEEN '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date))+' ORDER BY id_transaksi ASC';
      Active:=True;
      ExecSQL;
      end;
    if dm.qry1.RecordCount=0 then
      begin
        ShowMessage('Data Tidak Ada');
        FormShow(Sender);
      end
    else
      begin
        QuickRep1.DataSet:=dm.qry1;
        QRDBText1.DataSet:=dm.qry1; QRDBText1.DataField:='id_transaksi';
        QRDBText2.DataSet:=dm.qry1; QRDBText2.DataField:='tanggal_foto';
        QRDBText3.DataSet:=dm.qry1; QRDBText3.DataField:='nama';
        QRDBText4.DataSet:=dm.qry1; QRDBText4.DataField:='telp';
        QRDBText5.DataSet:=dm.qry1; QRDBText5.DataField:='email';
        QRDBText6.DataSet:=dm.qry1; QRDBText6.DataField:='dibayar';
        QRDBText7.DataSet:=dm.qry1; QRDBText7.DataField:='kekurangan';
        QRDBText8.DataSet:=dm.qry1; QRDBText8.DataField:='pembayaran';
        QRDBText9.DataSet:=dm.qry1; QRDBText9.DataField:='sudah_jadi';
        QRDBText10.DataSet:=dm.qry1; QRDBText10.DataField:='sudah_diambil';
        QRDBText11.DataSet:=dm.qry1; QRDBText11.DataField:='tanggal_diambil';
        tanggal_awal.Caption:=DateToStr(DateTimePicker1.Date);
        tanggal_akhir.Caption:=DateToStr(DateTimePicker2.Date);
        QuickRep1.Preview;
        LaporanRsvp.Close;
      end;
  end;
end;

procedure TLaporanRsvp.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;

if Key=#27 then
  Close;
end;

procedure TLaporanRsvp.DateTimePicker2KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;

if Key=#27 then
  Close;
end;

procedure TLaporanRsvp.Button2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then
  Close;
end;

end.
