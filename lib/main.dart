import 'package:flutter/material.dart';
import 'package:signup_view/signup_page/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black, fontSize: 12),
          headline4:
              TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
          headline6:
              TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
        checkboxTheme: CheckboxThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          fillColor: MaterialStateProperty.all<Color>(Colors.indigo),
        ),
      ),
      home: SignupPage(),
    );
  }
}
