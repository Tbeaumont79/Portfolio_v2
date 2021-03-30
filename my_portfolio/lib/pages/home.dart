import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/screenhelper.dart';
import 'package:provider/provider.dart';
import '../constant.dart';
import 'about.dart';
import '../provider/portfolioProvider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ScreenHelper(
        mobile: _buildHeaderMobile(context),
        desktop: _buildHeaderSection(context),
        tablet: _buildHeaderSection(context),
      ),
    );
  }

  Widget _buildHeaderMobile(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SOFTWARE ENGINEER',
                style: GoogleFonts.openSans(
                    fontSize: k_mobilefontsubtitle,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent)),
            SizedBox(
              height: 10,
            ),
            Text('THIBAULT\nBEAUMONT',
                style: GoogleFonts.openSans(
                  fontSize: k_mobilefonttitle,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
                'I\'m Software engineer based in Paris, i build website and mobile app',
                style: GoogleFonts.openSans(
                  fontSize: k_mobilefontsize,
                  fontWeight: FontWeight.w300,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 300, maxHeight: 50),
              child: CupertinoButton(
                  color: Colors.orangeAccent,
                  alignment: Alignment.centerLeft,
                  child: Center(
                    child: Text(
                      'GET STARTED',
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () =>
                      Provider.of<PortfolioProvider>(context, listen: false)
                          .setIndex = 1),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            constraints: BoxConstraints(
                minWidth: 200, minHeight: 200, maxWidth: 400, maxHeight: 400),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              image: DecorationImage(
                  image: AssetImage(
                    'images/moi.JPEG',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 300),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DEVELOPPEUR FULLSTACK',
                  style: GoogleFonts.openSans(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('THIBAULT\nBEAUMONT',
                    style: GoogleFonts.openSans(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Developpeur fullstack, je réalise des applications web et mobile',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 300, maxHeight: 50),
                  child: CupertinoButton(
                    color: Colors.orangeAccent,
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Text(
                        'Découvrir',
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onPressed: () =>
                        Provider.of<PortfolioProvider>(context, listen: false)
                            .setIndex = 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
