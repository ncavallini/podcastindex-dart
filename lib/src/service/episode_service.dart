import 'dart:convert';

import 'package:podcastindex_dart/src/response/episodes_response.dart';
import 'package:podcastindex_dart/src/util/http_util.dart';

class EpisodeService {
  Future<EpisodesResponse> findEpisodesByPerson(String person,
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
    return EpisodesResponse.fromJson(jsonDecode(response.body));
  }
}
