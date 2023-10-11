import 'package:flutter/material.dart';
import 'package:tune_player_app/views/tune_view.dart';

void main() {
  runApp( TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TuneView() ,
    );
  }
}





