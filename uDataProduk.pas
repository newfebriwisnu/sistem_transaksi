unit uDataProduk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Grids, DBGrids;

type
  TfrmDataProduk = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    ambahData1: TMenuItem;
    UbahData1: TMenuItem;
    HapusData1: TMenuItem;
    Refresh2: TMenuItem;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edtId: TEdit;
    edtNama: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtDeskripsi: TEdit;
    edtHarga: TEdit;
    Button2: TButton;
    Button3: TButton;
    Rp: TLabel;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure HapusData1Click(Sender: TObject);
    procedure ambahData1Click(Sender: TObject);
    procedure UbahData1Click(Sender: TObject);
    procedure Refresh2Click(Sender: TObject);
    procedure edtHargaKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure edtIdKeyPress(Sender: TObject; var Key: Char);
    procedure edtNamaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilData;
    procedure TampilDataCustom;
    procedure HapusData;
    procedure InputData;
    procedure UbahData;
  end;

var
  frmDataProduk: TfrmDataProduk;

implementation

uses uDM, uInputAdmin, uInputProduk, uMainForm;

{$R *.dfm}

procedure TfrmDataProduk.InputData;
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='sp_insertProduk '+
              ''+QuotedStr(edtId.Text)+','+QuotedStr(edtNama.Text)+','+
              ''+QuotedStr(edtDeskripsi.Text)+','+edtHarga.Text+'';
    ExecSQL;
end;

end;

procedure TfrmDataProduk.UbahData;
begin
with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_updateProduk '+
                ''+QuotedStr(edtId.Text)+','+QuotedStr(edtNama.Text)+','+
                ''+QuotedStr(edtDeskripsi.Text)+','+edtHarga.Text+'';
      ExecSQL;
    end;
end;

procedure TfrmDataProduk.TampilData;
begin
  with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Produk ORDER BY nama ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataProduk.TampilDataCustom;
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT TOP '+ComboBox1.Text+' * FROM view_produk ORDER BY nama ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataProduk.HapusData;
begin
with dm.qry2 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='sp_deleteProduk '+QuotedStr(DBGrid1.Fields[0].AsString)+'';
    ExecSQL;
    ShowMessage('Data Berhasil Dihapus');
  end;
end;

procedure TfrmDataProduk.Button1Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmDataProduk.FormShow(Sender: TObject);
begin
TampilData;
edtId.Text:='';
edtNama.Text:='';
edtDeskripsi.Text:='';
edtHarga.Text:='';
ComboBox1.Text:='25';
Edit1.SetFocus;
Button2.Caption:='Simpan';
GroupBox2.Caption:='Kelola Data Jasa';
GroupBox2.Enabled:=False;
end;

procedure TfrmDataProduk.Edit1Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Produk WHERE '+
              ' nama LIKE''%'+Edit1.Text+'%'' OR'+
              ' id_produk LIKE''%'+Edit1.Text+'%''';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataProduk.HapusData1Click(Sender: TObject);
begin
  if dm.qry1.RecordCount=0 then
    begin
      ShowMessage('Data Tidak Ada');
    end
  else
    begin
      if(Application.MessageBox('Hapus Data?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
          try
            HapusData;
            FormShow(Sender);
          except
            ShowMessage('Data Gagal Dihapus');
          end;
        end
      else
        begin
        
        end;
  end;
end;

procedure TfrmDataProduk.ambahData1Click(Sender: TObject);
begin
FormShow(Sender);
GroupBox2.Enabled:=True;
GroupBox2.Caption:='Tambah Data Jasa';
Button2.Caption:='Simpan';
edtId.Enabled:=True;
edtId.SetFocus;
end;

procedure TfrmDataProduk.UbahData1Click(Sender: TObject);
begin
  if dm.qry1.RecordCount=0 then
    begin
      ShowMessage('Data Tidak Ada');
    end
  else
    begin
      GroupBox2.Enabled:=True;
      GroupBox2.Caption:='Ubah Data Jasa';
      Button2.Caption:='Ubah';
      edtId.Enabled:=False;
      edtId.Text:=dm.qry1['id_produk'];
      edtNama.Text:=dm.qry1['nama'];
      edtDeskripsi.Text:=dm.qry1['deskripsi'];
      edtHarga.Text:=dm.qry1['harga'];
      edtNama.SetFocus;
    end;
end;

procedure TfrmDataProduk.Refresh2Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmDataProduk.edtHargaKeyPress(Sender: TObject; var Key: Char);
begin
if NOT(key in['0'..'9', #8, #13]) then
  key := #0;
end;

procedure TfrmDataProduk.Button3Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmDataProduk.Button2Click(Sender: TObject);
begin
  if (edtId.Text='') or (edtNama.Text='') or (edtDeskripsi.Text='') or (edtHarga.Text='') then
    begin
      ShowMessage('Silahkan isi data yang masih kosong');
    end
  else
    begin
    if (Button2.Caption='Simpan') then
    begin
      with dm.qry2 do
      begin
        Close;
        SQL.Text:='SELECT id_produk FROM produk '+
                  'WHERE id_produk = '+QuotedStr(edtId.Text)+'';
        Open;
        if edtId.Text=FieldByName('id_produk').AsString then
          begin
            ShowMessage('ID Jasa Telah Digunakan');
            edtId.Text:='';
            edtId.SetFocus;
          end
        else
          begin
            if(Application.MessageBox('Simpan Data?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
              begin
                try dm.con1.BeginTrans;
                  InputData;
                  dm.con1.CommitTrans;
                  FormShow(Sender);
                  ShowMessage('Data Tersimpan');
                except dm.con1.RollbackTrans;
                  FormShow(Sender);
                  ShowMessage('Gagal Tersimpan');
                end;
              end
            else
              begin

              end;
            end;
            end;
          end
          else if (Button2.Caption='Ubah') then
          begin
            if(Application.MessageBox('Ubah Data?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
              begin
                try dm.con1.BeginTrans;
                  UbahData;
                  dm.con1.CommitTrans;
                  FormShow(Sender);
                  ShowMessage('Data Tersimpan');
                except dm.con1.RollbackTrans;
                  FormShow(Sender);
                  ShowMessage('Gagal Tersimpan');
                end;
              end
            else
              begin

              end;
          end
          else
          begin
            FormShow(Sender);
          end;
    end;
end;

procedure TfrmDataProduk.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#39 then
  Key:=#0;

if Key=#27 then
  Close;
end;

procedure TfrmDataProduk.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataProduk.ComboBox1Change(Sender: TObject);
begin
TampilDataCustom;
end;

procedure TfrmDataProduk.edtIdKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['a'..'z','A'..'Z','0'..'9',#8,#13,#32]) then
  begin
    key:=#0;
  end;
end;

procedure TfrmDataProduk.edtNamaKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['a'..'z','A'..'Z','0'..'9',#8,#13,#32]) then
  begin
    key:=#0;
  end;
end;

procedure TfrmDataProduk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//MainForm.Enabled:=True;
end;

procedure TfrmDataProduk.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then
  Close;
end;

end.
