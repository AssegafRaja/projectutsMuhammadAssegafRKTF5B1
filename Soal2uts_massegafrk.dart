import 'dart:ffi';
import 'dart:io';

class Person {
  var _nama;
  var _nilaiuts;
  var _kelas;
  var _MataKuliah;

  String getnama() {
    return this._nama;
  }

  void setnama(String nama) {
    this._nama = nama;
  }

  String getnilaiuts() {
    return this._nilaiuts;
  }

  void setnilaiuts(String nilaiuts) {
    this._nilaiuts = nilaiuts;
  }

  String getkelas() {
    return this._kelas;
  }

  void setkelas(String kelas) {
    this._kelas = kelas;
  }

  String getMataKuliah() {
    return this._MataKuliah;
  }

  void setMataKuliah(String MataKuliah) {
    this._MataKuliah = MataKuliah;
  }
}

// fungsi main
main() {
  var assegaf = new Person();
  assegaf.setnama("Muhammad Assegaf Raja Kusumah");
  assegaf.setnilaiuts("100");
  assegaf.setkelas("TF5B1");
  assegaf.setMataKuliah("Pemograman Perangkat Bergerak (Mobile)");

  print("Nama: ${assegaf.getnama()}");
  print("Nilai UTS: ${assegaf.getnilaiuts()}");
  print("Kelas: ${assegaf.getkelas()}");
  print("Mata Kuliah : ${assegaf.getMataKuliah()}");

  stdout.write("Inputkan Nilai UTS : ");
  var NILAI = stdin.readLineSync();
  double nilai = double.parse('$NILAI');
  String grade;

  if (nilai >= 85)
    grade = "A";
  else if (nilai >= 75)
    grade = "B";
  else if (nilai >= 65)
    grade = "C";
  else if (nilai >= 50)
    grade = "D";
  else if (nilai < 50)
    grade = "E";
  else
    grade = "nilai yang di input salah";
  print("Grade: $grade");
}
