import 'dart:convert';

import 'package:podcastindex_dart/src/entity/episode.dart';
import 'package:podcastindex_dart/src/util/http_util.dart';
import 'package:podcastindex_dart/src/util/utils.dart';

class EpisodeService {
  Future<List<Episode>> findEpisodesByPerson(String person,
      {int? max, bool? fulltext, bool? pretty}) async {
    Map<String, dynamic> queryParameters = {
      "q": person,
      "max": max,
      "fulltext": fulltext,
      "pretty": pretty
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    var response = await HttpUtil.get("/search/byperson?$queryString");
    HttpUtil.handleApiError(response);
    return List.from(
        jsonDecode(response.body)['items'].map((e) => Episode.fromJson(e)));
  }

  Future<List<Episode>> findEpisodesByFeedId(
    int feedId, {
    DateTime? since,
    int? max,
    String? enclosure,
    bool? fulltext,
  }) {
    Map<String, dynamic> queryParameters = {
      "id": feedId,
      "since": Utils.dateTimeToSeconds.toString(),
      "max": max,
      "enclosure": enclosure,
      "fulltext": fulltext,
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    return HttpUtil.get("/episodes/byfeedid?$queryString").then((response) {
      HttpUtil.handleApiError(response);
      return List.from(
          jsonDecode(response.body)['items'].map((e) => Episode.fromJson(e)));
    });
  }

  Future<List<Episode>> findEpisodesByFeedUrl(
    String feedUrl, {
    DateTime? since,
    int? max,
    bool? fulltext,
  }) {
    Map<String, dynamic> queryParameters = {
      "url": feedUrl,
      "since": Utils.dateTimeToSeconds.toString(),
      "max": max,
      "fulltext": fulltext,
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    return HttpUtil.get("/episodes/byfeedurl?$queryString").then((response) {
      HttpUtil.handleApiError(response);
      return List.from(
          jsonDecode(response.body)['items'].map((e) => Episode.fromJson(e)));
    });
  }

  Future<List<Episode>> findEpisodesByPodcastGuid(
    String podcastGuid, {
    DateTime? since,
    int? max,
    bool? fulltext,
  }) {
    Map<String, dynamic> queryParameters = {
      "guid": podcastGuid,
      "since": Utils.dateTimeToSeconds.toString(),
      "max": max,
      "fulltext": fulltext,
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    return HttpUtil.get("/episodes/bypodcastguid?$queryString")
        .then((response) {
      HttpUtil.handleApiError(response);
      return List.from(
          jsonDecode(response.body)['items'].map((e) => Episode.fromJson(e)));
    });
  }

  Future<Episode> findEpisodeById(
    int episodeId, {
    bool? fulltext,
  }) {
    Map<String, dynamic> queryParameters = {
      "id": episodeId,
      "fulltext": fulltext,
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    return HttpUtil.get("/episodes/byid?$queryString").then((response) {
      HttpUtil.handleApiError(response);
      return Episode.fromJson(jsonDecode(response.body)['episode']);
    });
  }

  Future<Episode> findEpisodeByGuid(
    String episodeGuid,
    String podcastGuid, {
    String? feedUrl,
    int? feedId,
    bool? fulltext,
  }) {
    Map<String, dynamic> queryParameters = {
      "guid": episodeGuid,
      "url": feedUrl,
      "id": feedId,
      "podcastguid": podcastGuid,
      "fulltext": fulltext,
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    print(queryString);
    return HttpUtil.get("/episodes/byguid?$queryString").then((response) {
      HttpUtil.handleApiError(response);
      return Episode.fromJson(jsonDecode(response.body)['episode']);
    });
  }

  Future<List<Episode>> findLiveEpisodes(int max) {
    return HttpUtil.get("/episodes/live?max=$max").then((response) {
      HttpUtil.handleApiError(response);
      return List.from(
          jsonDecode(response.body)['items'].map((e) => Episode.fromJson(e)));
    });
  }
}
