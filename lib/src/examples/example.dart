import 'package:podcastindex_dart/src/entity/episode.dart';
import 'package:podcastindex_dart/src/service/episode_service.dart';
import 'package:podcastindex_dart/src/service/feed_service.dart';

void main() async {
// ignore: unused_local_variable
  var feedService = FeedService();
  var episodeService = EpisodeService();

  int episodeId = 16795089; // found with some other calls.
  Episode episode = await episodeService.findEpisodeById(episodeId);
  String playbackUrl = episode.enclosureUrl.toString();

  print("Playback: $playbackUrl");
  // Playback: https://dts.podtrac.com/redirect.mp3/www.theincomparable.com/podcast/batmanuniversity301.mp3

  // audioplayer.play(playbackUrl); // Dumb code, to get the idea!
}
