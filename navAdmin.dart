import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/views/addKids/kidsList.dart';
import 'package:quiz_app/views/adminHome/admin_home.dart';
import 'package:quiz_app/views/adminTraningCenter/trinningcentr.dart';
import 'package:quiz_app/views/profile/profile.dart';
import 'package:quiz_app/views/quiestionList/questonsList.dart';
import 'package:quiz_app/views/traningCenter/trinningcentr.dart';

class NavAdmin extends StatefulWidget {
  const NavAdmin({super.key});

  @override
  State<NavAdmin> createState() => _NavAdminState();
}

class _NavAdminState extends State<NavAdmin> {
  int selectedPage = 0;
  final _pageNo = const [
    ProfileScreen(),
    AdminTraningCenter(),
    QuestionsListPage(),
    AdminHome()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageNo[selectedPage],

      //   CustomScrollView(slivers: [
      //  SliverAppBar(pinned: true,
      //    title: Text('delever me'),
      //   leading: IconButton(icon: Icon(Icons.menu),onPressed: (){},),
      // actions: [IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))],),

      // cate(),
      // food(row:1),
      // food(row:2),
      //],),
//floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.home), ),

      bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(
              icon: Icon(Icons.card_travel, color: Colors.orange),
              title: 'حسابي',
            ),
            TabItem(
              icon: Icon(Icons.business_center, color: Colors.orange),
              title: 'مراكز الذكاء',
            ),
            TabItem(
              icon: Icon(Icons.question_mark, color: Colors.orange),
              title: 'الأسئلة',
            ),
            TabItem(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              title: 'الاختبار',
            ),
          ],
          initialActiveIndex: selectedPage,
          onTap: (int index) {
            setState(() {
              selectedPage = index;
            });
          },
          activeColor: Colors.white,
          backgroundColor: Colors.lime),
    );
  }
}
