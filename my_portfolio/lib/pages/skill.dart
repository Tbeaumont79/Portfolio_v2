import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxHeight: 900, maxWidth: 1200),
        child: Card(
          shadowColor: Colors.orangeAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset('images/code.png', height: 80, width: 80),
                          SizedBox(height: 20),
                          Text('Front-end Developer',
                              style: GoogleFonts.openSans(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 350),
                        child: Text(
                          'Donner vie à des idée grâce au code est l\'une des choses que je préfère',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text('Les languages que je maitrise:',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent)),
                          SizedBox(height: 5),
                          Text('Html, Css, C, Dart, Javascript',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Les outils de dev que j\'utilise:',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent)),
                          SizedBox(height: 5),
                          Text('Vscode',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(height: 5),
                          Text('Git',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(height: 5),
                          Text('Github',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(height: 5),
                          Text('Terminal',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(height: 5),
                          Text('Codepen',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 900,
                  width: 0.25,
                  color: Colors.orangeAccent,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset('images/design.png',
                              height: 80, width: 80),
                          SizedBox(height: 20),
                          Text('Designer',
                              style: GoogleFonts.openSans(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 350),
                        child: Text(
                            'J\'aime réalisé des design epuré et minimaliste, avec de belle animations.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            )),
                      ),
                      Column(
                        children: [
                          Text('Les choses que j\'aime designer:',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent)),
                          SizedBox(height: 5),
                          Text('UX, UI, Mobile, Web, Apps',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                              'Les outils et ressources de design que j\'utilise:',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orangeAccent)),
                          SizedBox(height: 5),
                          Text('Figma',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(height: 5),
                          Text('Undraw',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(height: 5),
                          Text('Unsplash',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                          SizedBox(height: 5),
                          Text('Pixabay',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
