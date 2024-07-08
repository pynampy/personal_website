import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        margin: const EdgeInsets.symmetric(horizontal: 122),
        decoration: const BoxDecoration(
            border: Border(left: BorderSide(width: 3)),
            image: DecorationImage(
                image: AssetImage("assets/dots.png"),
                repeat: ImageRepeat.repeat)),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.475,
                ),
                Image.asset(
                  "assets/Icon_before_name.png",
                  height: 45,
                  width: 45,
                ),
                const SizedBox(
                  width: 11,
                ),
                const Text(
                  "Naman",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Handlee",
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                const Text(
                  "Portfolio",
                  style: TextStyle(fontFamily: "Inter", fontSize: 24),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextWithHighlight(),
              ],
            ),
            Image.asset(
              "assets/mf-avatar.png",
            ),
          ],
        ),
      ),
    );
  }
}

class TextWithHighlight extends StatelessWidget {
  final String text;
  final Color color;
  TextWithHighlight(
      {this.text = "Hire Me", this.color = const Color(0xffFFC9F0), super.key});

  final tp = TextPainter(
      text: const TextSpan(
          text: 'Hire Me', style: TextStyle(fontFamily: "Inter", fontSize: 24)),
      textDirection: TextDirection.ltr);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                color,
                color,
                Colors.transparent
              ],
              stops: const [
                0,
                0.5,
                0.5,
                0.8,
                0.8
              ])),
      child: Text(
        text,
        style: const TextStyle(fontFamily: "Inter", fontSize: 24),
      ),
    );
  }
}
