import 'dart:convert';

import 'package:quran_app/model/ayat.dart';

class DetailSurah {
  int nomor;
  String nama;
  String namaLatin;
  int jumlahAyat;
  String tempatTurun;
  String arti;
  String deskripsi;
  Map<String, dynamic> audioFull;
  List<Ayat> ayat;

  DetailSurah({
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.deskripsi,
    required this.audioFull,
    required this.ayat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nomor': nomor,
      'nama': nama,
      'namaLatin': namaLatin,
      'jumlahAyat': jumlahAyat,
      'tempatTurun': tempatTurun,
      'arti': arti,
      'deskripsi': deskripsi,
      'audioFull': audioFull,
      'ayat': ayat.map((x) => x.toMap()).toList(),
    };
  }

  factory DetailSurah.fromMap(Map<String, dynamic> map) {
    return DetailSurah(
      nomor: map['nomor'] as int,
      nama: map['nama'] as String,
      namaLatin: map['namaLatin'] as String,
      jumlahAyat: map['jumlahAyat'] as int,
      tempatTurun: map['tempatTurun'] as String,
      arti: map['arti'] as String,
      deskripsi: map['deskripsi'] as String,
      audioFull: map['audioFull'] as Map<String, dynamic>,
      ayat: List<Ayat>.from(
        (map['ayat'] as List<dynamic>).map<Ayat>(
          (x) => Ayat.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailSurah.fromJson(String source) =>
      DetailSurah.fromMap(json.decode(source) as Map<String, dynamic>);
}
