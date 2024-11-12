import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:podcastindex_dart/src/entity/feed.dart';

part '../generated/podcast_feed_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PodcastFeedsResponse {
  final List<Feed> feeds;
  final int count;
  final String query;
  final String description;

  PodcastFeedsResponse({
    required this.feeds,
    required this.count,
    required this.query,
    required this.description,
  });

  PodcastFeedsResponse copyWith({
    List<Feed>? feeds,
    int? count,
    String? query,
    String? description,
  }) {
    return PodcastFeedsResponse(
      feeds: feeds ?? this.feeds,
      count: count ?? this.count,
      query: query ?? this.query,
      description: description ?? this.description,
    );
  }

  factory PodcastFeedsResponse.fromJson(Map<String, dynamic> json) =>
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

    return other is PodcastFeedsResponse &&
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
