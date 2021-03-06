unit uInputTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Menus;

type
  TfrmInputTransaksi = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNamaKonsumen: TEdit;
    edtEmailKonsumen: TEdit;
    edtTelpKonsumen: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dateFotoTransaksi: TDateTimePicker;
    edtDibayarTransaksi: TEdit;
    edtKekuranganTransaksi: TEdit;
    edtTotalItemTransaksi: TEdit;
    edtTotalHargaTransaksi: TEdit;
    edtNoteTransaksi: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cbbProdukDetail: TComboBox;
    edtJumlahDetail: TEdit;
    edtHargaDetail: TEdit;
    edtTotalDetail: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    StringGrid1: TStringGrid;
    Button2: TButton;
    UpDown1: TUpDown;
    Label19: TLabel;
    lblIDTransaksi: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    edtDiskonTransaksi: TEdit;
    CheckBox1: TCheckBox;
    dateSesiTransaksi: TDateTimePicker;
    Label24: TLabel;
    PopupMenu1: TPopupMenu;
    Reset1: TMenuItem;
    Label25: TLabel;
    edtMemberKonsumen: TEdit;
    CheckBox2: TCheckBox;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Label14: TLabel;
    Label26: TLabel;
    edtPelunasanTransaksi: TEdit;
    Label27: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    tmpProduk: TLabel;
    tmpPayment: TLabel;
    Label28: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtJumlahDetailKeyPress(Sender: TObject; var Key: Char);
    procedure edtTelpKonsumenKeyPress(Sender: TObject; var Key: Char);
    procedure cbbProdukDetailChange(Sender: TObject);
    procedure UpDown1ChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: Smallint; Direction: TUpDownDirection);
    procedure Button2Click(Sender: TObject);
    procedure cbbProdukDetailKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSesiTransaksiJamKeyPress(Sender: TObject; var Key: Char);
    procedure cbbStatusTransaksiKeyPress(Sender: TObject; var Key: Char);
    procedure dateFotoTransaksiKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSesiTransaksiMenitKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtDiskonTransaksiKeyPress(Sender: TObject; var Key: Char);
    procedure edtKekuranganTransaksiKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtTotalItemTransaksiKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtTotalHargaTransaksiKeyPress(Sender: TObject;
      var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure edtMemberKonsumenKeyPress(Sender: TObject; var Key: Char);
    procedure edtPelunasanTransaksiKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtDibayarTransaksiKeyPress(Sender: TObject; var Key: Char);
    procedure edtNamaKonsumenKeyPress(Sender: TObject; var Key: Char);
    procedure edtEmailKonsumenKeyPress(Sender: TObject; var Key: Char);
    procedure edtHargaDetailKeyPress(Sender: TObject; var Key: Char);
    procedure edtTotalDetailKeyPress(Sender: TObject; var Key: Char);
    procedure dateSesiTransaksiKeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clearForm;
    procedure createIDTransaksi;
    procedure InputDataKonsumen;
    procedure InputDataTransaksi;
    procedure InputDataDetailTransaksi;
    procedure UbahDataKonsumen;
    procedure UbahDataTransaksi;
    procedure UbahDatDetailTransaksi;
    procedure HapusDataDetailTransaksi;
    procedure SetPembayaran;

    procedure HitungTotalKekurangan;
  end;

var
  frmInputTransaksi: TfrmInputTransaksi;
  i:Integer=1;
  total:Integer=0;

implementation

uses uDM, DateUtils, uMainForm, uDataTransaksi;

{$R *.dfm}

procedure TfrmInputTransaksi.HitungTotalKekurangan;
begin
edtKekuranganTransaksi.Text:=
  IntToStr(
    (StrToInt(edtTotalHargaTransaksi.Text)-
    (
    (StrToInt(edtDiskonTransaksi.Text))+
    (StrToInt(edtDibayarTransaksi.Text))+
    (StrToInt(edtPelunasanTransaksi.Text))
    )
    ));

  if StrToInt(edtKekuranganTransaksi.Text)<0 then
    begin
      ShowMessage('Kekurangan tidak boleh kurang dari 0');
      edtDiskonTransaksi.Enabled:=False;
      CheckBox1.Checked:=False;
      edtDiskonTransaksi.Text:='0';
      //edtDibayarTransaksi.Text:='';
      edtPelunasanTransaksi.Text:='';
      edtKekuranganTransaksi.Text:='0';
      edtDibayarTransaksi.SetFocus;
    end
  else
    begin
      edtKekuranganTransaksi.Text:=
      IntToStr(
      (StrToInt(edtTotalHargaTransaksi.Text)-
      (
      (StrToInt(edtDiskonTransaksi.Text))+
      (StrToInt(edtDibayarTransaksi.Text))+
      (StrToInt(edtPelunasanTransaksi.Text))
      )
      ));
    end;
end;

procedure TfrmInputTransaksi.clearForm;
  var x,y:integer;
begin
UpDown1.Associate:=edtJumlahDetail;
Button1.Caption:='Simpan';

tmpProduk.Caption:='';
tmpPayment.Caption:='';

//konsumen
edtNamaKonsumen.Text:='';
edtEmailKonsumen.Text:='';
edtTelpKonsumen.Text:='';
edtMemberKonsumen.Enabled:=False;
edtMemberKonsumen.Text:='';
//transaksi
lblIDTransaksi.Caption:='lblIDTransaksi';
dateFotoTransaksi.MinDate:=Today;
dateSesiTransaksi.Time:=StrToTime('12:00');
edtDiskonTransaksi.Enabled:=False;
edtDiskonTransaksi.Text:='0';
edtDibayarTransaksi.Text:='';
edtPelunasanTransaksi.Text:='';
edtKekuranganTransaksi.Text:='';
edtTotalItemTransaksi.Text:='0';
edtTotalHargaTransaksi.Text:='0';
RadioButton1.Checked:=False; RadioButton2.Checked:=False;
edtNoteTransaksi.Text:='';
//detail_transaksi
cbbProdukDetail.Text:='Pilih Jasa';
edtJumlahDetail.Text:='1';
edtHargaDetail.Text:='0';
edtTotalDetail.Text:='0';

for x:=0 to StringGrid1.ColCount - 1 do
for y:=1 to StringGrid1.RowCount - 1 do
  begin
     StringGrid1.Cells[x,y]:='';
  end;
StringGrid1.RowCount:=2;
i:=1;

edtNamaKonsumen.SetFocus;
end;

procedure TfrmInputTransaksi.createIDTransaksi;
begin
with dm.qry2 do
  begin
    Close;
    SQL.Text:='sp_CreateID_1';
    Open;
    if (Fields[0].AsString='1') then
      begin
        Close;
        SQL.Text:='sp_CreateID_2';
        Open;
        lblIDTransaksi.Caption:=Fields[0].AsString;
      end
    else
      begin
        Close;
        SQL.Text:='sp_CreateID_3';
        Open;
        lblIDTransaksi.Caption:=Fields[0].AsString + '1';
      end;
  end;
end;

procedure TfrmInputTransaksi.InputDataKonsumen;
begin
  with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_insertKonsumen '+
                ''+QuotedStr(lblIDTransaksi.Caption)+','+
                ''+QuotedStr(edtNamaKonsumen.Text)+','+
                ''+QuotedStr(edtEmailKonsumen.Text)+','+
                ''+QuotedStr(edtTelpKonsumen.Text)+','+
                ''+QuotedStr(edtMemberKonsumen.Text)+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.InputDataTransaksi;
begin
  with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_insertTransaksi '+
                ''+QuotedStr(lblIDTransaksi.Caption)+','+
                ''+QuotedStr(lblIDTransaksi.Caption)+','+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dateFotoTransaksi.Date))+','+
                ''+QuotedStr(FormatDateTime('HH:mm',dateSesiTransaksi.Time))+','+
                '''BOOKING'','+
                ''+edtDiskonTransaksi.Text+','+edtDibayarTransaksi.Text+','+
                ''+edtPelunasanTransaksi.Text+','+
                ''+edtKekuranganTransaksi.Text+','+edtTotalItemTransaksi.Text+','+
                ''+edtTotalHargaTransaksi.Text+','+
                ''+QuotedStr(edtNoteTransaksi.Text)+','+
                ''+QuotedStr(MainForm.lblUsername.Caption)+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.InputDataDetailTransaksi;
var x:Integer;
begin
for x:=1 to StringGrid1.RowCount-2 do
  with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_insertDetailTransaksi '+
                ''+QuotedStr(lblIDTransaksi.Caption+'-'+StringGrid1.Cells[0,x])+','+
                ''+QuotedStr(lblIDTransaksi.Caption)+','+
                ''+QuotedStr(StringGrid1.Cells[1,x])+','+
                ''+QuotedStr(StringGrid1.Cells[2,x])+','+
                ''+QuotedStr(StringGrid1.Cells[3,x])+','+
                ''+QuotedStr(StringGrid1.Cells[4,x])+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.SetPembayaran;
begin
  with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_setPembayaran '+QuotedStr(lblIDTransaksi.Caption)+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.UbahDataKonsumen;
begin
  with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_updateKonsumen '+
                ''+QuotedStr(lblIDTransaksi.Caption)+','+
                ''+QuotedStr(edtNamaKonsumen.Text)+','+
                ''+QuotedStr(edtEmailKonsumen.Text)+','+
                ''+QuotedStr(edtTelpKonsumen.Text)+','+
                ''+QuotedStr(edtMemberKonsumen.Text)+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.UbahDataTransaksi;
begin
  with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_updateTransaksi '+
                ''+QuotedStr(lblIDTransaksi.Caption)+','+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dateFotoTransaksi.Date))+','+
                ''+QuotedStr(FormatDateTime('HH:mm',dateSesiTransaksi.Time))+','+
                ''+edtDiskonTransaksi.Text+','+edtDibayarTransaksi.Text+','+
                ''+edtPelunasanTransaksi.Text+','+
                ''+edtKekuranganTransaksi.Text+','+edtTotalItemTransaksi.Text+','+
                ''+edtTotalHargaTransaksi.Text+','+
                ''+QuotedStr(edtNoteTransaksi.Text)+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.UbahDatDetailTransaksi;
var x:Integer;
begin
for x:=1 to StringGrid1.RowCount-2 do
  with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_insertDetailTransaksi '+
                ''+QuotedStr(lblIDTransaksi.Caption+'-'+StringGrid1.Cells[0,x])+','+
                ''+QuotedStr(lblIDTransaksi.Caption)+','+
                ''+QuotedStr(StringGrid1.Cells[1,x])+','+
                ''+QuotedStr(StringGrid1.Cells[2,x])+','+
                ''+QuotedStr(StringGrid1.Cells[3,x])+','+
                ''+QuotedStr(StringGrid1.Cells[4,x])+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.HapusDataDetailTransaksi;
begin
  with dm.qry3 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_deleteDetailTransaksi '+QuotedStr(lblIDTransaksi.Caption)+'';
      ExecSQL;
    end;
end;

procedure TfrmInputTransaksi.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='No';
StringGrid1.Cells[1,0]:='Nama Jasa';
StringGrid1.Cells[2,0]:='Jumlah';
StringGrid1.Cells[3,0]:='Harga';
StringGrid1.Cells[4,0]:='Total';
end;

procedure TfrmInputTransaksi.FormShow(Sender: TObject);
begin
clearForm;
total:=0;
if lblIDTransaksi.Caption='lblIDTransaksi' then
begin
  createIDTransaksi;
end
else
begin
  //ShowMessage('Transaksi Edit');
end;

with dm.qry2 do
  begin
    Close;
    SQL.Text:='SELECT nama FROM produk ORDER by nama ASC';
    Open;
    cbbProdukDetail.Clear;
    cbbProdukDetail.Text:='Pilih Jasa';
    while not Eof do
      begin
        cbbProdukDetail.Items.Add(Fields[0].AsString);
        Next;
      end;
    Close;
  end;
end;

procedure TfrmInputTransaksi.edtJumlahDetailKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.edtTelpKonsumenKeyPress(Sender: TObject;
  var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.cbbProdukDetailChange(Sender: TObject);
begin
with dm.qry2 do
  begin
    Close;
    SQL.Text:='SELECT harga FROM produk WHERE nama = '+ QuotedStr(cbbProdukDetail.Text) +'';
    Open;
    edtHargaDetail.Clear;
    while not Eof do
      begin
        edtHargaDetail.Text:=Fields[0].AsString;
        Next;
      end;
    Close;
  end;
edtTotalDetail.Text:=IntToStr(StrToInt(edtJumlahDetail.Text) * StrToInt(edtHargaDetail.Text));
end;

procedure TfrmInputTransaksi.UpDown1ChangingEx(Sender: TObject;
  var AllowChange: Boolean; NewValue: Smallint;
  Direction: TUpDownDirection);
begin
edtJumlahDetail.Text:=IntToStr(NewValue);
edtTotalDetail.Text:=IntToStr(StrToInt(edtJumlahDetail.Text) * StrToInt(edtHargaDetail.Text));
end;

procedure TfrmInputTransaksi.Button2Click(Sender: TObject);
begin
if (edtHargaDetail.Text='0') OR (edtTotalDetail.Text='0') then
  begin
    ShowMessage('Silahkan Pilih Jasa');
    cbbProdukDetail.Text:='Pilih Jasa';
    edtJumlahDetail.Text:='1';
    edtHargaDetail.Text:='0';
    edtTotalDetail.Text:='0';
    cbbProdukDetail.SetFocus;
  end
else
  begin
    StringGrid1.Cells[0,i]:=IntToStr(i);
    StringGrid1.Cells[1,i]:=cbbProdukDetail.Text;
    StringGrid1.Cells[2,i]:=edtJumlahDetail.Text;
    StringGrid1.Cells[3,i]:=edtHargaDetail.Text;
    StringGrid1.Cells[4,i]:=edtTotalDetail.Text;
    StringGrid1.RowCount:=StringGrid1.RowCount+1;

    edtTotalItemTransaksi.Text:=IntToStr(i);
    total:=total+StrToInt(StringGrid1.Cells[4,i]);
    edtTotalHargaTransaksi.Text:=IntToStr(total);

    i:=i+1;

    cbbProdukDetail.Text:='Pilih Jasa';
    edtJumlahDetail.Text:='1';
    edtHargaDetail.Text:='0';
    edtTotalDetail.Text:='0';
    cbbProdukDetail.SetFocus;

    Label28.Caption:=IntToStr(StringGrid1.RowCount);
  end;


end;

procedure TfrmInputTransaksi.cbbProdukDetailKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.cbbSesiTransaksiJamKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.cbbStatusTransaksiKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.dateFotoTransaksiKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.cbbSesiTransaksiMenitKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.edtDiskonTransaksiKeyPress(Sender: TObject;
  var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.edtKekuranganTransaksiKeyPress(
  Sender: TObject; var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.edtTotalItemTransaksiKeyPress(Sender: TObject;
  var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.edtTotalHargaTransaksiKeyPress(
  Sender: TObject; var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
  begin
    edtDiskonTransaksi.Enabled:=True;
    edtDiskonTransaksi.Text:='';
    edtDiskonTransaksi.SetFocus;
  end
else
  begin
    edtDiskonTransaksi.Enabled:=False;
    edtDiskonTransaksi.Text:='0';
  end
end;

procedure TfrmInputTransaksi.Reset1Click(Sender: TObject);
  var x,y:Integer;
begin
for x:=0 to StringGrid1.ColCount - 1 do
for y:=1 to StringGrid1.RowCount - 1 do
  begin
     StringGrid1.Cells[x,y]:='';
  end;

StringGrid1.RowCount:=2;
total:=0;
i:=1;
edtKekuranganTransaksi.Text:='';
edtTotalItemTransaksi.Text:='0';
edtTotalHargaTransaksi.Text:='0';
end;

procedure TfrmInputTransaksi.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then
  begin
    edtMemberKonsumen.Enabled:=True;
    edtMemberKonsumen.Text:='';
    edtMemberKonsumen.SetFocus;
  end
else
  begin
    edtMemberKonsumen.Enabled:=False;
    edtMemberKonsumen.Text:='';
  end
end;

procedure TfrmInputTransaksi.Button3Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmInputTransaksi.Button1Click(Sender: TObject);
begin
Button4.Click;
if (edtNamaKonsumen.Text='') OR (edtEmailKonsumen.Text='') OR (edtTelpKonsumen.Text='') THEN
  begin
    ShowMessage('Silahkan Isi Data Konsumen');
  end
else
  begin
    if (edtDiskonTransaksi.Text='') OR (edtDibayarTransaksi.Text='') OR (edtKekuranganTransaksi.Text='') OR
        (edtTotalItemTransaksi.Text='') OR (edtTotalHargaTransaksi.Text='') THEN
      begin
        ShowMessage('Silahkan Isi Data Transaksi');
      end
    else
    begin
      if (Button1.Caption='Simpan') then
      begin
      if(Application.MessageBox('Simpan Data?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
          try dm.con1.BeginTrans;
            createIDTransaksi;
            InputDataKonsumen;
            InputDataTransaksi;
            InputDataDetailTransaksi;
            SetPembayaran;
            dm.con1.CommitTrans;
            FormShow(Sender);
            ShowMessage('Data Tersimpan');
            Close;
            frmDataTransaksi.FormShow(Sender);
          except dm.con1.RollbackTrans;
            FormShow(Sender);
            ShowMessage('Gagal Tersimpan');
            Close;
            frmDataTransaksi.FormShow(Sender);
          end;
        end
      else
        begin

        end;
      end

      else if (Button1.Caption='Ubah') then
      begin
      if(Application.MessageBox('Ubah Data?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
          try dm.con1.BeginTrans;
            UbahDataKonsumen;
            UbahDataTransaksi;
            HapusDataDetailTransaksi;
            //UbahDatDetailTransaksi;
            InputDataDetailTransaksi;
            SetPembayaran;
            dm.con1.CommitTrans;
            FormShow(Sender);
            ShowMessage('Data Tersimpan');
            FormStyle:=fsNormal;
            Close;
            frmDataTransaksi.FormShow(Sender);
          except dm.con1.RollbackTrans;
            FormShow(Sender);
            ShowMessage('Gagal Tersimpan');
            Close;
            frmDataTransaksi.FormShow(Sender);
          end;
        end

      else
        begin
          
        end;
      end
      else
      begin
      end;
    end;
  end;
end;

procedure TfrmInputTransaksi.Button4Click(Sender: TObject);
begin
if (edtDiskonTransaksi.Text='') AND (edtDibayarTransaksi.Text='') AND (edtPelunasanTransaksi.Text='') then
  begin
    edtDiskonTransaksi.Text:='0';
    edtDibayarTransaksi.Text:='0';
    edtPelunasanTransaksi.Text:='0';
    HitungTotalKekurangan;
  end
else if (edtDibayarTransaksi.Text='') AND (edtPelunasanTransaksi.Text='') then
  begin
    edtDibayarTransaksi.Text:='0';
    edtPelunasanTransaksi.Text:='0';
    HitungTotalKekurangan;
  end
else if (edtDiskonTransaksi.Text='') then
  begin
    edtDiskonTransaksi.Text:='0';
    HitungTotalKekurangan;
  end
else if (edtDibayarTransaksi.Text='') then
  begin
    edtDibayarTransaksi.Text:='0';
    HitungTotalKekurangan;
  end
else if (edtPelunasanTransaksi.Text='') then
  begin
    edtPelunasanTransaksi.Text:='0';
    HitungTotalKekurangan;
  end
else
  begin
    HitungTotalKekurangan;
  end;
end;

procedure TfrmInputTransaksi.RadioButton1Click(Sender: TObject);
begin
if RadioButton1.Checked then
  begin
    tmpPayment.Caption:='Cash';
  end;
edtNoteTransaksi.Text:=tmpProduk.Caption+' - '+tmpPayment.Caption;
end;

procedure TfrmInputTransaksi.RadioButton2Click(Sender: TObject);
begin
if RadioButton2.Checked then
  begin
    tmpPayment.Caption:='Transfer';
  end;
edtNoteTransaksi.Text:=tmpProduk.Caption+' - '+tmpPayment.Caption;
end;

procedure TfrmInputTransaksi.edtMemberKonsumenKeyPress(Sender: TObject;
  var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.edtPelunasanTransaksiKeyPress(Sender: TObject;
  var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.edtDibayarTransaksiKeyPress(Sender: TObject;
  var Key: Char);
begin
if NOT(key in['0'..'9', #8]) then
  key := #0;
end;

procedure TfrmInputTransaksi.edtNamaKonsumenKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['a'..'z','A'..'Z',#8,#13,#32]) then
 begin
 key:=#0;
 end;
end;

procedure TfrmInputTransaksi.edtEmailKonsumenKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in['a'..'z','A'..'Z','0'..'9',#8,#13,#32,#46,#64]) then
 begin
 key:=#0;
 end;
end;

procedure TfrmInputTransaksi.edtHargaDetailKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.edtTotalDetailKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmInputTransaksi.dateSesiTransaksiKeyPress(Sender: TObject;
  var Key: Char);
begin
if NOT(key in['0'..'9', #8, #13]) then
  key := #0;
end;

procedure TfrmInputTransaksi.StringGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

end.

