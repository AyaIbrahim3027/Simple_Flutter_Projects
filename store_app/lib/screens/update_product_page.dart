import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({Key? key}) : super(key: key);
  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'Description',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'Price',
                  inputType: TextInputType.number,
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // CustomTextField(
                //   onChanged: (data) {
                //     image = data;
                //   },
                //   hintText: 'Image',
                // ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                  buttonName: 'Update',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProduct().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price.toString() : price!,
      // image: image == null ? product.image : image!,
      category: product.category,
      description: desc == null ? product.description : desc!,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'package:store_app/models/product_model.dart';
// import 'package:store_app/services/update_product.dart';
// import 'package:store_app/widgets/custom_button.dart';
// import 'package:store_app/widgets/custom_text_field.dart';
//
// class UpdateProductPage extends StatefulWidget {
//   UpdateProductPage({Key? key}) : super(key: key);
//   static String id = 'update product';
//
//   @override
//   State<UpdateProductPage> createState() => _UpdateProductPageState();
// }
//
// class _UpdateProductPageState extends State<UpdateProductPage> {
//   String? productName, desc, image;
//
//   String? price;
//
//   bool isLoading = false;
//
//   @override
//   Widget build(BuildContext context) {
//     ProductModel product =
//         ModalRoute.of(context)!.settings.arguments as ProductModel;
//     return ModalProgressHUD(
//       inAsyncCall: isLoading,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Update Product',
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           centerTitle: true,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 100,
//                 ),
//                 CustomTextField(
//                   onChanged: (data) {
//                     productName = data;
//                   },
//                   hintText: 'Product Name',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 CustomTextField(
//                   onChanged: (data) {
//                     desc = data;
//                   },
//                   hintText: 'Description',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 CustomTextField(
//                   onChanged: (data) {
//                     price = data;
//                   },
//                   hintText: 'Price',
//                   inputType: TextInputType.number,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 CustomTextField(
//                   onChanged: (data) {
//                     image = data;
//                   },
//                   hintText: 'Image',
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 CustomButton(
//                   txtButton: 'Update',
//                   onTap: () async{
//                     isLoading = true;
//                     setState(() {});
//                     try {
//                      await updateProduct(product);
//                     } catch (e) {
//                       print(e.toString());
//
//                     }
//                     isLoading = false;
//                     setState(() {});
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<void> updateProduct(ProductModel product) async{
//     await UpdateProductService().updateProduct(
//       id: product.id,
//       title: productName == null ? product.title : productName!,
//       price: price == null ? product.price.toString() : price!,
//       desc:  desc == null ? product.description : desc!,
//       image: image == null ? product.image : image!,
//       category: product.category,
//     );
//   }
// }
