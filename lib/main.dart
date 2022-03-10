import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/sections/about/about.dart';
import 'package:portfolio_website/sections/contacts/contacts.dart';
import 'package:portfolio_website/sections/home/home.dart';
import 'package:portfolio_website/sections/projects/projects.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'utils/custom_colors.dart' as soupy_colors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: soupy_colors.mainColor,
        scaffoldBackgroundColor: soupy_colors.mainColor,
      ),
      home: const MainPage(title: "PliantSoup's Portfolio"),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => MainPageState();
}

final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener =
    ItemPositionsListener.create();

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/logo.png", fit: BoxFit.contain, height: 64),
        elevation: 0,
        actions: [
          NavBar(),
        ],
      ),
      body: ScrollablePositionedList.builder(
        itemCount: 4,
        itemBuilder: (context, index) => sectionsWidget(index),
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
      ),
    );
  }

  Widget sectionsWidget(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return AboutPage();
      case 2:
        return ProjectsPage();
      case 3:
        return ContactsPage();
    }
    return Container();
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        NavButton(buttonName: "HOME", index: 0),
        NavButton(buttonName: "ABOUT", index: 1),
        NavButton(buttonName: "PROJECTS", index: 2),
        NavButton(buttonName: "CONTACTS", index: 3),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  const NavButton({Key? key, required this.buttonName, required this.index})
      : super(key: key);

  final String buttonName;
  final int index;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {
        itemScrollController.scrollTo(
            index: index,
            duration: Duration(seconds: 2),
            curve: Curves.easeInOutCubic);
      },
      child: Text(
        buttonName,
        style: GoogleFonts.montserrat(
          fontSize: height * 0.02,
          fontWeight: FontWeight.w300,
          color: soupy_colors.secondaryColor,
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 20)),
        overlayColor:
            MaterialStateProperty.all<Color>(soupy_colors.selectedColor),
      ),
    );
  }
}
