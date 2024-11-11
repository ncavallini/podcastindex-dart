import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:podcastindex_dart/src/enum/medium_type.dart';
part '../generated/podcast_feed.g.dart';

@JsonSerializable(explicitToJson: true)
class PodcastFeed {
  int id;
  String podcastGuid;
  String title;
  Uri url;
  Uri originalUrl;
  Uri link;
  String description;
  String author;
  String ownerName;
  Uri image;
  Uri artwork;
  int lastUpdateTime;
  int lastCrawlTime;
  int lastParseTime;
  int lastGoodHttpStatusTime;
  int lastHttpStatus;
  String contentType;
  int? itunesId;
  String generator;
  String language;
  bool explicit;
  int type;
  MediumType medium;
  int dead;
  int episodeCount;
  int crawlErrors;
  int parseErrors;
  Map<int, String> categories;
  int locked;
  int imageUrlHash;
  int newestItemPubdate;
  PodcastFeed({
    required this.id,
    required this.podcastGuid,
    required this.title,
    required this.url,
    required this.originalUrl,
    required this.link,
    required this.description,
    required this.author,
    required this.ownerName,
    required this.image,
    required this.artwork,
    required this.lastUpdateTime,
    required this.lastCrawlTime,
    required this.lastParseTime,
    required this.lastGoodHttpStatusTime,
    required this.lastHttpStatus,
    required this.contentType,
    this.itunesId,
    required this.generator,
    required this.language,
    required this.explicit,
    required this.type,
    required this.medium,
    required this.dead,
    required this.episodeCount,
    required this.crawlErrors,
    required this.parseErrors,
    required this.categories,
    required this.locked,
    required this.imageUrlHash,
    required this.newestItemPubdate,
  });

  @override
  String toString() {
    return 'PodcastFeed(id: $id, podcastGuid: $podcastGuid, title: $title, url: $url, originalUrl: $originalUrl, link: $link, description: $description, author: $author, ownerName: $ownerName, image: $image, artwork: $artwork, lastUpdateTime: $lastUpdateTime, lastCrawlTime: $lastCrawlTime, lastParseTime: $lastParseTime, lastGoodHttpStatusTime: $lastGoodHttpStatusTime, lastHttpStatus: $lastHttpStatus, contentType: $contentType, itunesId: $itunesId, generator: $generator, language: $language, explicit: $explicit, type: $type, medium: $medium, dead: $dead, episodeCount: $episodeCount, crawlErrors: $crawlErrors, parseErrors: $parseErrors, categories: $categories, locked: $locked, imageUrlHash: $imageUrlHash, newestItemPubdate: $newestItemPubdate)';
  }

  factory PodcastFeed.fromJson(Map<String, dynamic> json) =>
      _$PodcastFeedFromJson(json);

  Map<String, dynamic> toJson() => _$PodcastFeedToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is PodcastFeed &&
        other.id == id &&
        other.podcastGuid == podcastGuid &&
        other.title == title &&
        other.url == url &&
        other.originalUrl == originalUrl &&
        other.link == link &&
        other.description == description &&
        other.author == author &&
        other.ownerName == ownerName &&
        other.image == image &&
        other.artwork == artwork &&
        other.lastUpdateTime == lastUpdateTime &&
        other.lastCrawlTime == lastCrawlTime &&
        other.lastParseTime == lastParseTime &&
        other.lastGoodHttpStatusTime == lastGoodHttpStatusTime &&
        other.lastHttpStatus == lastHttpStatus &&
        other.contentType == contentType &&
        other.itunesId == itunesId &&
        other.generator == generator &&
        other.language == language &&
        other.explicit == explicit &&
        other.type == type &&
        other.medium == medium &&
        other.dead == dead &&
        other.episodeCount == episodeCount &&
        other.crawlErrors == crawlErrors &&
        other.parseErrors == parseErrors &&
        mapEquals(other.categories, categories) &&
        other.locked == locked &&
        other.imageUrlHash == imageUrlHash &&
        other.newestItemPubdate == newestItemPubdate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        podcastGuid.hashCode ^
        title.hashCode ^
        url.hashCode ^
        originalUrl.hashCode ^
        link.hashCode ^
        description.hashCode ^
        author.hashCode ^
        ownerName.hashCode ^
        image.hashCode ^
        artwork.hashCode ^
        lastUpdateTime.hashCode ^
        lastCrawlTime.hashCode ^
        lastParseTime.hashCode ^
        lastGoodHttpStatusTime.hashCode ^
        lastHttpStatus.hashCode ^
        contentType.hashCode ^
        itunesId.hashCode ^
        generator.hashCode ^
        language.hashCode ^
        explicit.hashCode ^
        type.hashCode ^
        medium.hashCode ^
        dead.hashCode ^
        episodeCount.hashCode ^
        crawlErrors.hashCode ^
        parseErrors.hashCode ^
        categories.hashCode ^
        locked.hashCode ^
        imageUrlHash.hashCode ^
        newestItemPubdate.hashCode;
  }
}
