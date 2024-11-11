// import 'package:podcastindex_dart/src/entity/podcast_episodes_response.dart';
// import 'package:podcastindex_dart/util/http_util.dart';

class PodcastEpisodeService {
  /* Future<PodcastEpisodesResponse> findEpisodesByPerson(String person,
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
    return PodcastEpisodesResponse.fromJson(jsonDecode(response.body));
  } */
}
