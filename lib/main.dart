import 'package:flutter/material.dart';
import 'package:state_example/model/myModel.dart';
import 'package:state_example/screens/index.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<MyModel>(
          create: (context) => MyModel(), child: const IndexScreen()),
    );
  }
}
