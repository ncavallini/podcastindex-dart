import 'dart:convert';

import 'package:podcastindex_dart/src/entity/feed.dart';
import 'package:podcastindex_dart/src/response/feeds_response.dart';
import 'package:podcastindex_dart/src/enum/feed_value.dart';
import 'package:podcastindex_dart/src/util/http_util.dart';

class FeedService {
  Future<FeedsResponse> findFeedsByTerm(String term,
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
    return FeedsResponse.fromJson(jsonDecode(response.body));
  }

  Future<FeedsResponse> findFeedsByTitle(String title,
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
    return FeedsResponse.fromJson(jsonDecode(response.body));
  }

  Future<FeedsResponse> findMusicFeedsByTerm(
    String term, {
    FeedValue? value,
    int? max,
    bool? aponly,
    bool? clean,
    bool? similar,
    bool? fulltext,
    bool? pretty,
  }) async {
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
    var response = await HttpUtil.get("/search/music/byterm?$queryString");
    if (response.statusCode != 200) {
      throw Exception("An API error has occured.\n${response.body}");
    }
    return FeedsResponse.fromJson(jsonDecode(response.body));
  }

  Future<Feed> findFeedById(int id) async {
    var response = await HttpUtil.get("/podcasts/byfeedid?id=$id");
    if (response.statusCode != 200) {
      throw Exception("An API error has occured.\n${response.body}");
    }
    return Feed.fromJson(jsonDecode(((response.body)))['feed']);
  }

  Future<Feed> findFeedByUrl(String url) async {
    var response = await HttpUtil.get("/podcasts/byfeedurl?url=$url");
    if (response.statusCode != 200) {
      throw Exception("An API error has occured.\n${response.body}");
    }
    return Feed.fromJson(jsonDecode(((response.body)))['feed']);
  }
}
