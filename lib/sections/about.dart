import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        ],
      ),
    );
  }
}
