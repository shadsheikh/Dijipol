import 'dart:convert';

class Avenuestreet{
  final String Code;
  final String Description;
  Avenuestreet({
    required this.Code,
    required this.Description,
  });

  Avenuestreet copyWith({
    String? Code,
    String? Description,
  }) {
    return Avenuestreet(
      Code: Code ?? this.Code,
      Description: Description ?? this.Description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Code': Code,
      'Description': Description,
    };
  }

  factory Avenuestreet.fromMap(Map<String, dynamic> map) {
    return Avenuestreet(
      Code: map['Code'].toString(),
      Description: map['Description'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Avenuestreet.fromJson(String source) =>
      Avenuestreet.fromMap(json.decode(source));

  @override
  String toString() =>
      'Avenuestreet(Code: $Code, Description: $Description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Avenuestreet &&
        other.Code == Code &&
        other.Description == Description;
  }

  @override
  int get hashCode =>
      Code.hashCode ^ Description.hashCode;
}