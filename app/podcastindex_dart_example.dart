import 'package:podcastindex_dart/src/entity/episode.dart';
import 'package:podcastindex_dart/src/service/episode_service.dart';

void main() async {
  EpisodeService episodeService = EpisodeService();
  List<Episode> episodes = await episodeService.findLiveEpisodes(3);
  episodes.forEach((episode) {
    print(episode.title);
  });
}
