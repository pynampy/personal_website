import 'package:flutter/material.dart';
import '../constants.dart';

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
          const HoverElement(),
        ],
      ),
    );
  }
}

class HoverElement extends StatefulWidget {
  const HoverElement({super.key});

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
      child: Text("Resume",
          style: TextStyle(
              fontFamily: secondaryFont,
              fontSize: 18,
              color: isHovered ? primaryColor : Colors.black)),
    );
  }
}
