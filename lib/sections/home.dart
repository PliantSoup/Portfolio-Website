import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;
import 'package:portfolio_website/utils/custom_icons.dart' as soupy_icons;
import 'package:portfolio_website/utils/entrance_fader.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final bool isVisible = false;

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height - 50,
      width: width,
      decoration: const BoxDecoration(
        color: soupy_colors.mainColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.1,
            child: Opacity(
              opacity: 0.7,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  "images/man.png",
                  height: width < 1200 ? height * 0.8 : height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.fromLTRB(width * 0.1, height * 0.2, width * 0.1, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kryuchkov",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.12,
                    fontWeight: FontWeight.w300,
                    color: soupy_colors.fontColor,
                  ),
                ),
                Text(
                  "Roman",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.12,
                    fontWeight: FontWeight.w600,
                    color: soupy_colors.fontColor,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: soupy_colors.secondaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: DefaultTextStyle(
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.w300,
                          color: soupy_colors.fontColor,
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TyperAnimatedText('Flutter'),
                            TyperAnimatedText('Android'),
                            TyperAnimatedText('Unity'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(soupy_icons.github_squared),
                        iconSize: 48,
                        color: soupy_colors.secondaryColor,
                        onPressed: () {
                          _launchURL("https://github.com/pliantsoup");
                        },
                      ),
                      IconButton(
                        icon: Icon(soupy_icons.linkedin_squared),
                        iconSize: 48,
                        color: soupy_colors.secondaryColor,
                        onPressed: () {},
                      ),
                    ],
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
