enum ImageSize {
  small(128),
  normal(256),
  medium(384),
  large(512),
  extraLarge(1024);

  final int value;

  const ImageSize(this.value);
}
