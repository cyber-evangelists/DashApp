class Categories {
  final String ctImgLink;
  final String ctText;

  Categories({required this.ctImgLink, required this.ctText});

  static Categories fromJson(Map json) => Categories(
        ctImgLink: json['ctImgLink'],
        ctText: json['ctText'],
      );
}
