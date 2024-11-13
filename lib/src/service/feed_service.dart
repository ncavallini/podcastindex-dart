import 'dart:convert';

import 'package:podcastindex_dart/src/entity/feed.dart';
import 'package:podcastindex_dart/src/enum/medium_type.dart';
import 'package:podcastindex_dart/src/enum/feed_value.dart';
import 'package:podcastindex_dart/src/util/http_util.dart';

/// Service to interact with the feeds part of the Podcast Index API
/// For the full list of endpoints & parameters, see the [API documentation](https://podcastindex-org.github.io/docs-api/#get-/)
class FeedService {
  Future<List<Feed>> findFeedsByTerm(String term,
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
    HttpUtil.handleApiError(response);
    return List<Feed>.from(
        jsonDecode(response.body)['feeds'].map((f) => Feed.fromJson(f)));
  }

  Future<List<Feed>> findFeedsByTitle(String title,
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
    HttpUtil.handleApiError(response);
    return List<Feed>.from(
        jsonDecode(response.body)['feeds'].map((f) => Feed.fromJson(f)));
  }

  Future<List<Feed>> findMusicFeedsByTerm(
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
    HttpUtil.handleApiError(response);
    return List<Feed>.from(
        jsonDecode(response.body)['feeds'].map((f) => Feed.fromJson(f)));
  }

  Future<Feed> findFeedById(int id) async {
    var response = await HttpUtil.get("/podcasts/byfeedid?id=$id");
    HttpUtil.handleApiError(response);
    return Feed.fromJson(jsonDecode(((response.body)))['feed']);
  }

  Future<Feed> findFeedByUrl(String url) async {
    var response = await HttpUtil.get("/podcasts/byfeedurl?url=$url");
    HttpUtil.handleApiError(response);
    return Feed.fromJson(jsonDecode(((response.body)))['feed']);
  }

  Future<Feed> findFeedByItunesId(int itunesId) async {
    var response = await HttpUtil.get("/podcasts/byitunesid?id=$itunesId");
    HttpUtil.handleApiError(response);
    return Feed.fromJson(jsonDecode(((response.body)))['feed']);
  }

  Future<Feed> findFeedByPodcastGuid(String podcastGuid) async {
    var response = await HttpUtil.get("/podcasts/byguid?guid=$podcastGuid");
    HttpUtil.handleApiError(response);
    return Feed.fromJson(jsonDecode(((response.body)))['feed']);
  }

  Future<List<Feed>> findFeedByMedium(MediumType mediumType, {int? max}) async {
    Map<String, dynamic> queryParameters = {"medium": mediumType, "max": max};
    String queryString = HttpUtil.toQueryString(queryParameters);

    var response = await HttpUtil.get("/podcasts/bymedium?$queryString");

    HttpUtil.handleApiError(response);
    return List<Feed>.from(
        jsonDecode(response.body)['feeds'].map((f) => Feed.fromJson(f)));
  }
}
