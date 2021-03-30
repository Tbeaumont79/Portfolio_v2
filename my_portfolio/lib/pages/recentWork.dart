import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/data/recentWorkData.dart';
import '../constant.dart';

class RecentWorkPage extends StatelessWidget {
  const RecentWorkPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mes recents projet',
                style: GoogleFonts.openSans(
                  fontSize: k_fonttitle,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 450),
                child: Text(
                  'Consulter les derniers projets que j\'ai réalisé',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: k_fontsubtitle,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              constraints: BoxConstraints(maxWidth: 1000),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: recentwork.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.5),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Image.asset(
                      recentwork[index].imgPath,
                      fit: BoxFit.contain,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
