import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_on_getx/src/control/count_contol_with_getx.dart';
import 'package:navigator_on_getx/src/control/count_contol_with_provider.dart';
import 'package:navigator_on_getx/src/pages/with_getx.dart';
import 'package:navigator_on_getx/src/pages/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateManage extends StatelessWidget {
  const SimpleStateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("단순상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetx(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControlWithProvider> (
                create: (_) => CountControlWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
