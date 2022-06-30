class Login {
  String username;
  String password;

  Login({
    required this.username,
    required this.password,
  });


  Map<String, dynamic> toJson() {
    return {
      'Username': username,
      'password': password,
    };
  }

  factory Login.fromJson(Map<String, dynamic> map) {
    return Login(
      username: map['Username'],
      password: map['password'],
    );
  }

}
