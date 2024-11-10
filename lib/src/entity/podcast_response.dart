import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:podcastindex_dart/src/entity/podcast_feed.dart';

part 'podcast_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PodcastResponse {
  List<PodcastFeed> feeds;
  int count;
  String query;
  String description;

  PodcastResponse({
    required this.feeds,
    required this.count,
    required this.query,
    required this.description,
  });

  PodcastResponse copyWith({
    List<PodcastFeed>? feeds,
    int? count,
    String? query,
    String? description,
  }) {
    return PodcastResponse(
      feeds: feeds ?? this.feeds,
      count: count ?? this.count,
      query: query ?? this.query,
      description: description ?? this.description,
    );
  }

  factory PodcastResponse.fromJson(Map<String, dynamic> json) =>
      _$PodcastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PodcastResponseToJson(this);

  @override
  String toString() {
    return 'PodcastResponse(feeds: $feeds, count: $count, query: $query, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PodcastResponse &&
        listEquals(other.feeds, feeds) &&
        other.count == count &&
        other.query == query &&
        other.description == description;
  }

  @override
  int get hashCode {
    return feeds.hashCode ^
        count.hashCode ^
        query.hashCode ^
        description.hashCode;
  }
}
