import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/custom_colors.dart' as soupy_colors;
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({Key? key, required this.link, required this.icon})
      : super(key: key);

  final String link;
  final IconData icon;

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      iconSize: 48,
      color: soupy_colors.secondaryColor,
      onPressed: () {
        _launchURL(link);
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    );
  }
}
