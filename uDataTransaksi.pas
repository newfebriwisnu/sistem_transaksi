unit uDataTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TfrmDataTransaksi = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    UbahData: TMenuItem;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    ComboBox2: TComboBox;
    CetakTransaksi1: TMenuItem;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox3: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label8: TLabel;
    DateTimePicker4: TDateTimePicker;
    Button2: TButton;
    Label9: TLabel;
    ComboBox4: TComboBox;
    CancelTransaksi1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure UbahDataClick(Sender: TObject);
    procedure CetakTransaksi1Click(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure CancelTransaksi1Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker3KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilData;
    procedure CancelTransaksi;
  end;

var
  frmDataTransaksi: TfrmDataTransaksi;

implementation

uses uDM, uLaporanTransaksi, DateUtils, uInputTransaksi, ADODB,
  uCetakTransaksi, uCetakLaporanTransaksi, uDataRsvp, uMainForm;

{$R *.dfm}

procedure TfrmDataTransaksi.TampilData;
begin
  with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT TOP 25 * FROM view_Transaksi ORDER BY id DESC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataTransaksi.CancelTransaksi;
begin
with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_CancelTransaksi '+
                ''+QuotedStr(DBGrid1.Fields[0].AsString)+'';
      ExecSQL;
      Close;
    end;
end;

procedure TfrmDataTransaksi.FormShow(Sender: TObject);
begin
with dm.qry2 do
  begin
    Close;
    SQL.Text:='SELECT nama FROM admin ORDER BY nama ASC';
    Open;
    ComboBox3.Clear;
    ComboBox3.Text:='Silahkan Pilih';
    while not Eof do begin
      ComboBox3.Items.Add(Fields[0].AsString);
      Next;
    end;
    Close;
  end;

ComboBox1.Text:='Plih Status';
ComboBox2.Text:='Pilih Pembayaran';
ComboBox3.Text:='Pilih Admin';
ComboBox4.Text:='25';

DateTimePicker1.MinDate:=Today;
DateTimePicker1.Date:=DateTimePicker1.MinDate;
DateTimePicker1.MinDate:=TRUNCATE_EXISTING;

DateTimePicker2.MinDate:=Today;
DateTimePicker2.Date:=DateTimePicker2.MinDate;
DateTimePicker2.MinDate:=TRUNCATE_EXISTING;

DateTimePicker3.MinDate:=Today;
DateTimePicker3.Date:=DateTimePicker3.MinDate;
DateTimePicker3.MinDate:=TRUNCATE_EXISTING;

DateTimePicker4.MinDate:=Today;
DateTimePicker4.Date:=DateTimePicker4.MinDate;
DateTimePicker4.MinDate:=TRUNCATE_EXISTING;
Edit1.Text:='';
Edit1.SetFocus;

TampilData;
end;

procedure TfrmDataTransaksi.Button1Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmDataTransaksi.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#39 then
  Key:=#0;

if Key=#27 then
  Close;

if NOT(key in['0'..'9', #8, #13]) then
  key := #0;
end;

procedure TfrmDataTransaksi.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.Edit1Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT TOP '+ComboBox4.Text+' * FROM view_Transaksi WHERE id_transaksi LIKE ''%'+Edit1.Text+'%''';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataTransaksi.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text='Pilih Status' then
  begin
    FormShow(Sender);
  end
else
  begin
  with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='SELECT TOP '+ComboBox4.Text+' * FROM view_Transaksi '+
                'WHERE status = '+QuotedStr(ComboBox1.Text)+'  ORDER BY id DESC';
      Active:=True;
      ExecSQL;
    end;
  end;
end;

procedure TfrmDataTransaksi.ComboBox2Change(Sender: TObject);
begin
if ComboBox1.Text='Pilih Pembayaran' then
  begin
    FormShow(Sender);
  end
else
  begin
  with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='SELECT TOP '+ComboBox4.Text+' * FROM view_Transaksi '+
                'WHERE pembayaran = '+QuotedStr(ComboBox2.Text)+' ORDER BY id DESC';
      Active:=True;
      ExecSQL;
    end;
  end;
end;

procedure TfrmDataTransaksi.UbahDataClick(Sender: TObject);
var x:Integer;
begin
x:=1;
  if dm.qry1.RecordCount=0 then
    begin
      ShowMessage('Data Tidak Ada');
    end
  else if DBGrid1.Fields[5].AsString='CANCEL' then
    begin
      ShowMessage('Transaksi CANCEL Tidak Dapat Diubah');
    end
  else if DBGrid1.Fields[5].AsString='SELESAI' then
    begin
      ShowMessage('Transaksi SELESAI Tidak Dapat Diubah');
    end
  else
begin

with frmInputTransaksi do
begin
Position:=poDesktopCenter;
Show;
dateFotoTransaksi.MinDate:=TRUNCATE_EXISTING;
Button1.Caption:='Ubah';
  //konsumen
  with dm.qry2 do
  begin
    Close;
    SQL.Text:='SELECT * FROM view_Konsumen '+
              'WHERE id_konsumen = '+QuotedStr(DBGrid1.Fields[0].AsString)+'';
    Open;
    edtNamaKonsumen.Text:=dm.qry2['nama'];
    edtEmailKonsumen.Text:=dm.qry2['email'];
    edtTelpKonsumen.Text:=dm.qry2['telp'];
    if dm.qry2['member']='' then
    begin
      CheckBox2.Checked:=False;
      edtMemberKonsumen.Enabled:=False;
    end
    else
    begin
      CheckBox2.Checked:=True;
      edtMemberKonsumen.Enabled:=True;
    end;
    edtMemberKonsumen.Text:=dm.qry2['member'];
    Close;
  end;

  //transaksi
  with dm.qry2 do
  begin
    Close;
    SQL.Text:='SELECT * FROM view_Transaksi '+
              'WHERE id_transaksi = '+QuotedStr(DBGrid1.Fields[0].AsString)+'';
    Open;
    lblIDTransaksi.Caption:=dm.qry2['id_transaksi'];
    dateFotoTransaksi.Date:=VarToDateTime(dm.qry2['tanggal_foto']);
    dateSesiTransaksi.Time:=StrToTime(dm.qry2['sesi_foto']);
    if dm.qry2['diskon']='0' then
    begin
      CheckBox1.Checked:=False;
      edtDiskonTransaksi.Enabled:=False;
    end
    else
    begin
      CheckBox1.Checked:=True;
      edtDiskonTransaksi.Enabled:=True;
    end;
    edtDiskonTransaksi.Text:=dm.qry2['diskon'];
    edtDibayarTransaksi.Text:=dm.qry2['dibayar'];
    edtPelunasanTransaksi.Text:=dm.qry2['pelunasan'];
    edtKekuranganTransaksi.Text:=dm.qry2['kekurangan'];
    edtTotalItemTransaksi.Text:=dm.qry2['total_item'];
    edtTotalHargaTransaksi.Text:=dm.qry2['total_harga'];
    edtNoteTransaksi.Text:=dm.qry2['note'];
    Close;
  end;

  //detail_transaksi
  with dm.qry2 do
  begin
    Close;
    SQL.Text:='SELECT * FROM view_Detail_Transaksi '+
              'WHERE id_transaksi = '+QuotedStr(DBGrid1.Fields[0].AsString)+'';
    Open;
    while not Eof do begin
        StringGrid1.Cells[0,StringGrid1.RowCount-1]:=IntToStr(x);
        StringGrid1.Cells[1,StringGrid1.RowCount-1]:=dm.qry2['nama'];
        StringGrid1.Cells[2,StringGrid1.RowCount-1]:=dm.qry2['jumlah'];
        StringGrid1.Cells[3,StringGrid1.RowCount-1]:=dm.qry2['harga'];
        StringGrid1.Cells[4,StringGrid1.RowCount-1]:=dm.qry2['total'];
        StringGrid1.RowCount:=StringGrid1.RowCount+1;
        x:=x+1;
        Next;
      end;
    Close;
  end;
  
end;

end;
end;

procedure TfrmDataTransaksi.CetakTransaksi1Click(Sender: TObject);
begin
  if dm.qry1.RecordCount=0 then
    begin
      ShowMessage('Data Tidak Ada');
    end
  else
    begin
      with frmCetakTransaksi do
        begin
          QuickRep1.DataSet:=dm.qry3;
          with dm.qry3 do
            begin
              Active:=False;
              Close;
              SQL.Clear;
              SQL.Text:='sp_CetakNotaTransaksi '+QuotedStr(DBGrid1.Fields[0].AsString)+'';
              Active:=True;
              ExecSQL;
            end;

      //konsumen
    konsumenNama.DataSet:=dm.qry3; konsumenNama.DataField:='konsumen';
    konsumenEmail.DataSet:=dm.qry3; konsumenEmail.DataField:='email';
    konsumenTelp.DataSet:=dm.qry3; konsumenTelp.DataField:='telp';
    konsumenMember.DataSet:=dm.qry3; konsumenMember.DataField:='member';
      //transaksi
    transaksiTanggalFoto.DataSet:=dm.qry3; transaksiTanggalFoto.DataField:='tanggal_foto';
    transaksiSesiFoto.DataSet:=dm.qry3; transaksiSesiFoto.DataField:='sesi_foto';
    transaksiNote.DataSet:=dm.qry3; transaksiNote.DataField:='note';
    transaksiIdTransaksi.DataSet:=dm.qry3; transaksiIdTransaksi.DataField:='id_transaksi';
    transaksiTanggalTransaksi.DataSet:=dm.qry3; transaksiTanggalTransaksi.DataField:='tanggal_transaksi';
    transaksiAdmin.DataSet:=dm.qry3; transaksiAdmin.DataField:='admin';
    transaksiTotalItem.DataSet:=dm.qry3; transaksiTotalItem.DataField:='total_item';
    transaksiTotalHarga.DataSet:=dm.qry3; transaksiTotalHarga.DataField:='total_harga';
    transaksiDibayar.DataSet:=dm.qry3; transaksiDibayar.DataField:='dibayar';
    transaksiKekurangan.DataSet:=dm.qry3; transaksiKekurangan.DataField:='kekurangan';
    transaksiPembayaran.DataSet:=dm.qry3; transaksiPembayaran.DataField:='pembayaran';

    transaksiPelunasan.DataSet:=dm.qry3; transaksiPelunasan.DataField:='pelunasan';
    transaksiTanggalPelunasan.DataSet:=dm.qry3; transaksiTanggalPelunasan.DataField:='tanggal_pelunasan';
      //detail_transaksi
    detailProduk.DataSet:=dm.qry3; detailProduk.DataField:='produk';
    detailJumlah.DataSet:=dm.qry3; detailJumlah.DataField:='jumlah';
    detailHarga.DataSet:=dm.qry3; detailHarga.DataField:='harga';
    detailTotal.DataSet:=dm.qry3; detailTotal.DataField:='total';

    QuickRep1.Preview;
    end;
  end;
end;

procedure TfrmDataTransaksi.ComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.DateTimePicker1Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Transaksi WHERE tanggal_foto between '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker4.Date))+' '+
              'ORDER BY tanggal_foto ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataTransaksi.ComboBox3Change(Sender: TObject);
begin
if ComboBox1.Text='Pilih Admin' then
  begin
    FormShow(Sender);
  end
else
  begin
    with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='SELECT TOP '+ComboBox4.Text+' * FROM view_Transaksi '+
                'WHERE admin = '+QuotedStr(ComboBox3.Text)+'  ORDER BY id_transaksi DESC';
      Active:=True;
      ExecSQL;
    end;
  end;
end;

procedure TfrmDataTransaksi.DateTimePicker2Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Transaksi WHERE tanggal_transaksi between '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker3.Date))+' '+
              'ORDER BY tanggal_transaksi ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataTransaksi.DateTimePicker3Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Transaksi WHERE tanggal_transaksi BETWEEN '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker3.Date))+' '+
              'ORDER BY tanggal_transaksi ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataTransaksi.DateTimePicker4Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Transaksi WHERE tanggal_foto between '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker4.Date))+' '+
              'ORDER BY tanggal_foto ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataTransaksi.ComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.Button2Click(Sender: TObject);
begin
frmInputTransaksi.Position:=poDesktopCenter;
frmInputTransaksi.ShowModal;
end;

procedure TfrmDataTransaksi.CancelTransaksi1Click(Sender: TObject);
begin
if dm.qry1.RecordCount=0 then
  begin
    ShowMessage('Data Tidak Ada');
    FormShow(Sender);
  end
else if DBGrid1.Fields[5].AsString='CANCEL' then
  begin
    ShowMessage('Transaksi Sudah Di CANCEL');
  end
else if DBGrid1.Fields[5].AsString='RSVP' then
  begin
    ShowMessage('Transaksi RSVP Tidak Dapat Di CANCEL');
  end
else if DBGrid1.Fields[5].AsString='SELESAI' then
  begin
    ShowMessage('Transaksi SELESAI Tidak Dapat Di CANCEL');
  end
else
  begin
    if(Application.MessageBox('Cancel Transaksi?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
      begin
        try dm.con1.BeginTrans;
            CancelTransaksi;
            dm.con1.CommitTrans;
            FormShow(Sender);
            ShowMessage('Data Tersimpan');
        except dm.con1.RollbackTrans;
            FormShow(Sender);
            ShowMessage('Gagal Tersimpan');
      end;
    end
  end
end;

procedure TfrmDataTransaksi.ComboBox4Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT TOP '+ComboBox4.Text+' * FROM view_Transaksi ORDER BY id DESC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataTransaksi.ComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.DateTimePicker2KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.DateTimePicker3KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.DateTimePicker4KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataTransaksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//MainForm.Enabled:=True;
end;

procedure TfrmDataTransaksi.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#27 then
  Close;
end;

end.
