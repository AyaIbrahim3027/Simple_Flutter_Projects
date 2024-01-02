import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}

// import 'dart:convert';
//
// import 'package:store_app/models/product_model.dart';
//
// import '../helper/api.dart';
// // import 'package:http/http.dart' as http;
//
// class CategoriesService{
//   Future<List<ProductModel>> getCategories({required String categoryName}) async{
//
//     List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
//     List<ProductModel> productsList = [];
//     for (int i = 0; i < data.length; i++) {
//       productsList.add(
//         ProductModel.fromJson(data[i]),
//       );
//     }
//     return productsList;
//
//     // http.Response response =
//     // await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
//
//     // if (response.statusCode == 200) {
//     //   List<dynamic> data = jsonDecode(response.body);
//
//
//     // } else{
//     //   throw Exception('there is a problem with status code ${response.statusCode}');
//     // }
//   }
// }
