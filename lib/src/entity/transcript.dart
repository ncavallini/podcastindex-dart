import 'package:json_annotation/json_annotation.dart';
import 'package:podcastindex_dart/src/enum/transcript_type.dart';

part '../generated/transcript.g.dart';

@JsonSerializable(explicitToJson: true)

/// A data class to represent a transcript of an episode.
class Transcript {
  /// The URL of the transcript.
  final Uri url;

  /// The type of the transcript (as MIME type).
  final TranscriptType type;

  const Transcript({
    required this.url,
    required this.type,
  });

  factory Transcript.fromJson(Map<String, dynamic> json) =>
      _$TranscriptFromJson(json);

  Map<String, dynamic> toJson() => _$TranscriptToJson(this);
}
