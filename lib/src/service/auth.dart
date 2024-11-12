import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dotenv/dotenv.dart';
import 'package:podcastindex_dart/src/util/constants.dart';

class Auth {
  var env = DotEnv();
  late final String _apiKey;
  late final String _apiSecret;

  Auth() {
    env.load();
    _apiKey = env['PODCASTINDEX_API_KEY']!;
    _apiSecret = env['PODCASTINDEX_API_SECRET']!;
  }

  String computeAuthorizationHeader(String unixTime) =>
      sha1.convert(utf8.encode("$_apiKey$_apiSecret$unixTime")).toString();

  Map<String, String> getHeaders([String? customUserAgent]) {
    String unixTime =
        (DateTime.now().millisecondsSinceEpoch / 1000).round().toString();
    return {
      "X-Auth-Date":
          (DateTime.now().millisecondsSinceEpoch / 1000).round().toString(),
      "X-Auth-Key": _apiKey,
      "Authorization": computeAuthorizationHeader(unixTime),
      "User-Agent": customUserAgent ?? Constants.defaultUserAgent
    };
  }
}
