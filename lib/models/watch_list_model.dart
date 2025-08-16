class WatchListModel {
  final String title;
  final DateTime releaseDate;
  final String image;

  WatchListModel({
    required this.title,
    required this.releaseDate,
    required this.image,
  });

  WatchListModel copyWith({
    String? title,
    DateTime? releaseDate,
    String? image,
    bool? isBookmarked,
  }) {
    return WatchListModel(
      title: title ?? this.title,
      releaseDate: releaseDate ?? this.releaseDate,
      image: image ?? this.image,
    );
  }
}
