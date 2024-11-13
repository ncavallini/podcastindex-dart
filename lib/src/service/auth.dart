import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dotenv/dotenv.dart';
import 'package:podcastindex_dart/src/util/constants.dart';

class Auth {
  var env = DotEnv();

  /// API Key provided by Podcast Index
  late final String _apiKey;

  /// API Secret provided by Podcast Index
  late final String _apiSecret;

  Auth() {
    env.load();
    _apiKey = env['PODCASTINDEX_API_KEY']!;
    _apiSecret = env['PODCASTINDEX_API_SECRET']!;
  }

  /// Implements the authorization header computing algorithm for the Podcast Index API
  ///
  ///  As pseudo code: `sha1(apiKey + apiSecret + unixTimeInSeconds)`
  ///
  /// The [unixTime] is the UNIX time the algorithm should use in the computation. Most of the time, it is [DateTime.now().millisecondsSinceEpoch / 1000.round().toString()]
  String computeAuthorizationHeader(String unixTime) =>
      sha1.convert(utf8.encode("$_apiKey$_apiSecret$unixTime")).toString();

  /// Returns the headers required for the Podcast Index API, possibly with a [customUserAgent].
  /// If not provided, a default user agent [Constants.defaultUserAgent] is used.
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
