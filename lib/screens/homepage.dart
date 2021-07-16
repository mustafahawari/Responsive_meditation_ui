import 'package:flutter/material.dart';
import 'package:meditation_app_ui/consts/colors.dart';
import 'package:meditation_app_ui/screens/sleep_page.dart';
import 'package:meditation_app_ui/widgets/custom_bottom_navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedPage = 1;

  List _pages = [
    Text("Home"),
    SleepPage(),
    Text("Meditate"),
    Text("Music"),
    Text("Afsar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: _pages[_selectedPage],
      bottomNavigationBar: CustomButtomNavBar(onChange: (index) {
        _selectedPage = index;
        setState(() {});
      }),
    );
  }
}
