import 'package:podcastindex_dart/src/service/podcast_service.dart';

void main() async {
  PodcastService podcastService = PodcastService();
  var response = await podcastService.findByTerm("indagini", max: 5);
  print(response.feeds[0].title);
}
