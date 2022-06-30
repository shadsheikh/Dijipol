class Signup {
  String name;
  String surname;
  String identityNumber;
  String eMail;
  String telephoneNumber;
  String password;

  Signup({
    required this.name,
    required this.surname,
    required this.identityNumber,
    required this.eMail,
    required this.telephoneNumber,
    required this.password,
  });


  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'identityNumber': identityNumber,
      'eMail': eMail,
      'telephoneNumber': telephoneNumber,
      'password': password,
    };
  }

  factory Signup.fromJson(Map<String, dynamic> map) {
    return Signup(
      name: map['name'],
      surname: map['surname'],
      identityNumber: map['identityNumber'],
      eMail: map['eMail'],
      telephoneNumber: map['telephoneNumber'],
      password: map['password'],
    );
  }

}
