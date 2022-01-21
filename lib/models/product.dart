class DataProduct {
  int id;
  String title;
  String subTitle;
  String description;
  int price;
  int rating;
  int ratingCount;
  bool isFavorite;
  String image;
  List<String> sizeOptions;
  List<ProductOptions> peroductOptions;
  DataProduct(
      {this.id,
      this.title,
      this.subTitle,
      this.description,
      this.price,
      this.rating,
      this.ratingCount,
      this.isFavorite,
      this.image,
      this.sizeOptions,
      this.peroductOptions});

  factory DataProduct.fromJson(Map<String, dynamic> json) => DataProduct(
      id: json['id'],
      title: json['title'],
      subTitle: json['sub_title'],
      description: json['description'],
      price: json['price'],
      rating: json['rating'],
      ratingCount: json['rating_count'],
      isFavorite: json['is_favorite'],
      image: json['image'],
      peroductOptions: List<ProductOptions>.from(
          json['product_options'].map((x) => ProductOptions.fromJson(x))),
      sizeOptions: List<String>.from(json['size_options'].map((x) => x)));

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'sub_title': subTitle,
        'description': description,
        'price': price,
        'rating': rating,
        'rating_count': ratingCount,
        'is_favorite': isFavorite,
        'image': image,
        'produc'
            "size_options": List<dynamic>.from(sizeOptions.map((x) => x)),
      };
}

class ProductOptions {
  String color;
  String image;

  ProductOptions({this.color, this.image});

  factory ProductOptions.fromJson(Map<String, dynamic> json) =>
      ProductOptions(color: json['color'], image: json['image']);

  Map<String, dynamic> toJson() => {'color': color, 'image': image};
}
