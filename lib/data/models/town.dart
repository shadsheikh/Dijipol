import 'dart:convert';

class Town{
  final String Code;
  final String Description;
  Town({
    required this.Code,
    required this.Description,
  });

  Town copyWith({
    String? Code,
    String? Description,
  }) {
    return Town(
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

  factory Town.fromMap(Map<String, dynamic> map) {
    return Town(
      Code: map['Code'].toString(),
      Description: map['Description'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Town.fromJson(String source) =>
      Town.fromMap(json.decode(source));

  @override
  String toString() =>
      'Town(Code: $Code, Description: $Description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Town &&
        other.Code == Code &&
        other.Description == Description;
  }

  @override
  int get hashCode =>
      Code.hashCode ^ Description.hashCode;
}