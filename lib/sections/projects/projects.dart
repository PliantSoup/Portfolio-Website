import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/sections/projects/project_card.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;

class ProjectsPage extends StatelessWidget {
  ProjectsPage({Key? key}) : super(key: key);

  final CarouselController _controller = CarouselController();

  final List<Widget> projectCards = [
    ProjectCard(link: "https://github.com/pliantsoup"),
    ProjectCard(link: "https://github.com/pliantsoup")
  ];

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
                  "Projects",
                  style: GoogleFonts.montserrat(
                      fontSize: width * 0.03, color: soupy_colors.fontColor),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  height: 400,
                  viewportFraction: 0.5,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true,
                ),
                items: projectCards,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
