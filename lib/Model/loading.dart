// To parse this JSON data, do
//
//     final aya = ayaFromJson(jsonString);

import 'dart:convert';

Aya ayaFromJson(String str) => Aya.fromJson(json.decode(str));

String ayaToJson(Aya data) => json.encode(data.toJson());

class Aya {
  int id;
  int jozz;
  int suraNo;
  String suraNameEn;
  String suraNameAr;
  int page;
  int lineStart;
  int lineEnd;
  int ayaNo;
  String ayaText;
  String ayaTextEmlaey;

  Aya({
    required this.id,
    required this.jozz,
    required this.suraNo,
    required this.suraNameEn,
    required this.suraNameAr,
    required this.page,
    required this.lineStart,
    required this.lineEnd,
    required this.ayaNo,
    required this.ayaText,
    required this.ayaTextEmlaey,
  });

  factory Aya.fromJson(Map<String, dynamic> json) => Aya(
        id: json["id"],
        jozz: json["jozz"],
        suraNo: json["sura_no"],
        suraNameEn: json["sura_name_en"],
        suraNameAr: json["sura_name_ar"],
        page: json["page"],
        lineStart: json["line_start"],
        lineEnd: json["line_end"],
        ayaNo: json["aya_no"],
        ayaText: json["aya_text"],
        ayaTextEmlaey: json["aya_text_emlaey"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "jozz": jozz,
        "sura_no": suraNo,
        "sura_name_en": suraNameEn,
        "sura_name_ar": suraNameAr,
        "page": page,
        "line_start": lineStart,
        "line_end": lineEnd,
        "aya_no": ayaNo,
        "aya_text": ayaText,
        "aya_text_emlaey": ayaTextEmlaey,
      };
}
