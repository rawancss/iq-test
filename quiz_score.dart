import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../model/iq_result.dart';
import '../services/storage_service.dart';
import '../services/theme.dart';
import 'app_bar.dart';

class QuizScore extends StatelessWidget {
  final IQResult result;
  const QuizScore({super.key, required this.result});
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
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     child: Text(
            //       "العوده للاختبار",
            //       style: TextStyle(fontSize: 60),
            //     )),

            // Text(
            //   "Name: ${user.name}",
            //   style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            // ),
            // Text(
            //   'Age :${user.age!} Years',
            //   style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            // ),

            //
            Center(
              child: Text(
                'نتيجه الاختبار',textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
              ),
            ),
            Center(
              child: Text(
                'النتيجه  :${result.correctCount ?? 0} /${result.questionsCount}',
                style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ),
            Center(
              child: Text(
                'المنطق : ${result.logicCount ?? 0} من ${result.logicAnswered ?? 0}  ',
                style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ),
            Center(
              child: Text(
                'الرياضيات :   ${result.mathCount ?? 0} من  ${result.mathAnswered ?? 0}  ',
                style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ),
            Center(
              child: Text(
                'نسبه الذكاء:${(result.iq ?? 0)}',textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ),
            if (result.mentalAge! > 0)
              Center(
                child: Text(
                  'العمر العقلي :${result.mentalAge} سنه',textAlign: TextAlign.center,
                  style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ),
            const SizedBox(
              height: 60,
            ),

            if (((result.mathAnswered ?? 0) / (result.mathCount ?? 1)) > 0.7)
              Center(
                child: Text(
                  'بناء على النتائج اعلاه  \nتظهر تميز طفلك في المجال الاعلى درجة \n يمكنك ان تعزز ذكاء طفلك'
                      ' \n بزياره احد مراكز التدريب\n الموجود في تطبيقنا ',textAlign: TextAlign.center,
                  style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ),
            const SizedBox(
              height: 40,
            ),

            // if (((result.logicAnswered ?? 0) / (result.logicCount ?? 1)) > 0.7)
            // //  Text('نصيحه المنطق  اكتب هنا ', style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),),
            // const SizedBox(
            //   height: 60,
            // ),

            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("الخروج من الأختبار",textAlign: TextAlign.center,)),
            ),
          ],
        ),
      ),
    );
  }
}
