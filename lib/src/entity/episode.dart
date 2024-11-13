import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:podcastindex_dart/src/entity/transcript.dart';
import 'package:podcastindex_dart/src/enum/episode_type.dart';

part '../generated/episode.g.dart';

@JsonSerializable(explicitToJson: true)

///
/// A data class to represent an episode of a feed.
class Episode {
  /// PodcastIndex internal ID
  final int id;

  /// The name of the feed
  final String title;

  /// The channel-level link of the feed.
  final Uri link;

  /// The description of the episode.
  final String? description;

  /// The GUID (unique identifier) of the episode.
  final String guid;

  /// The datetime the episode was published (seconds since epoch).
  final int datePublished;

  /// The datetime the episode was found in the feed (seconds since epoch).
  final int dateCrawled;

  /// The URL of the media file.
  final Uri enclosureUrl;

  /// The Content-Type of the media file specified by [enclosureUrl].
  final String enclosureType;

  /// The length of the media file specified by [enclosureUrl], in bytes.
  final int enclosureLength;

  /// The duration of the episode in seconds.
  final int? duration;

  /// Will be 1 if the episode is marked as explicit, 0 if not.
  final int explicit;

  /// The episode number, if available.
  final int? episode;

  /// The type of episode (full, trailer or bonus).
  final EpisodeType? episodeType;

  /// The season number, if available.
  final int? season;

  /// The URL of the episode image.
  final Uri image;

  /// The iTunes ID of the feed, if available.
  final int? feedItunesId;

  /// The URL of the feed image.
  final Uri feedImage;

  /// The PodcastIndex internal ID of the feed.
  final int feedId;

  /// The URL of the feed, if found.
  final Uri? feedUrl;

  /// The author of the feed, if available.
  final String? feedAuthor;

  /// The title of the feed, if available.
  final String? feedTitle;

  /// The language of the feed, if available, given as language code (e.g. "en"), if available
  final String? feedLanguage;

  /// Link to the JSON file containing the episode chapters, if available
  final Uri? chaptersUrl;

  /// Link to the file containing the episode transcript, if available
  final Uri? transcriptUrl;

  /// List of transcripts for the episode, if available
  final List<Transcript>? transcripts;

  Episode({
    required this.id,
    required this.title,
    required this.link,
    this.description,
    required this.guid,
    required this.datePublished,
    required this.dateCrawled,
    required this.enclosureUrl,
    required this.enclosureType,
    required this.enclosureLength,
    this.duration,
    required this.explicit,
    this.episode,
    this.episodeType,
    this.season,
    required this.image,
    this.feedItunesId,
    required this.feedImage,
    required this.feedId,
    this.feedUrl,
    this.feedAuthor,
    this.feedTitle,
    this.feedLanguage,
    this.chaptersUrl,
    this.transcriptUrl,
    this.transcripts,
  });

  /// Returns true if the episode is marked as explicit.
  bool get isExplicit => explicit != 0;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Episode &&
        other.id == id &&
        other.title == title &&
        other.link == link &&
        other.description == description &&
        other.guid == guid &&
        other.datePublished == datePublished &&
        other.dateCrawled == dateCrawled &&
        other.enclosureUrl == enclosureUrl &&
        other.enclosureType == enclosureType &&
        other.enclosureLength == enclosureLength &&
        other.duration == duration &&
        other.explicit == explicit &&
        other.episode == episode &&
        other.episodeType == episodeType &&
        other.season == season &&
        other.image == image &&
        other.feedItunesId == feedItunesId &&
        other.feedImage == feedImage &&
        other.feedId == feedId &&
        other.feedUrl == feedUrl &&
        other.feedAuthor == feedAuthor &&
        other.feedTitle == feedTitle &&
        other.feedLanguage == feedLanguage &&
        other.chaptersUrl == chaptersUrl &&
        other.transcriptUrl == transcriptUrl &&
        listEquals(other.transcripts, transcripts);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        link.hashCode ^
        description.hashCode ^
        guid.hashCode ^
        datePublished.hashCode ^
        dateCrawled.hashCode ^
        enclosureUrl.hashCode ^
        enclosureType.hashCode ^
        enclosureLength.hashCode ^
        duration.hashCode ^
        explicit.hashCode ^
        episode.hashCode ^
        episodeType.hashCode ^
        season.hashCode ^
        image.hashCode ^
        feedItunesId.hashCode ^
        feedImage.hashCode ^
        feedId.hashCode ^
        feedUrl.hashCode ^
        feedAuthor.hashCode ^
        feedTitle.hashCode ^
        feedLanguage.hashCode ^
        chaptersUrl.hashCode ^
        transcriptUrl.hashCode ^
        transcripts.hashCode;
  }

  @override
  String toString() {
    return 'Episode{id: $id, title: $title, link: $link, description: $description, guid: $guid, datePublished: $datePublished, dateCrawled: $dateCrawled, enclosureUrl: $enclosureUrl, enclosureType: $enclosureType, enclosureLength: $enclosureLength, duration: $duration, explicit: $explicit, episode: $episode, episodeType: $episodeType, season: $season, image: $image, feedItunesId: $feedItunesId, feedImage: $feedImage, feedId: $feedId, feedUrl: $feedUrl, feedAuthor: $feedAuthor, feedTitle: $feedTitle, feedLanguage: $feedLanguage, chaptersUrl: $chaptersUrl, transcriptUrl: $transcriptUrl, transcripts: $transcripts}';
  }

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}
