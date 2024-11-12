enum TranscriptType {
  json("application/json"),
  applicationSrt("application/srt"),
  html("text/html"),
  plain("text/plain"),
  textSrt("text/srt"),
  vtt("text/vtt");

  const TranscriptType(this.mimeType);
  final String mimeType;
}
