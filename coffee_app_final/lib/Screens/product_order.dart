import 'package:coffee_app_final/Screens/product_list.dart';
import 'package:coffee_app_final/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

//class SecPage extends StatefulWidget {
// SecPage({Key? key}) : super(key: key);
//@override
//  State<SecPage> createState() => _SecPageState();
//}

class ProductOrder extends StatefulWidget {
  Product product;
  ProductOrder(this.product);

  @override
  State<ProductOrder> createState() => _ProductOrderState();
}

class _ProductOrderState extends State<ProductOrder> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.transparent,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff8C746A),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ProductHome()));
          },
        ),
        title: Text(
          widget.product.name,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 28),
                            blurRadius: 80)
                      ],
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 140,
                    child: SvgPicture.asset('assets/images/macchiato.svg'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.name,
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff2D140D),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '₹',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xffCF9775),
                                  ),
                                ),
                                Text(
                                  '210',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Color(0xffCF9775),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (count > 1) {
                                  setState(() {
                                    count -= 1;
                                  });
                                }
                              },
                              child: Icon(Icons.remove),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(36, 36),
                                primary: MaterialStateColor.resolveWith(
                                    (states) => Color(0xffCF9775)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                '$count',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff2D140D)),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  count += 1;
                                });
                              },
                              child: Icon(Icons.add),
                              style: ElevatedButton.styleFrom(
                                primary: MaterialStateColor.resolveWith(
                                    (states) => Color(0xffCF9775)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),

                    ////////////////////////////////
                    //CUP SIZE PART
                    ///////////////////////////////
                    Text(
                      'Size',
                      style: TextStyle(fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.3,
                                    child: Container(
                                      child: SvgPicture.asset(
                                        'assets/images/size_small.svg',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 12),
                                      height: 4,
                                      width: 20,
                                      color: Color(0xffcf9775),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.3,
                                    child: Container(
                                      child: SvgPicture.asset(
                                        'assets/images/size_medium.svg',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 12),
                                      height: 4,
                                      width: 20,
                                      color: Color(0xffcf9775),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.3,
                                    child: Container(
                                      child: SvgPicture.asset(
                                        'assets/images/size_large.svg',
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 12),
                                      height: 4,
                                      width: 20,
                                      color: Color(0xffcf9775),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /////////////////////////////////
                    //SUGAR PART
                    /////////////////////////////////
                    Row(
                      children: [
                        Text(
                          'Sugar',
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Opacity(
                            opacity: 0.3,
                            child: Text(
                              '(in Cubes)',
                              style: TextStyle(fontSize: 25),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        child: SvgPicture.asset(
                                            'assets/images/sugar_0.svg')),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 12.0),
                                      height: 4,
                                      width: 15,
                                      color: Color(0xffcf9775),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        child: SvgPicture.asset(
                                            'assets/images/sugar_1.svg')),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 12.0),
                                      height: 4,
                                      width: 15,
                                      color: Color(0xffcf9775),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        child: SvgPicture.asset(
                                            'assets/images/sugar_2.svg')),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 12.0),
                                      height: 4,
                                      width: 15,
                                      color: Color(0xffcf9775),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        child: SvgPicture.asset(
                                            'assets/images/sugar_3.svg')),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 12.0),
                                      height: 4,
                                      width: 15,
                                      color: Color(0xffcf9775),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: MaterialStateColor.resolveWith(
                                (states) => Color(0xffCF9775)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            minimumSize: Size(150, 50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
