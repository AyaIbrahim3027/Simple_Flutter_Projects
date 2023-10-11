import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../components/phrase_item.dart';
import '../models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  // final Number one = const Number(
  //     image: 'assets/images/numbers/number_one.png',
  //     jpName: 'ichi',
  //     enName: 'one');

  final List<ItemModel> phrasesList = const [
    ItemModel(
        sound:'sounds/phrases/are_you_coming.wav' ,
        jpName: 'are_you_coming',
        enName: 'are_you_coming'),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'dont_forget_to_subscribe',
        enName: 'dont_forget_to_subscribe'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'how_are_you_feeling',
        enName: 'how_are_you_feeling'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'i_love_anime',
        enName: 'i_love_anime'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'i_love_programming',
        enName: 'i_love_programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'programming_is_easy',
        enName: 'programming_is_easy'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'what_is_your_name',
        enName: 'what_is_your_name'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'where_are_you_going',
        enName: 'where_are_you_going'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'yes_im_coming',
        enName: 'yes_im_coming'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Phrases'),
      ),
      body: ListView.builder( // best solution
        itemCount: phrasesList.length,
        itemBuilder: (context , index ){
          return PhrasesItem(
            color: Color(0xff50ADC7),
            item: phrasesList[index],);
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
