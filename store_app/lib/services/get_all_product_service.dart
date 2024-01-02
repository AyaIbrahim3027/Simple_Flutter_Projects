import 'package:store_app/helper/api.dart';
import '../models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}

// import 'dart:convert';
//
// import 'package:http/http.dart';
// import 'package:store_app/helper/api.dart';
//
// import '../models/product_model.dart';
// // import 'package:http/http.dart' as http;
//
// class AllProductsService {
//
//   Future<List<ProductModel>> getAllProducts() async {
//
//     List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');
//     List<ProductModel> productsList = [];
//     for (int i = 0; i < data.length; i++) {
//       productsList.add(
//         ProductModel.fromJson(data[i]),
//       );
//     }
//     return productsList;
//
//     // http.Response response =
//     //     await http.get(Uri.parse('https://fakestoreapi.com/products'));
//
//     // response.statusCode;
//
//       // List<dynamic> data = jsonDecode(response.body);
//
//
//   }
// }
