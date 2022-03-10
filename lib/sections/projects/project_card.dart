import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.link}) : super(key: key);

  final String link;

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        width: width * 0.5,
        height: height * 0.5,
        //margin: EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: soupy_colors.secondaryColor,
          border: Border.all(color: soupy_colors.selectedColor, width: 8),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          link,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
      onTap: () {
        _launchURL(link);
      },
    );
  }
}
