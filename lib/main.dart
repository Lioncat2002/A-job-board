import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:job_board/pages/job_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedidx = 0;
  static final List<Widget> _titles = [
    const Text(
      "jobs",
      style: TextStyle(color: Colors.black),
    ),
    const Text(
      "messages",
      style: TextStyle(color: Colors.black),
    ),
    const Text(
      "profile",
      style: TextStyle(color: Colors.black),
    ),
  ];
  static final List<Widget> _pages = [
    const Job(),
    const Center(
      child: Text("Messages"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: _titles.elementAt(selectedidx),
      ),
      body: SafeArea(
        child: _pages.elementAt(selectedidx),
      ), //for changes the pages
      bottomNavigationBar: GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 5,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey[100]!,
        color: Colors.black,
        tabs: const [
          GButton(
            icon: Icons.work_outline,
          ),
          GButton(
            icon: Icons.mail_outline,
          ),
          GButton(
            icon: Icons.person_outline,
          ),
        ],
        selectedIndex: selectedidx,
        onTabChange: (index) {
          setState(() {
            selectedidx = index;
          });
        },
      ),
    );
  }
}