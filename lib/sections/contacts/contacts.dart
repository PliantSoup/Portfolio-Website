import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;

import 'info_card.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "Contacts",
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
                children: const [
                  InfoCard(
                      icon: Icons.home,
                      header: "Location",
                      info: "Moscow, Russia"),
                  InfoCard(
                      icon: Icons.email_rounded,
                      header: "E-Mail",
                      info: "kryu.rd@gmail.com"),
                  InfoCard(
                      icon: Icons.email_rounded,
                      header: "E-Mail",
                      info: "kryu.rd@gmail.com"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
