import 'dart:convert';

class Provinces {
  final String CityCode;
  final String CityName;
  final String ID;
  Provinces({
    required this.CityCode,
    required this.CityName,
    required this.ID,
  });

  Provinces copyWith({
    String? CityCode,
    String? CityName,
    String? ID,
  }) {
    return Provinces(
      CityCode: CityCode ?? this.CityCode,
      CityName: CityName ?? this.CityName,
      ID: ID ?? this.ID,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'CityCode': CityCode,
      'CityName': CityName,
      'ID': ID,
    };
  }

  factory Provinces.fromMap(Map<String, dynamic> map) {
    return Provinces(
      CityCode: map['CityCode'],
      CityName: map['CityName'],
      ID: map['ID'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Provinces.fromJson(String source) =>
      Provinces.fromMap(json.decode(source));

  @override
  String toString() =>
      'Provinces(CityCode: $CityCode, CityName: $CityName, ID: $ID)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Provinces &&
        other.CityCode == CityCode &&
        other.CityName == CityName &&
        other.ID == ID;
  }

  @override
  int get hashCode => CityCode.hashCode ^ CityName.hashCode ^ ID.hashCode;
}