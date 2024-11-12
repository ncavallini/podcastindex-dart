import 'dart:convert';

import 'package:podcastindex_dart/src/entity/episode.dart';
import 'package:podcastindex_dart/src/util/http_util.dart';

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
    if (response.statusCode != 200) {
      throw Exception("An API error has occured.\n${response.body}");
    }
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
      "since": ((since?.millisecondsSinceEpoch ?? 0) ~/ 1000).toString(),
      "max": max,
      "enclosure": enclosure,
      "fulltext": fulltext,
    };
    String queryString = HttpUtil.toQueryString(queryParameters);
    return HttpUtil.get("/episodes/byfeedid?$queryString").then((response) {
      if (response.statusCode != 200) {
        throw Exception("An API error has occured.\n${response.body}");
      }
      return List.from(
          jsonDecode(response.body)['items'].map((e) => Episode.fromJson(e)));
    });
  }
}
