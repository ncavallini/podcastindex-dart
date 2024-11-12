// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../response/podcast_episodes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastEpisodesResponse _$PodcastEpisodesResponseFromJson(
        Map<String, dynamic> json) =>
    PodcastEpisodesResponse(
      status: json['status'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      query: json['query'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PodcastEpisodesResponseToJson(
        PodcastEpisodesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'query': instance.query,
      'description': instance.description,
    };
