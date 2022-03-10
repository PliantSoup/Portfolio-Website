import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/sections/about/about_tech.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height - 50,
      width: width,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "About",
                  style: GoogleFonts.montserrat(
                      fontSize: width * 0.03, color: soupy_colors.fontColor),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   "images/man.png",
                  //   height: width < 1200 ? height * 0.8 : height * 0.85,
                  // ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    width: width / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: Text(
                            "Who am I?",
                            style: GoogleFonts.montserrat(
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w300,
                              color: soupy_colors.secondaryColor,
                            ),
                          ),
                        ),
                        Text(
                          "I'm Flutter and Unity developer.",
                          style: GoogleFonts.montserrat(
                            fontSize: width * 0.022,
                            fontWeight: FontWeight.w600,
                            color: soupy_colors.fontColor,
                          ),
                        ),
                        Text(
                          "Currently, Third Year Computer Science student in Moscow, Russia. "
                          "I have been developing mobile apps and games for over a year now. "
                          "I have worked in teams for various projects and got valuable learning experience.",
                          style: GoogleFonts.montserrat(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: soupy_colors.fontColor,
                          ),
                          maxLines: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          height: 2,
                          width: width / 2,
                          decoration: BoxDecoration(
                            color: soupy_colors.secondaryColor,
                            border:
                                Border.all(color: Colors.transparent, width: 8),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        Text(
                          "Technologies I have worked with:",
                          style: GoogleFonts.montserrat(
                            fontSize: width * 0.01,
                            fontWeight: FontWeight.w300,
                            color: soupy_colors.secondaryColor,
                          ),
                        ),
                        Row(
                          children: [
                            AboutTech(tech: "Flutter"),
                            AboutTech(tech: "Dart"),
                            AboutTech(tech: "Java/Kotlin"),
                            AboutTech(tech: "Unity"),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          height: 2,
                          width: width / 2,
                          decoration: BoxDecoration(
                            color: soupy_colors.secondaryColor,
                            border:
                                Border.all(color: Colors.transparent, width: 8),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
