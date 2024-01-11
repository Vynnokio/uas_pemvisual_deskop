program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uMain, uMasuk, uTBarang, uUBarang, uDBarang, uTransaksi,
  uTTransaksi, uTambahDetailTransaksi, uReport, uDataKategoriBarang,
uTKategori, uUKategori
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TTfrmMain, TfrmMain);
  Application.CreateForm(TTfrmTransaksi, TfrmTransaksi);
  Application.CreateForm(TTfrmTambahDetailTransaksi, TfrmTambahDetailTransaksi);
  Application.CreateForm(TTfrmReport, TfrmReport);
  Application.CreateForm(TTfrmDataKategoriBarang, TfrmDataKategoriBarang);
  Application.CreateForm(TTfrmLogin, TfrmLogin);
  Application.CreateForm(TTfrmDataBarang, TfrmDataBarang);
  Application.CreateForm(TTfrmTambahBarang, TfrmTambahBarang);
  Application.CreateForm(TTfrmTambahKategori, TfrmTambahKategori);
  Application.CreateForm(TTfrmTambahTransaksi, TfrmTambahTransaksi);
  Application.CreateForm(TTfrmUpdateBarang, TfrmUpdateBarang);
  Application.CreateForm(TTfrmUpdateKategori, TfrmUpdateKategori);
  Application.Run;
end.

