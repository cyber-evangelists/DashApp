class Restaurant {
  final String resturantName;
  final String bg;
  final bool isClosed;
  final String resturantType;
  final String ratingImage;
  final String rating;
  final String time;

  Restaurant(
      {required this.resturantName,
      required this.bg,
      required this.isClosed,
      required this.resturantType,
      required this.ratingImage,
      required this.rating,
      required this.time});

  Map<String, dynamic> toJson() => {
        'resturantName': resturantName,
        'bg': bg,
        'isClosed': isClosed,
        'resturantType': resturantType,
        'ratingImage': ratingImage,
        'rating': rating,
        'time': time,
      };

  static Restaurant fromJson(Map json) => Restaurant(
      resturantName: json['resturantName'],
      bg: json['bg'],
      isClosed: json['isClosed'],
      resturantType: json['resturantType'],
      ratingImage: json['ratingImage'],
      rating: json['rating'],
      time: json['time']);
}
