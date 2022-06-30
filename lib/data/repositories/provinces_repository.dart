import 'dart:convert';
import 'dart:io';
import 'package:dijipol/data/models/provinces.dart';
import 'package:http/http.dart' as http;

class ProvincesRepository {
  Future<List<Provinces>> provinces() async {
    final body =
        'AccessToken=9A2754A2886AF16C2849582998F19EB5DB84E22DEC2161A8679A5CF2928G43DE';
    print(body);
    final response = await http.post(
        Uri.parse("https://appfck.acente365.com/api/dask/iller"),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: body);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final List rslt = json.decode(response.body) as List;
      return rslt.map((e) => Provinces.fromMap(e)).toList();
    } else {
      final rslt = json.decode(response.body);
      throw HttpException(rslt['Message'] ?? response.reasonPhrase);
    }
  }
}
