import 'package:ar_furniture_app/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async
{
  try
  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  catch(errorMsg)
  {
    print("Error:: " + errorMsg.toString());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ikea App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false, // to remove marker
      home: const HomeScreen(),
    );
  }
}


