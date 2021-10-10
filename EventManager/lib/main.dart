import 'package:EventManager/Authorisations/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //this initializes firebase on the backend.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDU HUB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //this is the theme for the entire app.
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        inputDecorationTheme: new InputDecorationTheme(
          hintStyle: TextStyle(
            color: Colors.white38,
          ),
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
        ),
      ),
      home: authenticate(),
    );
  }
}
