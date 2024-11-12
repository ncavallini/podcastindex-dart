// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../entity/feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      id: (json['id'] as num).toInt(),
      podcastGuid: json['podcastGuid'] as String,
      title: json['title'] as String,
      url: Uri.parse(json['url'] as String),
      originalUrl: Uri.parse(json['originalUrl'] as String),
      link: Uri.parse(json['link'] as String),
      description: json['description'] as String,
      author: json['author'] as String,
      ownerName: json['ownerName'] as String,
      image: Uri.parse(json['image'] as String),
      artwork: Uri.parse(json['artwork'] as String),
      lastUpdateTime: (json['lastUpdateTime'] as num).toInt(),
      lastCrawlTime: (json['lastCrawlTime'] as num).toInt(),
      lastParseTime: (json['lastParseTime'] as num).toInt(),
      lastGoodHttpStatusTime: (json['lastGoodHttpStatusTime'] as num).toInt(),
      lastHttpStatus: (json['lastHttpStatus'] as num).toInt(),
      contentType: json['contentType'] as String,
      itunesId: (json['itunesId'] as num?)?.toInt(),
      generator: json['generator'] as String,
      language: json['language'] as String,
      explicit: (json['explicit'] is int)
          ? json['explicit'] != 0
          : json['explicit'] as bool,
      type: (json['type'] as num).toInt(),
      medium: $enumDecodeNullable(_$MediumTypeEnumMap, json['medium']),
      dead: (json['dead'] as num).toInt(),
      episodeCount: (json['episodeCount'] as num).toInt(),
      crawlErrors: (json['crawlErrors'] as num).toInt(),
      parseErrors: (json['parseErrors'] as num).toInt(),
      categories: (json['categories'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
      locked: (json['locked'] as num).toInt(),
      imageUrlHash: (json['imageUrlHash'] as num?)?.toInt(),
      newestItemPubdate: (json['newestItemPubdate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'id': instance.id,
      'podcastGuid': instance.podcastGuid,
      'title': instance.title,
      'url': instance.url.toString(),
      'originalUrl': instance.originalUrl.toString(),
      'link': instance.link.toString(),
      'description': instance.description,
      'author': instance.author,
      'ownerName': instance.ownerName,
      'image': instance.image.toString(),
      'artwork': instance.artwork.toString(),
      'lastUpdateTime': instance.lastUpdateTime,
      'lastCrawlTime': instance.lastCrawlTime,
      'lastParseTime': instance.lastParseTime,
      'lastGoodHttpStatusTime': instance.lastGoodHttpStatusTime,
      'lastHttpStatus': instance.lastHttpStatus,
      'contentType': instance.contentType,
      'itunesId': instance.itunesId,
      'generator': instance.generator,
      'language': instance.language,
      'explicit': instance.explicit,
      'type': instance.type,
      'medium': _$MediumTypeEnumMap[instance.medium],
      'dead': instance.dead,
      'episodeCount': instance.episodeCount,
      'crawlErrors': instance.crawlErrors,
      'parseErrors': instance.parseErrors,
      'categories':
          instance.categories?.map((k, e) => MapEntry(k.toString(), e)),
      'locked': instance.locked,
      'imageUrlHash': instance.imageUrlHash,
      'newestItemPubdate': instance.newestItemPubdate,
    };

const _$MediumTypeEnumMap = {
  MediumType.podcast: 'podcast',
  MediumType.music: 'music',
  MediumType.video: 'video',
  MediumType.film: 'film',
  MediumType.audiobook: 'audiobook',
  MediumType.newsletter: 'newsletter',
  MediumType.blog: 'blog',
  MediumType.publisher: 'publisher',
  MediumType.course: 'course',
};
