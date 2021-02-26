import 'package:chopdemic/ui/pages/charts.dart';
import 'package:chopdemic/ui/pages/contestants_page.dart';
import 'package:chopdemic/ui/pages/leader_bord.dart';
import 'package:chopdemic/ui/pages/news_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isAuth = true;

  PageController pageController;
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  onPageChange(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
    );
  }

  Scaffold buildScreen() {
    return Scaffold(
      body: PageView(
        children: [LeaderBord(), ContestantsPage(), NewsPage(), ChatPage()],
        controller: pageController,
        onPageChanged: onPageChange,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: onTap,
        activeColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              label: "LeaderBord", icon: Icon(Icons.whatshot)),
          BottomNavigationBarItem(
            label: "ContestantsPage",
            icon: Icon(Icons.notifications_active),
          ),
          BottomNavigationBarItem(
              label: "News",
              icon: Icon(
                Icons.photo_camera,
                size: 35.0,
              )),
          BottomNavigationBarItem(
            label: "Chats",
            icon: Icon(Icons.chat),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildScreen();
  }
}
