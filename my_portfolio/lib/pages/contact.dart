import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 100),
              Text(
                'Contact',
                style: GoogleFonts.openSans(
                    fontSize: k_fonttitle,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent),
              ),
              SizedBox(height: 20),
              Container(
                height: 2,
                width: 400,
                color: Colors.orangeAccent.withOpacity(0.25),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 100),
              Text(
                'Vous avez un projet ou vous souhaitez plus d\'information ?',
                style: GoogleFonts.openSans(
                  fontSize: k_fontsubtitle,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 50),
              CupertinoButton(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent),
                    height: 70,
                    width: 150,
                    child: Center(
                      child: Text(
                        'Contactez moi',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () => _launchURL(
                      'mailto:tbeaumont79@icloud.com?subject=&body=')),
            ],
          ),
          SizedBox(
            height: 100,
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, '/'),
              child: Icon(Icons.arrow_upward_rounded,
                  size: 60, color: Colors.orangeAccent),
            ),
          ),
          Container(
            color: Colors.orangeAccent,
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'N\'hesitez pas également á consulter ces différents lien :',
                  style: GoogleFonts.openSans(
                      fontSize: k_fontsize, color: Colors.white),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _createLinkButton(
                          'https://www.linkedin.com/in/beaumont-thibault/',
                          'assets/images/linkedin.png'),
                      SizedBox(width: 20),
                      _createLinkButton('https://twitter.com/thibault456',
                          'assets/images/twitter.png'),
                      SizedBox(width: 20),
                      _createLinkButton(
                          'https://www.youtube.com/channel/UCtSZS6bt3bctCg6SQnPkxXg',
                          'assets/images/youtube.png'),
                      SizedBox(width: 20),
                      _createLinkButton(
                          'https://open.spotify.com/show/3hRUPVBWOVUDKxobpdzvNm',
                          'assets/images/spotify.png')
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createLinkButton(String urlToWeb, String pathIconImage) {
    return InkWell(
      onTap: () => _launchURL(urlToWeb),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
              image: AssetImage(pathIconImage), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
