import 'package:json_annotation/json_annotation.dart';
import 'package:podcastindex_dart/src/entity/episode.dart';

part '../generated/podcast_episodes_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PodcastEpisodesResponse {
  final bool status;
  final List<Episode> items;
  final int count;
  final String query;
  final String description;

  const PodcastEpisodesResponse({
    required this.status,
    required this.items,
    required this.count,
    required this.query,
    required this.description,
  });

  factory PodcastEpisodesResponse.fromJson(Map<String, dynamic> json) =>
      _$PodcastEpisodesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PodcastEpisodesResponseToJson(this);
}
