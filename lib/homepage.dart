import 'package:facebook_profile_ui/pages//home.dart';
import 'package:facebook_profile_ui/pages/dashboard.dart';
import 'package:facebook_profile_ui/pages/line_chart.dart';
import 'package:facebook_profile_ui/pages/profile_page.dart';
import 'package:facebook_profile_ui/pages/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _mainBody(),
    ));
  }

  Widget _mainBody() {
    return Column(
      children: [
        _appBar(),
        _body(),
        _bottomBar(),
      ],
    );
  }

  Widget _body() {
    return Expanded(
      child: PageView(

        controller: pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          selectedIndex = index;
          setState(() {});
        },
        children: [
          Home(),
          Dashboard(),
          Search(),
          ProfilePage(),
          LineChartSample1(),
        ],
      ),
    );
  }

  Widget _appBar() {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios),
          Spacer(),
          Text(
            "Meet Patel",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          Spacer(),
          Icon(Icons.edit),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget _bottomBar() {
    return Container(
      color: Colors.black12,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          menuItem(Icons.home, "Home", () {
            selectedIndex = 0;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 0),
          menuItem(Icons.dashboard, "Dashboard", () {
            selectedIndex = 1;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 1),
          menuItem(Icons.search, "Search", () {
            selectedIndex = 2;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 2),
          menuItem(Icons.supervised_user_circle, "Profile", () {
            selectedIndex = 3;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 3),
          menuItem(Icons.add_chart, "Chart", () {
            selectedIndex = 4;
            pageController.jumpToPage(selectedIndex);
            setState(() {});
          }, selectedIndex == 4),
        ],
      ),
    );
  }

  Widget menuItem(
      IconData icon, String label, Function clickFun, bool isSelected) {
    return Expanded(
      child: InkWell(
        onTap: () {
          clickFun();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.blue : Colors.black,
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.blue : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
