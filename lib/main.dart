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
      home: const MyHomePage(title: 'Naman Jain'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 50),
        margin: EdgeInsets.symmetric(horizontal: 122),
        decoration: BoxDecoration(
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
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Naman",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Handlee",
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Portfolio",
                  style: TextStyle(fontFamily: "Inter", fontSize: 24),
                ),
                SizedBox(
                  width: 10,
                ),
                TextWithHighlight(),
              ],
            )
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
      text: TextSpan(
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
              stops: [
                0,
                0.5,
                0.5,
                0.8,
                0.8
              ])),
      child: Text(
        text,
        style: TextStyle(fontFamily: "Inter", fontSize: 24),
      ),
    );
  }
}
