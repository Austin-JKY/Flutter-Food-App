class Categoary {
  String cateName;
  String imagePath;
  int items;
  Categoary(
      {required this.cateName, required this.imagePath, required this.items});

  factory Categoary.fromJson(dynamic data) {
    return Categoary(
        cateName: data["cateName"],
        imagePath: data["imagePath"],
        items: data["items"]);
  }
}
