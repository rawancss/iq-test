import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../model/iq_result.dart';
import '../services/storage_service.dart';
import '../services/theme.dart';
import 'app_bar.dart';

class TestQuizScore extends StatelessWidget {
  // final IQResult result;
  const TestQuizScore({super.key});
  @override
  Widget build(BuildContext context) {
    // var user = Get.find<StorageService>().accountData!;

    return Scaffold(
      backgroundColor: Colors.orange[100],
      //appBar: AppBarWidget(title: "النتائج"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "العوده للاختبار",
                  style: TextStyle(fontSize: 60),
                )),

            // Text(
            //   "Name: ${user.name}",
            //   style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            // ),
            // Text(
            //   'Age :${user.age!} Years',
            //   style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            // ),

            //

          ],
        ),
      ),
    );
  }
}
