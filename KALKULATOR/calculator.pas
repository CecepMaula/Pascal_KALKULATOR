program kalkulator;
{I.S.:User Memesukkan angka Yang Ingin Di Hitung}
{F.S.:Menampilkan Hasil Dari Dua Angka Yang Telah Di Hitung}
uses crt;
var
angka1, angka2 : real;
op  :char;

procedure Isi_Nilai (var angka1, angka2 : real; var op : char);
begin
  textbackground(green); textcolor(yellow); clrscr;
  gotoxy(48,3); writeln('OPERASI HITUNG KALKULATOR');
  gotoxy(43,4); writeln('==================================');
  gotoxy(43,6); write('MASUKKAN ANGKA PERTAMA  : '); readln(angka1);
  gotoxy(43,7); write('MASUKKAN ANGKA KEDUA    : '); readln(angka2);
  gotoxy(43,8); write('MASUKKAN OPERASI HITUNG : '); readln(op);
end;

function Hitung_angka (x,y : real; op: char) : real;
var
 hasil : real;
begin
  if(op ='+')
   then
     hasil := x+y
   else
    if(op ='-')
     then
      hasil := x-y
      else
        if(op ='*')
         then
           hasil := x*y
          else
          if(op ='/')
           then
            hasil := x/y;

  Hitung_angka := hasil;

end;

begin
 Isi_nilai(angka1,angka2,op);
 gotoxy(43,10); writeln('==================================');
 gotoxy(43,12); writeln('HASIL                   : ', Hitung_Angka(angka1,angka2,op):0:1);
 readln;
end.
