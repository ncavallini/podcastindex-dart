// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastResponse _$PodcastResponseFromJson(Map<String, dynamic> json) =>
    PodcastResponse(
      feeds: (json['feeds'] as List<dynamic>)
          .map((e) => PodcastFeed.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      query: json['query'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PodcastResponseToJson(PodcastResponse instance) =>
    <String, dynamic>{
      'feeds': instance.feeds.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'query': instance.query,
      'description': instance.description,
    };
