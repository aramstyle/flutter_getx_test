import 'package:flutter/material.dart';
import 'package:navigator_on_getx/src/control/count_contol_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 20)),
          Consumer<CountControlWithProvider>(
            builder: (_, snapshot, child) {
              return Text("${snapshot.count}", style: TextStyle(fontSize: 50));
            },
          ),
          ElevatedButton(
              child: Text("+", style: TextStyle(fontSize: 50)),
              onPressed: () {
                Provider.of<CountControlWithProvider>(context, listen: false).increase();
              },
          ),
        ],
      )
    );
  }
}
