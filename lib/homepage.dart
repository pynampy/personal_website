import 'package:flutter/material.dart';
import 'package:namanjain_dev/constants.dart';
import 'package:namanjain_dev/header/header.dart';

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
                "Designer, Frontend Developer & Mentor",
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
                        height: 1000,
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
                            cardBody2: "UX, UI, Web, Apps, Logos",
                            cardTitle3: "Design Tools:",
                            cardBody3:
                                "Affinity Designer \nFigma\nPen & Paper\nSketch",
                          ),
                          SkillCard(
                            logo: card2,
                            showLeftAndRightBorder: false,
                            cardTitle1: "Frontend Developer",
                            cardBody1:
                                "I like to code things from scratch, and enjoy bringing ideas to life in the browser.",
                            cardTitle2: "Things I enjoy designing:",
                            cardBody2: "UX, UI, Web, Apps, Logos",
                            cardTitle3: "Design Tools:",
                            cardBody3:
                                "Affinity Designer \nFigma\nPen & Paper\nSketch",
                          ),
                          SkillCard(
                            cardTitle1: "Mentor",
                            logo: card3,
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            cardBody1:
                                "I genuinely care about people, and enjoy helping them work on their craft.",
                            cardTitle2: "Things I enjoy designing:",
                            cardBody2: "UX, UI, Web, Apps, Logos",
                            cardTitle3: "Design Tools:",
                            cardBody3:
                                "Affinity Designer \nFigma\nPen & Paper\nSketch",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                height: 300,
              ),
            ],
          ),
        ));
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
          //  width: 450,
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
            ],
          ),
        ),
      ),
    );
  }
}
