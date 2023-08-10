import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  Future<Map<String, dynamic>> fetchData(int page) async {
    http.Response response = await http.get(
      Uri.parse('http://api.alquran.cloud/v1/page/$page/quran-uthmani'),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return Future.error('error');
  }
}
