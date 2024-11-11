import 'package:collection/collection.dart';

import 'package:podcastindex_dart/src/entity/transcript.dart';
import 'package:podcastindex_dart/src/enum/episode_type.dart';

class Episode {
  int id;
  String title;
  Uri link;
  String description;
  String guid;
  int datePublished;
  int dateCrawled;
  Uri enclosureUrl;
  String enclosureType;
  int enclosureLength;
  int? duration;
  final int _explicit;
  int? episode;
  EpisodeType? episodeType;
  int? season;
  Uri image;
  int? feedItunesId;
  Uri feedImage;
  int feedId;
  Uri feedUrl;
  String feedAuthor;
  String feedTitle;
  String feedLanguage;
  Uri? chaptersUrl;
  Uri? transcriptUrl;
  List<Transcript>? transcripts;
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
    required int explicit,
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
  }) : _explicit = explicit;

  bool get isExplicit => _explicit != 0;

  @override
  String toString() {
    return 'PodcastItem(id: $id, title: $title, link: $link, description: $description, guid: $guid, datePublished: $datePublished, dateCrawled: $dateCrawled, enclosureUrl: $enclosureUrl, enclosureType: $enclosureType, enclosureLength: $enclosureLength, duration: $duration, _explicit: $_explicit, episode: $episode, episodeType: $episodeType, season: $season, image: $image, feedItunesId: $feedItunesId, feedImage: $feedImage, feedId: $feedId, feedUrl: $feedUrl, feedAuthor: $feedAuthor, feedTitle: $feedTitle, feedLanguage: $feedLanguage, chaptersUrl: $chaptersUrl, transcriptUrl: $transcriptUrl, transcripts: $transcripts)';
  }

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
        other._explicit == _explicit &&
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
        _explicit.hashCode ^
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
}
