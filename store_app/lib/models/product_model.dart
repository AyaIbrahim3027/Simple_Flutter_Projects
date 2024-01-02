class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel rating;
  final String category;

  ProductModel(
      {required this.rating,
      required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category});
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: RatingModel.fromJson(jsonData['rating']),
      category: jsonData['category'],
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        rate: (jsonData['rate'] is int)
            ? jsonData['rate'].toDouble()
            : jsonData['rate'],
        count: jsonData['count']);
  }
}

// class ProductModel {
//   final dynamic id;
//   final String title;
//   final double price;
//   final String description;
//   final String category;
//   final String image;
//   final RatingModel rating;
//
//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     required this.rating,
//   });
//
//   factory ProductModel.fromJson(jsonData) {
//     return ProductModel(
//       id: jsonData['id'],
//       title: jsonData['title'],
//       price: jsonData['price'],
//       description: jsonData['description'],
//       category: jsonData['category'],
//       image: jsonData['image'],
//       rating: RatingModel.fromJson(jsonData['rating']),
//     );
//   }
// }
//
// class RatingModel {
//   final double rate;
//   final int count;
//
//   RatingModel({required this.rate, required this.count});
//
//   factory RatingModel.fromJson(jsonData) {
//     return RatingModel(
//       rate: jsonData['rate'],
//       count: jsonData['count'],
//     );
//   }
// }
