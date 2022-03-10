import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/sections/home/link_button.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;
import 'package:portfolio_website/utils/custom_icons.dart' as soupy_icons;
import 'package:portfolio_website/utils/entrance_fader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height - 50,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: ColorFiltered(
                  colorFilter: ColorFilter.matrix(<double>[
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                  ]),
                  child: Image.asset(
                    "images/man.png",
                    height: width < 1200 ? height * 0.8 : height * 0.85,
                  ),
                ),
              ),
            ),
          ),
          Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, soupy_colors.mainColor],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
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
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    children: const [
                      LinkButton(
                        link: "https://github.com/pliantsoup",
                        icon: soupy_icons.github_squared,
                      ),
                      LinkButton(
                        link:
                            "https://www.linkedin.com/in/kryuchkov-roman/?locale=en_US",
                        icon: soupy_icons.linkedin_squared,
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
