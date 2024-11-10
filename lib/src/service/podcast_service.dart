import 'dart:convert';

import 'package:podcastindex_dart/src/entity/podcast_response.dart';
import 'package:podcastindex_dart/src/enum/feed_value.dart';
import 'package:podcastindex_dart/util/http_util.dart';

class PodcastService {
  Future<PodcastResponse> findByTerm(String term,
      {FeedValue? value,
      int? max,
      bool? aponly,
      bool? clean,
      bool? similar,
      bool? fulltext,
      bool? pretty}) async {
    Map<String, dynamic> queryParameters = {
      "q": term,
      "value": value,
      "max": max,
      "aponly": aponly,
      "clean": clean,
      "similar": similar,
      "fulltext": fulltext,
      "pretty": pretty
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    var response = await HttpUtil.get("/search/byterm?$queryString");
    return PodcastResponse.fromJson(jsonDecode(response.body));
  }
}
