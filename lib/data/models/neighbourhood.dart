import 'dart:convert';

class Neighbourhood{
  final String Code;
  final String Description;
  Neighbourhood({
    required this.Code,
    required this.Description,
  });

  Neighbourhood copyWith({
    String? Code,
    String? Description,
  }) {
    return Neighbourhood(
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

  factory Neighbourhood.fromMap(Map<String, dynamic> map) {
    return Neighbourhood(
      Code: map['Code'].toString(),
      Description: map['Description'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Neighbourhood.fromJson(String source) =>
      Neighbourhood.fromMap(json.decode(source));

  @override
  String toString() =>
      'Neighbourhood(Code: $Code, Description: $Description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Neighbourhood &&
        other.Code == Code &&
        other.Description == Description;
  }

  @override
  int get hashCode =>
      Code.hashCode ^ Description.hashCode;
}