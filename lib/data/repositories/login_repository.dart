import 'package:dijipol/data/models/login.dart';
import 'package:http/http.dart' as http;

class LoginRepository {
  final baseUrl = "https://bnapi.acente365.com/api";

  Future login(Login login) async {
    try {
      var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
      var request = http.Request(
          'POST', Uri.parse('https://bnapi.acente365.com/api/login'));
      request.bodyFields = {
        'AccessToken':
            '9A2754A2886AF16C2849582998F19EB5DB84E22DEC2161A8679A5CF2928G43DE',
        'Source': 'dijipol',
        'Username': login.username,
        'Password': login.password,
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
