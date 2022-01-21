class Kategori {
  Kategori({
    this.id,
    this.title,
    this.image,
  });

  int id;
  String title;
  String image;

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
      };
}
