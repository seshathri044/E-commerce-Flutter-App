// lib/domain/entities/product.dart

class Product {
  final String id;
  final String title;
  final String description;
  final String imgurl;
  final String price;
  final String category;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imgurl,
    required this.price,
    this.category = 'General',
    this.rating = 4.5,
  });
}