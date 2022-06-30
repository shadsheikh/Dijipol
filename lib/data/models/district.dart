import 'dart:convert';

class District {
  final int CityCode;
  final String CountyCode;
  final String CountyName;
  District({
    required this.CityCode,
    required this.CountyCode,
    required this.CountyName,
  });

  District copyWith({
    int? CityCode,
    String? CountyCode,
    String? CountyName,
  }) {
    return District(
      CityCode: CityCode ?? this.CityCode,
      CountyCode: CountyCode ?? this.CountyCode,
      CountyName: CountyName ?? this.CountyName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'CityCode': CityCode,
      'CountyCode': CountyCode,
      'CountyName': CountyName,
    };
  }

  factory District.fromMap(Map<String, dynamic> map) {
    return District(
      CityCode: int.parse(map['CityCode'].toString()),
      CountyCode: map['CountyCode'].toString(),
      CountyName: map['CountyName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory District.fromJson(String source) =>
      District.fromMap(json.decode(source));

  @override
  String toString() =>
      'District(CityCode: $CityCode, CountyCode: $CountyCode, CountyName: $CountyName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is District &&
        other.CityCode == CityCode &&
        other.CountyCode == CountyCode &&
        other.CountyName == CountyName;
  }

  @override
  int get hashCode =>
      CityCode.hashCode ^ CountyCode.hashCode ^ CountyName.hashCode;
}