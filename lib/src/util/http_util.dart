import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:podcastindex_dart/src/service/auth.dart';

class HttpUtil {
  static const String baseUrl = "https://api.podcastindex.org/api/1.0";
  static Auth auth = Auth();

  static toQueryString(Map<String, dynamic> queryParameters) => queryParameters
      .entries
      .where((element) => element.value != null)
      .map((e) =>
          "${Uri.encodeComponent(e.key.toString())}=${Uri.encodeComponent(e.value.toString())}")
      .join("&");

  static Future<Response> get(String endpoint) async {
    var res = await http.get(Uri.parse(baseUrl + endpoint),
        headers: auth.getHeaders());
    return res;
  }

  static void handleApiError(Response response) {
    if (response.statusCode != HttpStatus.ok) {
      throw Exception(
          "[HTTP ${response.statusCode}] An API error has occured.\n${response.body}");
    }
  }
}
