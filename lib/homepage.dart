import 'package:flutter/material.dart';
import 'package:solution/responsive/desktop_view.dart';
import 'package:solution/responsive/mobile_view.dart';
import 'package:solution/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobile(),
        desktopBody: MyDesktop(),
      ),
    );
  }
}
