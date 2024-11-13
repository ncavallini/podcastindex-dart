import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:podcastindex_dart/src/service/auth.dart';

/// A utility class for making HTTP requests to the Podcast Index API. Handles authentication and error handling.
class HttpUtil {
  /// The base URL for the Podcast Index API.
  static const String baseUrl = "https://api.podcastindex.org/api/1.0";

  /// The [Auth] object used for authenticating requests.
  static Auth auth = Auth();

  /// Converts a map of query parameters to a query string.
  static toQueryString(Map<String, dynamic> queryParameters) => queryParameters
      .entries
      .where((element) => element.value != null)
      .map((e) =>
          "${Uri.encodeComponent(e.key.toString())}=${Uri.encodeComponent(e.value.toString())}")
      .join("&");

  /// Makes a GET request to the Podcast Index API at the specified [endpoint].
  static Future<Response> get(String endpoint) async {
    var res = await http.get(Uri.parse(baseUrl + endpoint),
        headers: auth.getHeaders());
    return res;
  }

  /// Handles every type of API error by throwing an exception. The error response from the API is enclosed in the exception message.
  static void handleApiError(Response response) {
    if (response.statusCode != HttpStatus.ok) {
      throw Exception(
          "[HTTP ${response.statusCode}] An API error has occured.\n${response.body}");
    }
  }
}
