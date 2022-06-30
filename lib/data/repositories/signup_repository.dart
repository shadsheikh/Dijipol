import 'dart:convert';
import 'package:dijipol/data/models/signup.dart';
import 'package:http/http.dart' as http;

class SignupRepository {
  final baseUrl = "https://bnapi.acente365.com/api";

  Future signUp(Signup signup) async {
    try {
      var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
      var request = http.Request(
          'POST', Uri.parse('https://appfck.acente365.com/api/musteri/uyeol'));
      request.bodyFields = {
        'AccessToken':
            '9A2754A2886AF16C2849582998F19EB5DB84E22DEC2161A8679A5CF2928G43DE',
        'Source': 'dijipol',
        'Email': signup.eMail,
        'NationalNumber': signup.identityNumber,
        'Name': signup.name,
        'Password': signup.password,
        'Phone': signup.telephoneNumber,
        'Surname': signup.surname,
        'CurrentIPAddress': '127.0.0.1'
      };
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      print(response);
// if (response.statusCode == 200) {
      var rslt = await response.stream.bytesToString();
      print(rslt);
      return rslt;
//}
// else {
//   print(response.reasonPhrase);
// }

    } catch (e) {
      print(e);
      return [];
    }
  }
}
