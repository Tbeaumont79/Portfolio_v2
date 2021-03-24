import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/screenhelper.dart';
import '../constant.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      child: ScreenHelper(
        desktop: desktopAbout(context),
        tablet: desktopAbout(context),
        mobile: mobileAbout(context),
      ),
    );
  }

  Widget mobileAbout(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                'A propos',
                style: GoogleFonts.openSans(
                  fontSize: k_mobilefonttitle,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 300),
                child: Text(
                  'Hey, je suis Thibault, j\'ai 21 ans',
                  style: GoogleFonts.openSans(
                    fontSize: k_mobilefontsubtitle,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 150, maxHeight: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://scontent-cdg2-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/134481205_4240109532671300_2022821700141622332_n.jpg?tp=1&_nc_ht=scontent-cdg2-1.cdninstagram.com&_nc_cat=108&_nc_ohc=JA-hWrScPLgAX9RK3Cf&ccb=7-4&oh=b7c6ca9bff245d3f52d1dbf14667e718&oe=607C4644'),
                        fit: BoxFit.scaleDown),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'L\'année derniére je me suis lancer comme défi d\'apprendre à jouer de la guitate en autodidacte, je pratique régulierement et continu mon apprentissage !',
                    style: GoogleFonts.openSans(
                      fontSize: k_mobilefontsize,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  constraints: BoxConstraints(
                      maxWidth: 150, maxHeight: 150, minHeight: 5, minWidth: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    image: DecorationImage(
                        image: AssetImage('images/me.JPG'), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    'J\'habite en région Parisienne et j\'aime faire de la street photography pendant mon temps libre, je partage mes photo sur instagram',
                    style: GoogleFonts.openSans(
                      fontSize: k_mobilefontsize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget desktopAbout(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Á propos',
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
                  'Hey, je suis Thibault, j\'ai 21 ans',
                  style: GoogleFonts.openSans(
                    fontSize: k_fontsubtitle,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://scontent-cdg2-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/134481205_4240109532671300_2022821700141622332_n.jpg?tp=1&_nc_ht=scontent-cdg2-1.cdninstagram.com&_nc_cat=108&_nc_ohc=JA-hWrScPLgAX9RK3Cf&ccb=7-4&oh=b7c6ca9bff245d3f52d1dbf14667e718&oe=607C4644'),
                        fit: BoxFit.scaleDown),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Text(
                    'L\'année derniére je me suis lancer comme défi d\'apprendre à jouer de la guitate en autodidacte, je pratique régulierement et continu mon apprentissage !',
                    style: GoogleFonts.openSans(
                      fontSize: k_fontsize,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Text(
                    'J\'habite en région Parisienne et j\'aime faire de la street photography pendant mon temps libre, je partage mes photo sur instagram',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 250, maxHeight: 250),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    image: DecorationImage(
                        image: AssetImage('images/me.JPG'), fit: BoxFit.cover),
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
