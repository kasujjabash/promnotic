class Advert {
  final String title;
  final String description;
  final String imagePath;
  final double quantity;
  final String price;
  


  // final String rating;

  Advert(
      {required this.title,
      required this.description,
      required this.quantity,
      required this.imagePath,
      required this.price
      });
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
