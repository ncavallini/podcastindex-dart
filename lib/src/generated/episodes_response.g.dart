// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../response/episodes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesResponse _$PodcastEpisodesResponseFromJson(Map<String, dynamic> json) =>
    EpisodesResponse(
      status: json['status'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      query: json['query'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PodcastEpisodesResponseToJson(
        EpisodesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'query': instance.query,
      'description': instance.description,
    };
