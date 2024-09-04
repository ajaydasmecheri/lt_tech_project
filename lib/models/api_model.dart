class ProductData {
  final int id;
  final String title;
  final String description;
  final double price;
  final double rating;
  final String image;
  final String review;
  final String category;

  ProductData({
    required this.id,
    required this.rating,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.review,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
      rating: json['rating'].toDouble(),
      review: json['review'],
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      image: json['image'],
      category: json['category'],
    );
  }
}
