import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:podcastindex_dart/src/enum/feed_type.dart';

import 'package:podcastindex_dart/src/enum/medium_type.dart';
part '../generated/feed.g.dart';

@JsonSerializable(explicitToJson: true)

/// A data class to represent a feed, i.e., a podcast (in its totality)
class Feed {
  /// The Podcastindex internal ID of the feed
  final int id;

  /// The GUID (global unique identifier) of the feed
  final String podcastGuid;

  /// The title of the feed
  final String title;

  /// The URL of the feed
  final Uri url;

  /// The URL of the feed before it changed to the current value ([url])
  final Uri originalUrl;

  /// The channel-level link of the feed
  final Uri link;

  /// The description of the feed
  final String description;

  /// The author of the feed
  final String author;

  /// The owner name of the feed
  final String ownerName;

  /// The URL of the feed's image
  final Uri image;

  /// The URL of the feed's artwork
  final Uri artwork;

  /// The last time the feed was updated (seconds since epoch)
  final int lastUpdateTime;

  /// The last time the feed was crawled by PodcastIndex (seconds since epoch)
  final int lastCrawlTime;

  /// The last time the feed was parsed by PodcastIndex (seconds since epoch)
  final int lastParseTime;

  /// The last time the feed had a good HTTP status (seconds since epoch)
  final int lastGoodHttpStatusTime;

  /// The last HTTP status of the feed
  final int lastHttpStatus;

  /// The content type of the feed (MIME type)
  final String contentType;

  /// The iTunes ID of the feed, if available
  final int? itunesId;

  /// The channel-level generator element of the feed, if available
  final String generator;

  /// The language of the feed (e.g., "en")
  final String language;

  /// Whether the feed is explicit
  final bool explicit;

  /// The type of the feed (0 = RSS, 1 = ATOM). We recommend using [feedType] instead
  final int type;

  /// The medium type of the feed
  final MediumType? medium;

  /// Whether the feed is dead (1) or not (0). We recommend using [isDead] instead
  final int dead;

  /// The number of episodes in the feed
  final int episodeCount;

  /// The number of crawl errors of the feed
  final int crawlErrors;

  /// The number of parse errors of the feed
  final int parseErrors;

  /// The categories of the feed (key = category ID, value = category name)
  final Map<int, String>? categories;

  /// Whether the feed is locked (1) or not (0). We recommend using [isLocked] instead
  final int locked;

  /// The hash of the feed's image URL
  final int? imageUrlHash;

  /// The publication date of the newest item in the feed
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

  /// Returns the feed type as a [FeedType] enum
  FeedType get feedType => type == 0 ? FeedType.rss : FeedType.atom;

  /// Returns whether the feed is locked
  bool get isLocked => locked == 1;

  /// Returns whether the feed is dead
  bool get isDead => dead == 1;

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
