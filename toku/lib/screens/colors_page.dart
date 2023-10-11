import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  // final Number one = const Number(
  //     image: 'assets/images/numbers/number_one.png',
  //     jpName: 'ichi',
  //     enName: 'one');

  final List<ItemModel> numbers = const [
    ItemModel(
        sound:'sounds/colors/black.wav' ,
        image: 'assets/images/colors/color_black.png',
        jpName: 'color_black',
        enName: 'color_black'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'color_brown',
        enName: 'color_brown'),
    ItemModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'color_dusty_yellow',
        enName: 'color_dusty_yellow'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'color_gray',
        enName: 'color_gray'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'color_green',
        enName: 'color_green'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'color_red',
        enName: 'color_red'),
    ItemModel(
        sound: 'assets/sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'color_white',
        enName: 'color_white'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'yellow',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Colors'),
      ),
      body: ListView.builder( // best solution
        itemCount: numbers.length,
        itemBuilder: (context , index ){
          return Item(
            color: Color(0xff79359F),
            item: numbers[index],);
        },

        //  or:

        // ListView(
        //   children: getList(numbers),

        //    or:

        // [
        //   Item(number: numbers[0]),
        //   Item(number: numbers[1]),
        //   Item(number: numbers[2]),
        //   Item(number: numbers[3]),
        //   Item(number: numbers[4]),
        //   Item(number: numbers[5]),
        //   Item(number: numbers[6]),
        //   Item(number: numbers[7]),
        //   Item(number: numbers[8]),
        //   Item(number: numbers[9]),
        // ],
      ),
    );
  }

// use this with ListView:
// List<Widget> getList(List<Number> numbers){   //widget or Item
//   List<Item> itemsList = []; //widget or Item
//   for(int i = 0 ; i < numbers.length ; i++){
//     itemsList.add(Item(number: numbers[i]));
//   }
//   return itemsList;
// }
}
