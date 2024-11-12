// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../entity/transcript.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transcript _$TranscriptFromJson(Map<String, dynamic> json) => Transcript(
      url: Uri.parse(json['url'] as String),
      type: $enumDecode(_$TranscriptTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$TranscriptToJson(Transcript instance) =>
    <String, dynamic>{
      'url': instance.url.toString(),
      'type': _$TranscriptTypeEnumMap[instance.type]!,
    };

const _$TranscriptTypeEnumMap = {
  TranscriptType.json: 'json',
  TranscriptType.applicationSrt: 'applicationSrt',
  TranscriptType.html: 'html',
  TranscriptType.plain: 'plain',
  TranscriptType.textSrt: 'textSrt',
  TranscriptType.vtt: 'vtt',
};
