import 'package:flutter/material.dart';
import 'package:meet/friends.dart';
import 'package:meet/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFFFFAD32),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  //const DashboardScreen({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Meetings",
          style: TextStyle(
            color: const Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: PageView(
        children: [
          Event(),
          Team(),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: const Color(0xFF167F67),
        ), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  // ignore: prefer_const_constructors
                  Icons.calendar_today,
                  color: Color(0xFFFFFFFF),
                ),
                title: Text(
                  "Event",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
            /*BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                  color: const Color(0xFFFFFFFF),
                ),
                title: Text(
                  "Location",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),*/
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  color: const Color(0xFFFFFFFF),
                ),
                title: Text(
                  "Team",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                ))
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
