import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.icon,
    required this.header,
    required this.info,
  }) : super(key: key);

  final IconData icon;
  final String header;
  final String info;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: width * 0.25,
      height: height * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: soupy_colors.selectedColor, width: 8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Icon(
              icon,
              size: 128,
              color: soupy_colors.secondaryColor,
            ),
          ),
          Text(
            header,
            style: GoogleFonts.montserrat(
              fontSize: width * 0.02,
              fontWeight: FontWeight.w300,
              color: soupy_colors.fontColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              info,
              style: GoogleFonts.montserrat(
                fontSize: width * 0.010,
                fontWeight: FontWeight.w200,
                color: soupy_colors.fontColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
