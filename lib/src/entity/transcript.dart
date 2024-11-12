import 'package:json_annotation/json_annotation.dart';
import 'package:podcastindex_dart/src/enum/transcript_type.dart';

part '../generated/transcript.g.dart';

@JsonSerializable(explicitToJson: true)
class Transcript {
  final Uri url;
  final TranscriptType type;

  const Transcript({
    required this.url,
    required this.type,
  });

  factory Transcript.fromJson(Map<String, dynamic> json) =>
      _$TranscriptFromJson(json);

  Map<String, dynamic> toJson() => _$TranscriptToJson(this);
}
