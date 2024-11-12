import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:podcastindex_dart/src/entity/transcript.dart';
import 'package:podcastindex_dart/src/enum/episode_type.dart';

part '../generated/episode.g.dart';

@JsonSerializable(explicitToJson: true)
class Episode {
  final int id;
  final String title;
  final Uri link;
  final String description;
  final String guid;
  final int datePublished;
  final int dateCrawled;
  final Uri enclosureUrl;
  final String enclosureType;
  final int enclosureLength;
  final int? duration;
  final int explicit;
  final int? episode;
  final EpisodeType? episodeType;
  final int? season;
  final Uri image;
  final int? feedItunesId;
  final Uri feedImage;
  final int feedId;
  final Uri feedUrl;
  final String feedAuthor;
  final String feedTitle;
  final String feedLanguage;
  final Uri? chaptersUrl;
  final Uri? transcriptUrl;
  final List<Transcript>? transcripts;

  Episode({
    required this.id,
    required this.title,
    required this.link,
    required this.description,
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
    required this.feedUrl,
    required this.feedAuthor,
    required this.feedTitle,
    required this.feedLanguage,
    this.chaptersUrl,
    this.transcriptUrl,
    this.transcripts,
  });

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
