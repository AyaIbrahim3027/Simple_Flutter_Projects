import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  // final Number one = const Number(
  //     image: 'assets/images/numbers/number_one.png',
  //     jpName: 'ichi',
  //     enName: 'one');

  final List<ItemModel> numbers = const [
    ItemModel(
        sound:'sounds/numbers/number_one_sound.mp3' ,
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    ItemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    ItemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three'),
    ItemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four'),
    ItemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'nine'),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Numbers'),
      ),
      body: ListView.builder( // best solution
        itemCount: numbers.length,
          itemBuilder: (context , index ){
            return Item(
                color : Color(0xffEF9235),
                item: numbers[index], );
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
