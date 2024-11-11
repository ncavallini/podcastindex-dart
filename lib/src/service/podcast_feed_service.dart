import 'dart:convert';

import 'package:podcastindex_dart/src/response/podcast_feeds_response.dart';
import 'package:podcastindex_dart/src/enum/feed_value.dart';
import 'package:podcastindex_dart/src/util/http_util.dart';

class PodcastFeedService {
  Future<PodcastFeedsResponse> findFeedsByTerm(String term,
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
    if (response.statusCode != 200) {
      throw Exception("An API error has occured.\n${response.body}");
    }
    return PodcastFeedsResponse.fromJson(jsonDecode(response.body));
  }

  Future<PodcastFeedsResponse> findFeedsByTitle(String title,
      {FeedValue? value,
      int? max,
      bool? aponly,
      bool? clean,
      bool? similar,
      bool? fulltext,
      bool? pretty}) async {
    Map<String, dynamic> queryParameters = {
      "q": title,
      "value": value,
      "max": max,
      "aponly": aponly,
      "clean": clean,
      "similar": similar,
      "fulltext": fulltext,
      "pretty": pretty
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    var response = await HttpUtil.get("/search/bytitle?$queryString");
    if (response.statusCode != 200) {
      throw Exception("An API error has occured.\n${response.body}");
    }
    return PodcastFeedsResponse.fromJson(jsonDecode(response.body));
  }
}
