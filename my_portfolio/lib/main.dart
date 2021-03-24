import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/skill.dart';
import './pages/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  bool pageIsScrolling = false;
  final PageController pageController = PageController(initialPage: 0);

  List<Widget> pages = [
    HomePage(),
    AboutPage(),
    SkillPage()
  ];

  void _onScroll(double offset) {
    if (pageIsScrolling == false) {
      if (i > 0 && offset < 0) {
        pageController
            .previousPage(
                duration: Duration(milliseconds: 300), curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);
        pageIsScrolling = true;
      } else if (i < pages.length - 1 && offset > 0) {
        pageController
            .nextPage(
                duration: Duration(milliseconds: 300), curve: Curves.easeInOut)
            .then((value) => pageIsScrolling = false);
        pageIsScrolling = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Listener(
          onPointerMove: (pointerMove) {
            if (pointerMove is PointerMoveEvent) {
              _onScroll(pointerMove.delta.dy * -1);
            }
          },
          onPointerSignal: (pointerSignal) {
            if (pointerSignal is PointerScrollEvent) {
              _onScroll(pointerSignal.scrollDelta.dy);
            }
          },
          child: Container(
            child: PageView.builder(
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: pages.length,
              itemBuilder: (BuildContext context, int index) {
                i = index;
                return pages[index];
              },
            ),
          ),
        ),
      ),
    );
  }
}
