import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:bullet_animation/animations/bullet_animation.dart';
import 'package:bullet_animation/animations/text_animation.dart';

class Transition extends StatelessWidget {
  final AnimationController controller;

  const Transition({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Stack(
          children: [
            CustomPaint(
              painter: BulletAnimation(controller),
              size: const Size(300, 300),
            ),
            Positioned(
              left: 101,
              top: 112,
              child: TextAnimation(
                controller: controller,
              ),
            )
          ],
        );
      },
    );
  }
}
