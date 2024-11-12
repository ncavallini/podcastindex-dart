import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:podcastindex_dart/src/enum/medium_type.dart';
part '../generated/feed.g.dart';

@JsonSerializable(explicitToJson: true)
class Feed {
  final int id;
  final String podcastGuid;
  final String title;
  final Uri url;
  final Uri originalUrl;
  final Uri link;
  final String description;
  final String author;
  final String ownerName;
  final Uri image;
  final Uri artwork;
  final int lastUpdateTime;
  final int lastCrawlTime;
  final int lastParseTime;
  final int lastGoodHttpStatusTime;
  final int lastHttpStatus;
  final String contentType;
  final int? itunesId;
  final String generator;
  final String language;
  final bool explicit;
  final int type;
  final MediumType medium;
  final int dead;
  final int episodeCount;
  final int crawlErrors;
  final int parseErrors;
  final Map<int, String>? categories;
  final int locked;
  final int imageUrlHash;
  final int? newestItemPubdate;

  Feed({
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
    this.newestItemPubdate,
  });

  @override
  String toString() {
    return 'PodcastFeed(id: $id, podcastGuid: $podcastGuid, title: $title, url: $url, originalUrl: $originalUrl, link: $link, description: $description, author: $author, ownerName: $ownerName, image: $image, artwork: $artwork, lastUpdateTime: $lastUpdateTime, lastCrawlTime: $lastCrawlTime, lastParseTime: $lastParseTime, lastGoodHttpStatusTime: $lastGoodHttpStatusTime, lastHttpStatus: $lastHttpStatus, contentType: $contentType, itunesId: $itunesId, generator: $generator, language: $language, explicit: $explicit, type: $type, medium: $medium, dead: $dead, episodeCount: $episodeCount, crawlErrors: $crawlErrors, parseErrors: $parseErrors, categories: $categories, locked: $locked, imageUrlHash: $imageUrlHash, newestItemPubdate: $newestItemPubdate)';
  }

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);

  Map<String, dynamic> toJson() => _$FeedToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is Feed &&
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
