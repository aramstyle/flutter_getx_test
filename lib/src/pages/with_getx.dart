import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_on_getx/src/control/count_contol_with_getx.dart';

class WithGetx extends StatelessWidget {
  const WithGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControlWithGetx());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 20)),
          GetBuilder<CountControlWithGetx>(
              builder: (controller) {
                return Text("${controller.count}",
                    style: TextStyle(fontSize: 50));
            },
          ),
          ElevatedButton(
              child: Text("+", style: TextStyle(fontSize: 50)),
              onPressed: () {
                Get.find<CountControlWithGetx>().increase();
              },
          ),
        ],
      )
    );
  }
}
