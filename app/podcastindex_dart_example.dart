import 'package:podcastindex_dart/src/service/episode_service.dart';

void main() async {
  EpisodeService episodeService = EpisodeService();
  var episodes = await episodeService.findEpisodesByFeedId(75075, max: 2);
  print(episodes.map((e) => e.title));
}
