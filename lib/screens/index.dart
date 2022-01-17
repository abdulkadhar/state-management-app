import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_example/model/myModel.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IndexScreen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<MyModel>(
              builder: (context, myModel, child) {
                return ElevatedButton(
                  onPressed: myModel.changeInitialValue,
                  child: const Text("Click me"),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Consumer<MyModel>(builder: (context, myModel, child) {
              return Text(myModel.value);
            })
          ],
        ),
      ),
    );
  }
}
