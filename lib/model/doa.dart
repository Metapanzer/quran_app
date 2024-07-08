// ignore_for_file: public_member_api_docs, sort_constructors_first

class Doa {
  int id;
  String judul;
  String latin;
  String arab;
  String terjemah;

  Doa({
    required this.id,
    required this.judul,
    required this.latin,
    required this.arab,
    required this.terjemah,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'judul': judul,
      'latin': latin,
      'arab': arab,
      'terjemah': terjemah,
    };
  }

  factory Doa.fromJson(Map<String, dynamic> json) {
    return Doa(
      id: json['id'] as int,
      judul: json['judul'] as String,
      latin: json['latin'] as String,
      arab: json['arab'] as String,
      terjemah: json['terjemah'] as String,
    );
  }
}
