import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({Key? key , required this.message,}) : super(key: key);
  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(32),
        margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(26),
              topRight: Radius.circular(26),
              bottomRight: Radius.circular(26)),
          color: kPrimaryColor,
        ),
        child: Text(
          message.message,
          // 'I am a new user',
          style:  TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}


class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({Key? key , required this.message,}) : super(key: key);
  final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all( 32 ),
        margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(26),
              topRight: Radius.circular(26),
              bottomLeft: Radius.circular(26)),
          color: Color(0xff58b8c0),
        ),
        child: Text(
          message.message,
          // 'I am a new user',
          style:  TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}