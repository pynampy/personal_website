import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../constants.dart';
import 'package:universal_html/html.dart' as html;

Future<void> showCV() async {
  var bytes = await rootBundle.load("assets/resume.pdf");
  final blob = html.Blob([bytes], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.window.open(url, "_blank");
  html.Url.revokeObjectUrl(url);
}

void mailToMyself() async {
  String mailUrl = 'mailto:naman.jain221099@gmail.com';
  try {
    await launchUrlString(mailUrl);
  } catch (e) {
    print(e);
    await Clipboard.setData(ClipboardData(text: "naman.jain221099@gmail.com"));
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Row(
        children: [
          Image.asset(
            logo,
            height: 100,
            width: 100,
          ),
          const Spacer(),
          const OnHoverText(),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              print("Clicled");
              mailToMyself();
            },
            child: const HoverElement(
              buttonText: "Say Hello",
              borderColor: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

class HoverElement extends StatefulWidget {
  final String buttonText;
  final Color borderColor;
  const HoverElement(
      {required this.buttonText, required this.borderColor, super.key});

  @override
  State<HoverElement> createState() => _HoverElementState();
}

class _HoverElementState extends State<HoverElement> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHovered = true;
      }),
      onExit: (event) => setState(() {
        isHovered = false;
      }),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: primaryColor),
              borderRadius: BorderRadius.circular(20),
              color: isHovered ? primaryColor : backgroundColor),
          height: 45,
          width: 120,
          child: Center(
              child: Text(
            "Say Hello",
            style: TextStyle(
                fontSize: 18,
                fontFamily: secondaryFont,
                color: isHovered ? backgroundColor : primaryColor),
          ))),
    );
  }
}

class OnHoverText extends StatefulWidget {
  const OnHoverText({super.key});

  @override
  State<OnHoverText> createState() => _OnHoverTextState();
}

class _OnHoverTextState extends State<OnHoverText> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        isHovered = true;
      }),
      onExit: (event) => setState(() {
        isHovered = false;
      }),
      child: GestureDetector(
        onTap: () {
          showCV();
        },
        child: Text("Resume",
            style: TextStyle(
                fontFamily: secondaryFont,
                fontSize: 18,
                color: isHovered ? primaryColor : Colors.black)),
      ),
    );
  }
}
