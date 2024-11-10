import 'package:http/http.dart' as http;
import 'package:podcastindex_dart/src/service/auth.dart';

class HttpUtil {
  static const String baseUrl = "https://api.podcastindex.org/api/1.0";
  static Auth auth = Auth();

  static toQueryString(Map<String, dynamic> queryParameters) =>
      queryParameters.entries
          .where((element) => element.value != null)
          .map((e) => "${e.key}=${e.value}")
          .join("&");

  static Future<http.Response> get(String endpoint) async {
    var res = await http.get(Uri.parse(baseUrl + endpoint),
        headers: auth.getHeaders());
    return res;
  }
}
