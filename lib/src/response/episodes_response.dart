import 'package:json_annotation/json_annotation.dart';
import 'package:podcastindex_dart/src/entity/episode.dart';

part '../generated/episodes_response.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodesResponse {
  final String status;
  final List<Episode> items;
  final int count;
  final String query;
  final String description;

  const EpisodesResponse({
    required this.status,
    required this.items,
    required this.count,
    required this.query,
    required this.description,
  });

  factory EpisodesResponse.fromJson(Map<String, dynamic> json) =>
      _$PodcastEpisodesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PodcastEpisodesResponseToJson(this);
}
