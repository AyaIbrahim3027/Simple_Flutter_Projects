import 'package:coffee_app_final/Screens/product_order.dart';
import 'package:coffee_app_final/models/product.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app_final/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProductHome extends StatefulWidget {
  @override
  _ProductHomeState createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {},
         // icon:Icon(Icons.menu)
          icon:SvgPicture.asset('assets/images/menu.svg'),
        ),
        actions: [
          IconButton(
              // icon:Icon(Icons.search),
              icon: SvgPicture.asset('assets/images/search.svg'),
              onPressed: (){})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: ListView(
          children: [
            Container(
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'sen',
                    fontSize: 36,
                  ),
                  children: [
                    TextSpan(text: 'It\'s Great'),
                    TextSpan(
                      text: ' Day for Coffee',
                      style: TextStyle(
                          fontFamily: 'sen',
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor),
                    ),
                  ],
                ),
              ),

            ),

            Column(
            children: products.map((e) {
             return Padding(
             padding: const EdgeInsets.all(0),
             child: Container(
             child: productCard(e),
             ),
             );
             }).toList()
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget BottomNavBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: 1,
              child: SvgPicture.asset('assets/images/home.svg'),
            ),
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset('assets/images/location.svg'),
            ),
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset('assets/images/cart.svg'),
            ),
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset('assets/images/profile.svg'),
            ),
          ],
        ),
      ),
    );
  }


  Widget productCard(Product product) {
    return GestureDetector(
      onTap:(){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ProductOrder(product)));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Container(
              width: 60,
              child: SvgPicture.asset(product.image),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              product.name,
              style: kProductNameStyle,
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }

}