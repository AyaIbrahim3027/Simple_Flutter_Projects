import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({Key? key}) : super(key: key);

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.cyan, sound: 'note4.wav'),
    TuneModel(color: Colors.pinkAccent, sound: 'note5.wav'),
    TuneModel(color: Colors.black, sound: 'note6.wav'),
    TuneModel(color: Colors.teal, sound: 'note7.wav'),

    // Colors.red,
    // Colors.orange,
    // Colors.yellow,
    // Colors.cyan,
    // Colors.pinkAccent,
    // Colors.black,
    // Colors.teal,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        title: Text('Flutter Tune'),
        elevation: 0,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
            )
            .toList(),
        // or:
        // getItems(),
        // or:
        // [
        //   TuneItem(color: Colors.red,),
        //   TuneItem(color: Colors.orange,),
        //   TuneItem(color: Colors.yellow,),
        //   TuneItem(color: Colors.cyan,),
        //   TuneItem(color: Colors.pinkAccent,),
        //   TuneItem(color: Colors.black,),
        //   TuneItem(color: Colors.teal,),
        // ],
      ),
    );
  }

  // another solution:
  // List<TuneItem> getItems(){
  //   List<TuneItem> items =[];
  //   for(var color in tuneColors){
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
