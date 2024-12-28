class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categorias = [
  Category(
      title: "Camisas",
      image: "ima/1.png"),
  Category(
      title: "Playeras",
      image: "ima/2.png"),
  Category(
      title: "Chanarras",
      image: "ima/3.png"),
  Category(
      title: "Sudaderas",
      image: "ima/4.png"),
  Category(
      title: "Accesorios",
      image: "ima/5.png"),
];