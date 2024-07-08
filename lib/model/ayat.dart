// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Ayat {
  int nomorAyat;
  String teksArab;
  String teksLatin;
  String teksIndonesia;
  Map<String, dynamic> audio;

  Ayat({
    required this.nomorAyat,
    required this.teksArab,
    required this.teksLatin,
    required this.teksIndonesia,
    required this.audio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nomorAyat': nomorAyat,
      'teksArab': teksArab,
      'teksLatin': teksLatin,
      'teksIndonesia': teksIndonesia,
      'audio': audio,
    };
  }

  factory Ayat.fromMap(Map<String, dynamic> map) {
    return Ayat(
      nomorAyat: map['nomorAyat'] as int,
      teksArab: map['teksArab'] as String,
      teksLatin: map['teksLatin'] as String,
      teksIndonesia: map['teksIndonesia'] as String,
      audio: map['audio'] as Map<String, dynamic>,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ayat.fromJson(String source) =>
      Ayat.fromMap(json.decode(source) as Map<String, dynamic>);
}
