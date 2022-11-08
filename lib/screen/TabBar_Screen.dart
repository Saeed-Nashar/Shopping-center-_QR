
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/profile/profile.dart';
import 'package:flutter_app/screen/welcome/welcomescreen.dart';



import '../LoginAndResetAndSignUp/Login/login.dart';
import 'ChatPage/chatPage.dart';
import 'HomeScreen.dart';
import 'Search/Search.dart';
import 'drawer/drawer.dart';
import 'notification.dart';
import 'scan.dart';



class TabBar_Screen extends StatefulWidget {
//  final int user_id;

//  const TabBar_Screen({Key? key, required this.user_id}) : super(key: key);
  @override
  _TabBar_ScreenState createState() => _TabBar_ScreenState();
}

class _TabBar_ScreenState extends State<TabBar_Screen> {
  final bool appeer = false;
  final iconList = <IconData>[
    Icons.home,
    Icons.chat,
    Icons.notification_important_sharp,
    Icons.person,
  ];
  late final List<Map<String, Widget>> pages;
  late final List<Map<String, String>> title;
  int selectedIndex = 0;
  @override
  void initState() {
    pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': chatPage(),
      },
      {
        'page': notifiction(
        //  user_id:widget.user_id,
        ),
      },
      {
        'page': profile(),
      },
    ];
    title = [
      {
        'title': 'الرئسية',
      },
      {
        'title': 'تواصل معنا',
      },
      {
        'title': 'الإشعارات',
      },
      {
        'title': 'الملف الشخصي',
      },
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {

          },
          child: Icon(Icons.qr_code),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: buildAppBar(title),
        drawer: MainDrawer(),
        body: pages[selectedIndex]['page'],
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          backgroundColor:
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? Colors.black12
                  : Colors.white,
          activeIndex: selectedIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
          activeColor: Colors.teal,
          inactiveColor:
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? Colors.grey[800]
                  : Colors.grey,
          onTap: (index) => setState(() => selectedIndex = index),
        ),
      ),
    );
  }

  AppBar buildAppBar(title) {
    return AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: true,
        title: Text(title[selectedIndex]['title']),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => search()));
            },
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(onSelected: (itemIdentifire) {
            if (itemIdentifire == 'Logout') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => WelcomeScreen()));
            }
            if (itemIdentifire == 'Setting') {}
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('تسجيل الخروج'),
                value: 'Logout',
              ),
              PopupMenuItem(
                child: Text('الإعدادات'),
                value: 'Setting',
              ),
            ];
          }),
        ]);
  }
}
