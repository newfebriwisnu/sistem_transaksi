unit uMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ColorGrd, ComCtrls, acPNG,
  ImgList;

type
  TMainForm = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    Master: TMenuItem;
    DataAdmin1: TMenuItem;
    DataProduk1: TMenuItem;
    Transaksi: TMenuItem;
    DataTransaksi1: TMenuItem;
    Laporan: TMenuItem;
    ransaksi2: TMenuItem;
    Logout: TMenuItem;
    DataKonsumen1: TMenuItem;
    Timer1: TTimer;
    lblAdmin: TLabel;
    lblWaktu: TLabel;
    lblUsername: TLabel;
    DataRSVP1: TMenuItem;
    StatusBar1: TStatusBar;
    lblTanggal: TLabel;
    Rsvp1: TMenuItem;
    ImageList1: TImageList;
    N1: TMenuItem;
    Konsumen: TMenuItem;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    procedure About2Click(Sender: TObject);
    procedure LogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataAdmin1Click(Sender: TObject);
    procedure DataProduk1Click(Sender: TObject);
    procedure DataKonsumen1Click(Sender: TObject);
    procedure DataTransaksi1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DataRSVP1Click(Sender: TObject);
    procedure F1DataAdmin1Click(Sender: TObject);
    procedure F2DataProduk1Click(Sender: TObject);
    procedure ransaksi2Click(Sender: TObject);
    procedure Rsvp1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses uLoginForm, uDataAdmin, uDataProduk, uDataKonsumen, uDataTransaksi,
  uLaporanTransaksi, uInputTransaksi, uDataRsvp, uDM, DateUtils,
  uLaporanRsvp, uCetakTransaksi, uCetakLaporanTransaksi, ADODB, DB;

{$R *.dfm}

procedure TMainForm.About2Click(Sender: TObject);
begin
  ShowMessage('Sistem Informasi Pengelolaan Data Transaksi - Alaric Photography');
end;

procedure TMainForm.LogoutClick(Sender: TObject);
begin
Close;
LoginForm.Show;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
LoginForm.Show;
LoginForm.Position:=poDesktopCenter;
end;

procedure TMainForm.DataAdmin1Click(Sender: TObject);
begin
frmDataAdmin.Position:=poDesktopCenter;
frmDataAdmin.ShowModal;
{frmDataAdmin.Position:=poDesktopCenter;
frmDataAdmin.FormStyle:=fsStayOnTop;
frmDataAdmin.Show;
MainForm.Enabled:=False;}
end;

procedure TMainForm.DataProduk1Click(Sender: TObject);
begin
frmDataProduk.Position:=poDesktopCenter;
frmDataProduk.ShowModal;
{frmDataProduk.Position:=poDesktopCenter;
frmDataProduk.FormStyle:=fsStayOnTop;
frmDataProduk.Show;
MainForm.Enabled:=False;}
end;

procedure TMainForm.DataKonsumen1Click(Sender: TObject);
begin
frmDataKonsumen.Position:=poDesktopCenter;
frmDataKonsumen.ShowModal;
{frmDataKonsumen.Position:=poDesktopCenter;
frmDataKonsumen.FormStyle:=fsStayOnTop;
frmDataKonsumen.Show;
MainForm.Enabled:=False;}
end;

procedure TMainForm.DataTransaksi1Click(Sender: TObject);
begin
frmDataTransaksi.Position:=poDesktopCenter;
frmDataTransaksi.ShowModal;
{frmDataTransaksi.Position:=poDesktopCenter;
frmDataTransaksi.FormStyle:=fsStayOnTop;
frmDataTransaksi.Show;
MainForm.Enabled:=False;}
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
lblWaktu.Caption:=TimeToStr(Time);
lblTanggal.Caption:=DateToStr(Date);
with dm.qry4 do
  begin
    Close;
    SQL.Text:='SELECT COUNT(*) FROM transaksi WHERE tanggal_transaksi = '+
              QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+'';
    Open;
    Label1.Caption:='Transaksi Hari Ini: '+Fields[0].AsString;
    Close;
    SQL.Text:='SELECT SUM(dibayar)+SUM(pelunasan) FROM transaksi WHERE tanggal_transaksi ='+
              QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+'';
    Open;
    Label2.Caption:='Pendapatan: Rp '+Fields[0].AsString;
  end;
end;

procedure TMainForm.DataRSVP1Click(Sender: TObject);
begin
frmDataRsvp.Position:=poDesktopCenter;
frmDataRsvp.ShowModal;
{frmDataRsvp.Position:=poDesktopCenter;
frmDataRsvp.FormStyle:=fsStayOnTop;
frmDataRsvp.Show;
MainForm.Enabled:=False;}
end;

procedure TMainForm.F1DataAdmin1Click(Sender: TObject);
begin
frmDataAdmin.ShowModal;
frmDataAdmin.Position:=poDesktopCenter;
end;

procedure TMainForm.F2DataProduk1Click(Sender: TObject);
begin
frmDataProduk.ShowModal;
frmDataProduk.Position:=poDesktopCenter;
end;

procedure TMainForm.ransaksi2Click(Sender: TObject);
begin
LaporanTransaksi.Position:=poDesktopCenter;
LaporanTransaksi.ShowModal;
end;

procedure TMainForm.Rsvp1Click(Sender: TObject);
begin
LaporanRsvp.Position:=poDesktopCenter;
LaporanRsvp.ShowModal;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
DateTimePicker1.MinDate:=Today;
DateTimePicker1.Date:=DateTimePicker1.MinDate;
DateTimePicker1.MinDate:=TRUNCATE_EXISTING;
end;

end.
