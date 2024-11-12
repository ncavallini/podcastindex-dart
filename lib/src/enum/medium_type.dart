enum MediumType {
  podcast,
  music,
  video,
  film,
  audiobook,
  newsletter,
  blog,
  publisher,
  course;

  const MediumType();

  @override
  String toString() {
    return name;
  }
}
