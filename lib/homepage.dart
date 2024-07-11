import 'package:flutter/material.dart';
import 'package:namanjain_dev/constants.dart';
import 'package:namanjain_dev/header/header.dart';
import 'package:universal_html/html.dart' as html;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const Text(
                "Flutter Developer & Tech Artisan",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    fontFamily: primaryFont),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "I design and code beautifully simple things, and I love what I do.",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: secondaryFont,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Image.asset(avatar),
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                devices,
                height: 340,
                width: 860,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 500,
                        decoration: const BoxDecoration(color: primaryColor),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 80,
                            ),
                            Text(
                              "Hi, I'm Naman. Nice to meet you.",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                                fontFamily: primaryFont,
                                color: backgroundColor,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 300),
                              child: Text(
                                "Since beginning my journey as a frontend developer 4 years ago, I've done remote work for agencies, worked at startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chops.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: secondaryFont,
                                  color: backgroundColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 600,
                        width: double.infinity,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 350,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: const Row(
                        children: [
                          SkillCard(
                            logo: card1,
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            cardTitle1: "Designer",
                            cardBody1:
                                "I value simple content structure, clean design patterns, and thoughtful interactions.",
                            cardTitle2: "Things I enjoy designing:",
                            cardBody2: "UX, UI & Mobile Apps",
                            cardTitle3: "Design Tools:",
                            cardBody3: "Figma\nPen & Paper\nAdobe XD\n",
                          ),
                          SkillCard(
                            logo: card2,
                            showLeftAndRightBorder: false,
                            cardTitle1: "Flutter Developer",
                            cardBody1:
                                "I like to code things from scratch, and enjoy bringing ideas to life in the mobile.",
                            cardTitle2: "State Management Solutions:",
                            cardBody2: "Bloc, GetX & Provider",
                            cardTitle3: "Dev Tools:",
                            cardBody3: "Firebase \nVS Code \nGithub \nJira",
                          ),
                          SkillCard(
                            cardTitle1: "Solution Architect",
                            logo: card3,
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            cardBody1:
                                "I love solving problems, and enjoy finding the most efficient solution.",
                            cardTitle2: "What I do?",
                            cardBody2:
                                "Find tech solutions for business needs.",
                            cardTitle3: "What can I do?:",
                            cardBody3:
                                "Low Level Design\nHigh Level Design\nPython Scripting\n",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        height: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "I'm proud to have worked for and contributed to these\n awesome companies",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 30),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  brightlight_health,
                                  width: 300,
                                ),
                                Image.asset(
                                  cognizant,
                                  width: 300,
                                ),
                                Image.asset(
                                  suite42,
                                  width: 300,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: primaryColor,
                        padding: EdgeInsets.only(bottom: 50, top: 100),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              "Living, learning, & leveling up\n one day at a time.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: secondaryFont,
                                color: backgroundColor,
                                fontSize: 23,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SocialIcon(
                                  icon: linkedin,
                                  url:
                                      "https://www.linkedin.com/in/naman-jain-15131414b/",
                                ),
                                SocialIcon(
                                  icon: github,
                                  url: "https://github.com/pynampy",
                                ),
                                SocialIcon(
                                  icon: mail,
                                  url: "mailto:namanjain221099@gmail.com",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Handcrafted with \u2764 in Flutter Web | \u00a9 2024",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: secondaryFont,
                                  color: backgroundColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 315,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff141C3A),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.3), // Gray shadow with 50% opacity
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 2), // Shadow position
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      height: 170,
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Start a project",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 32,
                                fontFamily: primaryFont,
                                color: Colors.white),
                          ),
                          Text(
                            "Interested in working together? We should queue up \na time to chat. I'll buy the coffee.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: secondaryFont,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                mailToMyself();
                              },
                              child: HoverElementFooter()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class SocialIcon extends StatefulWidget {
  final String icon;
  final String url;
  const SocialIcon({required this.icon, required this.url, super.key});

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        try {
          await html.window.open(widget.url, 'new tab');
        } catch (e) {
          print(e);
        }
      },
      child: MouseRegion(
        onEnter: (event) => setState(() {
          isHovered = true;
        }),
        onExit: (event) => setState(() {
          isHovered = false;
        }),
        child: Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: isHovered ? Colors.white : Colors.transparent,
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle),
          child: Center(
              child: Image.asset(
            widget.icon,
            height: 15,
            width: 20,
            color: isHovered ? primaryColor : Colors.white,
          )),
        ),
      ),
    );
  }
}

class HoverElementFooter extends StatefulWidget {
  const HoverElementFooter({super.key});

  @override
  State<HoverElementFooter> createState() => _HoverElementFooterState();
}

class _HoverElementFooterState extends State<HoverElementFooter> {
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
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        height: 54,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isHovered ? cardIconColor : Colors.transparent,
            border: Border.all(width: 2, color: cardIconColor)),
        child: Row(
          children: [
            Image.asset(
              yo_symbol,
              color: isHovered ? Colors.black : Colors.white,
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Let's do this!",
              style: TextStyle(
                fontSize: 20,
                fontFamily: primaryFont,
                color: isHovered ? Colors.black : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final Radius topLeft;
  final Radius bottomLeft;
  final Radius topRight;
  final Radius bottomRight;
  final bool showLeftAndRightBorder;
  final String logo;
  final String cardTitle1;
  final String cardBody1;
  final String cardTitle2;
  final String cardBody2;
  final String cardTitle3;
  final String cardBody3;

  const SkillCard(
      {this.topLeft = const Radius.circular(0),
      this.bottomLeft = const Radius.circular(0),
      this.topRight = const Radius.circular(0),
      this.bottomRight = const Radius.circular(0),
      this.showLeftAndRightBorder = true,
      required this.logo,
      required this.cardTitle1,
      required this.cardBody1,
      required this.cardBody2,
      required this.cardTitle2,
      required this.cardBody3,
      required this.cardTitle3,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: topLeft,
          bottomLeft: bottomLeft,
          topRight: topRight,
          bottomRight: bottomRight,
        ),
        child: Container(
          //     height: 700,
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 35),
          margin: const EdgeInsets.only(bottom: 2),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xffE6ECF8), // Gray shadow with 50% opacity
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 1), // Shadow position
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: topLeft,
              bottomLeft: bottomLeft,
              topRight: topRight,
              bottomRight: bottomRight,
            ),
            color: Colors.white,
            border: const Border(
              left: BorderSide(color: Color(0xffE6ECF8)),
              right: BorderSide(color: Color(0xffE6ECF8), width: 0.75),
              bottom: BorderSide(color: Color(0xffE6ECF8), width: 0.75),
              top: BorderSide(color: Color(0xffE6ECF8)),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                width: 75,
                height: 75,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: cardIconColor, shape: BoxShape.circle),
                child: Image.asset(logo),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                cardTitle1,
                style: const TextStyle(
                    fontSize: 28,
                    fontFamily: primaryFont,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                cardBody1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: primaryFont,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                cardTitle2,
                style: const TextStyle(
                    fontSize: 24,
                    color: primaryColor,
                    fontFamily: primaryFont,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                cardBody2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: primaryFont,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                cardTitle3,
                style: const TextStyle(
                    fontSize: 24,
                    color: primaryColor,
                    fontFamily: primaryFont,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                cardBody3,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: primaryFont,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
