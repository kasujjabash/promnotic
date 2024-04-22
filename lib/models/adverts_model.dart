class Adverts {
  final String title;
  final String description;
  final String imagePath;
  // final String rating;

  Adverts(
      {required this.title,
      required this.description,
      // required this.rating,
      required this.imagePath});
}

//adverts categories
enum AdCategory {
  cellular,
  electronics,
  cars,
  retail,
  food,
  fashion,
  home,
  services,
  manfaturing,
  health,
  property
}
