import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product_service.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 65,
        ),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 85,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    product: products[index],
                  );
                },
              );
            } else if (snapshot.hasError) {
              // Error occurred while fetching data
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return const Center(child: CircularProgressIndicator(),);
            }
          },
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:store_app/models/product_model.dart';
// import 'package:store_app/services/get_all_product_service.dart';
//
// import '../widgets/custom_card.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//   static String id = 'HomePage';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               FontAwesomeIcons.cartPlus,
//               color: Colors.black,
//             ),
//           )
//         ],
//         centerTitle: true,
//         title: Text(
//           'New Trend',
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(right: 8 , left: 8,top: 65),
//         child: FutureBuilder<List<ProductModel>> (
//           future: AllProductsService().getAllProducts(),
//           builder: (context , snapshot){
//
//             if (snapshot.hasData) {
//               List<ProductModel> products = snapshot.data!;
//
//               return GridView.builder(
//                 itemCount: products.length,
//                   clipBehavior: Clip.none,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 1.3,
//                     crossAxisSpacing: 5,
//                     mainAxisSpacing: 100,
//                   ),
//                   itemBuilder: (context,index){
//                     return CustomCard(product: products[index]);
//                   });
//             }else{
//               return Center(child: CircularProgressIndicator(),);
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
//
