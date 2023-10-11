import 'package:flutter/material.dart';
import '../models/number.dart';
import 'item_info.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.item, required this.color}) : super(key: key);
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: item,),
      // Row(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 16.0),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             item.jpName,
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 18,
      //             ),
      //           ),
      //           Text(
      //             item.enName,
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 18,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Spacer(
      //       flex: 1,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 16.0),
      //       child: IconButton(
      //         onPressed: () {
      //           final player = AudioPlayer();
      //           player.play(AssetSource(item.sound));
      //         },
      //         icon: Icon(
      //           Icons.play_arrow,
      //           color: Colors.white,
      //           size: 30,
      //         ),
      //       ),
      //
      //       // GestureDetector(
      //       //   onTap: (){
      //       //
      //       //   },
      //       //   child: Icon(
      //       //     Icons.play_arrow,
      //       //     color: Colors.white,
      //       //     size: 30,
      //       //   ),
      //       // ),
      //     ),
      //   ],
      // ),
    );
  }
}
