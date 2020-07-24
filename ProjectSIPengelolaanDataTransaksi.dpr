program ProjectSIPengelolaanDataTransaksi;

uses
  Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  uDM in 'uDM.pas' {dm: TDataModule},
  uLoginForm in 'uLoginForm.pas' {LoginForm},
  uDataAdmin in 'uDataAdmin.pas' {frmDataAdmin},
  uDataProduk in 'uDataProduk.pas' {frmDataProduk},
  uDataKonsumen in 'uDataKonsumen.pas' {frmDataKonsumen},
  uDataTransaksi in 'uDataTransaksi.pas' {frmDataTransaksi},
  uLaporanTransaksi in 'uLaporanTransaksi.pas' {LaporanTransaksi},
  uInputAdmin in 'uInputAdmin.pas' {frmInputAdmin},
  uInputProduk in 'uInputProduk.pas' {frmInputProduk},
  uInputTransaksi in 'uInputTransaksi.pas' {frmInputTransaksi},
  uDataRsvp in 'uDataRsvp.pas' {frmDataRsvp},
  uLaporanRsvp in 'uLaporanRsvp.pas' {LaporanRsvp},
  uCetakTransaksi in 'uCetakTransaksi.pas' {frmCetakTransaksi},
  uCetakLaporanTransaksi in 'uCetakLaporanTransaksi.pas' {frmCetakLaporanTransaksi},
  uCetakLaporanRsvp in 'uCetakLaporanRsvp.pas' {frmCetakLaporanRsvp};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistem Informasi Pengelolaan Data Transaksi - Alaric Photography';
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmDataTransaksi, frmDataTransaksi);
  Application.CreateForm(TLaporanTransaksi, LaporanTransaksi);
  Application.CreateForm(TfrmInputAdmin, frmInputAdmin);
  Application.CreateForm(TfrmInputProduk, frmInputProduk);
  Application.CreateForm(TfrmInputTransaksi, frmInputTransaksi);
  Application.CreateForm(TfrmDataRsvp, frmDataRsvp);
  Application.CreateForm(TLaporanRsvp, LaporanRsvp);
  Application.CreateForm(TfrmDataAdmin, frmDataAdmin);
  Application.CreateForm(TfrmDataProduk, frmDataProduk);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmDataKonsumen, frmDataKonsumen);
  Application.CreateForm(TfrmCetakTransaksi, frmCetakTransaksi);
  Application.CreateForm(TfrmCetakLaporanTransaksi, frmCetakLaporanTransaksi);
  Application.CreateForm(TfrmCetakLaporanRsvp, frmCetakLaporanRsvp);
  Application.Run;
end.
