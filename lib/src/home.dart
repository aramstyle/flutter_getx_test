import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigator_on_getx/src/pages/first.dart';
import 'package:navigator_on_getx/src/pages/simple_state_manage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child:  Text("일반적인 라우트"),
                onPressed: () {
                  Get.to(()=>FirstPage());
                },
            ),
            ElevatedButton(
              child:  Text("단순상태관리"),
              onPressed: () {
                Get.to(()=>SimpleStateManage());
              },
            ),
          ],
        ),
      )
    );
  }
}
