import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;

class AboutTech extends StatelessWidget {
  const AboutTech({Key? key, required this.tech}) : super(key: key);

  final String tech;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: soupy_colors.secondaryColor,
        ),
        Text(
          tech,
          style: GoogleFonts.montserrat(
            fontSize: width * 0.01,
            fontWeight: FontWeight.w300,
            color: soupy_colors.fontColor,
          ),
        ),
      ],
    );
  }
}
