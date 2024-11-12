import 'package:json_annotation/json_annotation.dart';

enum TranscriptType {
  @JsonValue("application/json")
  json("application/json"),

  @JsonValue("application/srt")
  applicationSrt("application/srt"),

  @JsonValue("text/html")
  html("text/html"),

  @JsonValue("text/plain")
  plain("text/plain"),

  @JsonValue("text/srt")
  textSrt("text/srt"),

  @JsonValue("text/vtt")
  vtt("text/vtt");

  const TranscriptType(this.mimeType);
  final String mimeType;
}
