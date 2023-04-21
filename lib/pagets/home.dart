import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bullet_animation/components/transition.dart';

const duration = Duration(milliseconds: 12000);

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  void _restartAnimation() {
    _controller.value = 0.0;
    setState(() {
      _controller.forward();
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Color.fromARGB(255, 104, 7, 0)),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 131, 10, 2),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 30, 40),
                child: Text(
                  "Привіт! Я Магічна Куля. \nЯкщо тобі важко самостійно прийняти рішення, тицяй мене.",
                  textAlign: TextAlign.center,
                  // style: TextStyle(fontFamily: ),
                  style: GoogleFonts.caveat(
                      color: const Color.fromARGB(255, 0, 240, 60),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
            Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: const Offset(-1, 0), // Shadow position
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: GestureDetector(
                  onTap: () {
                    if (_controller.status == AnimationStatus.completed) {
                      _restartAnimation();
                    } else {
                      setState(() {
                        _controller.forward();
                      });
                    }
                  },
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        center: Alignment(0.5, -0.5),
                        radius: 0.9,
                        colors: [
                          Color.fromARGB(255, 254, 253, 255),
                          Color.fromARGB(255, 31, 233, 5),
                          Color.fromARGB(255, 31, 196, 9),
                          Color.fromARGB(255, 28, 177, 8),
                          Color.fromARGB(255, 25, 158, 8),
                          Color.fromARGB(255, 22, 131, 7),
                          Color.fromARGB(255, 18, 114, 6),
                          Color.fromARGB(255, 13, 80, 4),
                          Color.fromARGB(255, 10, 63, 3),
                          Color.fromARGB(255, 7, 56, 1),
                        ],
                      ),
                    ),
                    child: Transition(controller: _controller),
                  ),
                ),
              ),
            ),
            // ),
          ],
        ),
      )),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5.0),
        height: 40.0,
        color: Colors.red,
        child: Column(
          children: const [
            Text(
              'With best wishes, Viktor Krzeminskiy',
              style: TextStyle(color: Color.fromARGB(255, 122, 1, 1)),
              textAlign: TextAlign.center,
            ),
            Text(
              'krzeminsky@ukr.net',
              style: TextStyle(
                  color: Color.fromARGB(255, 110, 0, 0), fontSize: 12.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
