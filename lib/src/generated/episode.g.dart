// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../entity/episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Episode _$EpisodeFromJson(Map<String, dynamic> json) => Episode(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      link: Uri.parse(json['link'] as String),
      description: json['description'] as String,
      guid: json['guid'] as String,
      datePublished: (json['datePublished'] as num).toInt(),
      dateCrawled: (json['dateCrawled'] as num).toInt(),
      enclosureUrl: Uri.parse(json['enclosureUrl'] as String),
      enclosureType: json['enclosureType'] as String,
      enclosureLength: (json['enclosureLength'] as num).toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      explicit: (json['explicit'] as num).toInt(),
      episode: (json['episode'] as num?)?.toInt(),
      episodeType:
          $enumDecodeNullable(_$EpisodeTypeEnumMap, json['episodeType']),
      season: (json['season'] as num?)?.toInt(),
      image: Uri.parse(json['image'] as String),
      feedItunesId: (json['feedItunesId'] as num?)?.toInt(),
      feedImage: Uri.parse(json['feedImage'] as String),
      feedId: (json['feedId'] as num).toInt(),
      feedUrl: Uri.parse(json['feedUrl'] as String),
      feedAuthor: json['feedAuthor'] as String,
      feedTitle: json['feedTitle'] as String,
      feedLanguage: json['feedLanguage'] as String,
      chaptersUrl: json['chaptersUrl'] == null
          ? null
          : Uri.parse(json['chaptersUrl'] as String),
      transcriptUrl: json['transcriptUrl'] == null
          ? null
          : Uri.parse(json['transcriptUrl'] as String),
      transcripts: (json['transcripts'] as List<dynamic>?)
          ?.map((e) => Transcript.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodeToJson(Episode instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link.toString(),
      'description': instance.description,
      'guid': instance.guid,
      'datePublished': instance.datePublished,
      'dateCrawled': instance.dateCrawled,
      'enclosureUrl': instance.enclosureUrl.toString(),
      'enclosureType': instance.enclosureType,
      'enclosureLength': instance.enclosureLength,
      'duration': instance.duration,
      'explicit': instance.explicit,
      'episode': instance.episode,
      'episodeType': _$EpisodeTypeEnumMap[instance.episodeType],
      'season': instance.season,
      'image': instance.image.toString(),
      'feedItunesId': instance.feedItunesId,
      'feedImage': instance.feedImage.toString(),
      'feedId': instance.feedId,
      'feedUrl': instance.feedUrl.toString(),
      'feedAuthor': instance.feedAuthor,
      'feedTitle': instance.feedTitle,
      'feedLanguage': instance.feedLanguage,
      'chaptersUrl': instance.chaptersUrl?.toString(),
      'transcriptUrl': instance.transcriptUrl?.toString(),
      'transcripts': instance.transcripts?.map((e) => e.toJson()).toList(),
    };

const _$EpisodeTypeEnumMap = {
  EpisodeType.full: 'full',
  EpisodeType.trailer: 'trailer',
  EpisodeType.bonus: 'bonus',
};
