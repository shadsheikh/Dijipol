import 'dart:convert';
import 'dart:io';
import 'package:dijipol/data/models/district.dart';
import 'package:http/http.dart' as http;

class DistrictRepository{
Future<List<District>> districts({
    required String citycode,
  }) async {
    final body =
        'CityCode=$citycode&AccessToken=9A2754A2886AF16C2849582998F19EB5DB84E22DEC2161A8679A5CF2928G43DE&Source=dijipol';
    print(body);
    final response = await http.post(
        Uri.parse("https://appfck.acente365.com/api/dask/ilceler/"),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: body);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final rslt = json.decode(response.body) as List;
      return rslt.map((e) => District.fromMap(e)).toList();
    } else {
      final rslt = json.decode(response.body);
      throw HttpException(rslt['Message'] ?? response.reasonPhrase);
    }
  }
}