import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/provider/portfolioProvider.dart';
import 'package:provider/provider.dart';
import './pages/home.dart';
import './pages/skill.dart';
import './pages/about.dart';
import './pages/recentWork.dart';
import './pages/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PortfolioProvider(),
      child: MaterialApp(
        title: 'My portfolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {'/': (context) => MyHomePage()},
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i;
  bool pageIsScrolling;
  PageController pageController;

  List<Widget> pages = [
    HomePage(),
    AboutPage(),
    SkillPage(),
    RecentWorkPage(),
    ContactPage()
  ];
  @override
  void initState() {
    super.initState();
    i = 0;
    pageIsScrolling = false;
    pageController = PageController();
  }

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
    int portfolioIndex = Provider.of<PortfolioProvider>(context).index;
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
                if (portfolioIndex == 1) {
                  portfolioIndex = 0;
                  pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                }
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
