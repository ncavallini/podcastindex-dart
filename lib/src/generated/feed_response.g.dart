// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../response/feeds_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedsResponse _$PodcastResponseFromJson(Map<String, dynamic> json) =>
    FeedsResponse(
      feeds: (json['feeds'] as List<dynamic>)
          .map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      query: json['query'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PodcastResponseToJson(FeedsResponse instance) =>
    <String, dynamic>{
      'feeds': instance.feeds.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'query': instance.query,
      'description': instance.description,
    };
