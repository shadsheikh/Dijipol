import 'dart:convert';

class BuildingNumber{
  final String Code;
  final String Description;
  BuildingNumber({
    required this.Code,
    required this.Description,
  });

  BuildingNumber copyWith({
    String? Code,
    String? Description,
  }) {
    return BuildingNumber(
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

  factory BuildingNumber.fromMap(Map<String, dynamic> map) {
    return BuildingNumber(
      Code: map['Code'].toString(),
      Description: map['Description'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BuildingNumber.fromJson(String source) =>
      BuildingNumber.fromMap(json.decode(source));

  @override
  String toString() =>
      'BuildingNumber(Code: $Code, Description: $Description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BuildingNumber &&
        other.Code == Code &&
        other.Description == Description;
  }

  @override
  int get hashCode =>
      Code.hashCode ^ Description.hashCode;
}