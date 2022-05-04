import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/model/user_model.dart';
import 'package:rest_api/repository/user_repo.dart';
import 'package:rest_api/view/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
      // color: Theme.of(context).colorScheme.primary,

      theme: ThemeData.dark(),

    //   theme: ThemeData(
    // colorScheme: ColorScheme.fromSwatch(
    //   primarySwatch: Colors.red,
    // ),
    // )

    );
  }
}

