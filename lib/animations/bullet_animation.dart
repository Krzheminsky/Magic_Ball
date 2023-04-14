import 'package:flutter/material.dart';

class BulletAnimation extends CustomPainter {
  final AnimationController controller;
  late final Animation<double> ovalGrowing;
  late final Animation<double> ovalDecreases;
  late final Animation<double> ovalGrowing2;
  late final Animation<double> ovalDecreases2;
  late final Animation<double> ovalGrowing3;
  late final Animation<double> ovalDecreases3;
  late final Animation<double> ovalGrowing4;
  late final Animation<double> ovalDecreases4;
  late final Animation<double> ovalGrowing5;
  late final Animation<double> ovalDecreases5;
  late final Animation<double> ovalGrowing6;
  late final Animation<double> ovalDecreases6;

  BulletAnimation(this.controller) {
    // cycle 1

    ovalDecreases = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          0.05,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.03,
          0.1,
          curve: Curves.linear,
        ),
      ),
    );

    // cycle 2
    ovalDecreases2 = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.1,
          0.15,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing2 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.13,
          0.2,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 3
    ovalDecreases3 = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.2,
          0.25,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing3 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.23,
          0.3,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 4
    ovalDecreases4 = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.3,
          0.35,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing4 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.33,
          0.4,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 5
    ovalDecreases5 = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.4,
          0.5,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing5 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.46,
          0.6,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 6
    ovalDecreases6 = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.6,
          0.75,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing6 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.69,
          0.9,
          curve: Curves.linear,
        ),
      ),
    );
  }
  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    final oval = Paint()
      ..shader = const RadialGradient(
        // center: Alignment.center,
        center: Alignment(0.5, -0.5),
        radius: 0.7,
        colors: [
          Color.fromARGB(255, 255, 255, 255),
          Color.fromRGBO(255, 255, 120, 1),
          Color.fromRGBO(245, 245, 106, 1),
          Color.fromRGBO(247, 247, 80, 1),
          Color.fromRGBO(247, 247, 68, 1),
          Color.fromRGBO(248, 248, 51, 1),
          Color.fromRGBO(248, 248, 10, 1),
          Color.fromRGBO(248, 248, 3, 1),
        ],
      ).createShader(Rect.fromLTRB(0, 0, size.width, size.height));

    final eight = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;

    // cycle 1
// ovalDecreases
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(centerX + (1 - ovalDecreases.value) * (centerX + 50),
            centerY + (12 * ovalDecreases.value)),
        width: size.width / 3 * ovalDecreases.value,
        height: size.height / 3,
      ),
      oval,
    );

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(centerX + (1 - ovalDecreases.value) * (centerX + 50),
            (centerY - 17) + (12 * ovalDecreases.value)),
        width: size.width / 10 * ovalDecreases.value,
        height: size.height / 10,
      ),
      eight,
    );

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(centerX + (1 - ovalDecreases.value) * (centerX + 50),
            (centerY + 17) + (12 * ovalDecreases.value)),
        width: size.width / 8 * ovalDecreases.value,
        height: size.height / 8,
      ),
      eight,
    );

// ovalGrowing
    if (ovalGrowing.value < 1) {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 + (ovalGrowing.value * (ovalGrowing.value + 50 + centerX))),
              centerY + 12 * ovalGrowing.value),
          width: (size.width / 3) * ovalGrowing.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 + (ovalGrowing.value * (ovalGrowing.value + 50 + centerX))),
              (centerY - 17) + 12 * ovalGrowing.value),
          width: (size.width / 10) * ovalGrowing.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 + (ovalGrowing.value * (ovalGrowing.value + 50 + centerX))),
              (centerY + 17) + 12 * ovalGrowing.value),
          width: (size.width / 8) * ovalGrowing.value,
          height: size.height / 8,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    }

    // cycle 2
    // ovalDecreases

    if (ovalDecreases2.value == 1.0) {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases2.value) * (centerX + 50),
              centerY + (12 * ovalDecreases2.value)),
          width: size.width / 3 * ovalDecreases2.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases2.value) * (centerX + 50),
              (centerY - 17) + (12 * ovalDecreases2.value)),
          width: size.width / 10 * ovalDecreases2.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases2.value) * (centerX + 50),
              (centerY + 17) + (12 * ovalDecreases2.value)),
          width: size.width / 8 * ovalDecreases2.value,
          height: size.height / 8,
        ),
        eight,
      );
    }

    // // ovalGrowing
    if (ovalGrowing2.value < 1) {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing2.value * (ovalGrowing2.value + 50 + centerX))),
              centerY + 12 * ovalGrowing2.value),
          width: (size.width / 3) * ovalGrowing2.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing2.value * (ovalGrowing2.value + 50 + centerX))),
              (centerY - 17) + 12 * ovalGrowing2.value),
          width: (size.width / 10) * ovalGrowing2.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing2.value * (ovalGrowing2.value + 50 + centerX))),
              (centerY + 17) + 12 * ovalGrowing2.value),
          width: (size.width / 8) * ovalGrowing2.value,
          height: size.height / 8,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    }
    // cycle 3
    // ovalDecreases
    if (ovalDecreases3.value == 1.0) {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases3.value) * (centerX + 50),
              centerY + (12 * ovalDecreases3.value)),
          width: size.width / 3 * ovalDecreases3.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases3.value) * (centerX + 50),
              (centerY - 17) + (12 * ovalDecreases3.value)),
          width: size.width / 10 * ovalDecreases3.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases3.value) * (centerX + 50),
              (centerY + 17) + (12 * ovalDecreases3.value)),
          width: size.width / 8 * ovalDecreases3.value,
          height: size.height / 8,
        ),
        eight,
      );
    }

// ovalGrowing
    if (ovalGrowing3.value < 1) {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing3.value * (ovalGrowing3.value + 50 + centerX))),
              centerY + 12 * ovalGrowing3.value),
          width: (size.width / 3) * ovalGrowing3.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing3.value * (ovalGrowing3.value + 50 + centerX))),
              (centerY - 17) + 12 * ovalGrowing3.value),
          width: (size.width / 10) * ovalGrowing3.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing3.value * (ovalGrowing3.value + 50 + centerX))),
              (centerY + 17) + 12 * ovalGrowing3.value),
          width: (size.width / 8) * ovalGrowing3.value,
          height: size.height / 8,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    }
    // cycle 4
    // ovalDecreases
    if (ovalDecreases4.value == 1.0) {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases4.value) * (centerX + 50),
              centerY + (12 * ovalDecreases4.value)),
          width: size.width / 3 * ovalDecreases4.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases4.value) * (centerX + 50),
              (centerY - 17) + (12 * ovalDecreases4.value)),
          width: size.width / 10 * ovalDecreases4.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases4.value) * (centerX + 50),
              (centerY + 17) + (12 * ovalDecreases4.value)),
          width: size.width / 8 * ovalDecreases4.value,
          height: size.height / 8,
        ),
        eight,
      );
    }

// ovalGrowing
    if (ovalGrowing4.value < 1) {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing4.value * (ovalGrowing4.value + 50 + centerX))),
              centerY + 12 * ovalGrowing4.value),
          width: (size.width / 3) * ovalGrowing4.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing4.value * (ovalGrowing4.value + 50 + centerX))),
              (centerY - 17) + 12 * ovalGrowing4.value),
          width: (size.width / 10) * ovalGrowing4.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing4.value * (ovalGrowing4.value + 50 + centerX))),
              (centerY + 17) + 12 * ovalGrowing4.value),
          width: (size.width / 8) * ovalGrowing4.value,
          height: size.height / 8,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    }
    // cycle 5
    // ovalDecreases
    if (ovalDecreases5.value == 1.0) {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases5.value) * (centerX + 50),
              centerY + (12 * ovalDecreases5.value)),
          width: size.width / 3 * ovalDecreases5.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases5.value) * (centerX + 50),
              (centerY - 17) + (12 * ovalDecreases5.value)),
          width: size.width / 10 * ovalDecreases5.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases5.value) * (centerX + 50),
              (centerY + 17) + (12 * ovalDecreases5.value)),
          width: size.width / 8 * ovalDecreases5.value,
          height: size.height / 8,
        ),
        eight,
      );
    }

// ovalGrowing
    if (ovalGrowing5.value < 1) {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing5.value * (ovalGrowing5.value + 50 + centerX))),
              centerY + 12 * ovalGrowing5.value),
          width: (size.width / 3) * ovalGrowing5.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing5.value * (ovalGrowing5.value + 50 + centerX))),
              (centerY - 17) + 12 * ovalGrowing5.value),
          width: (size.width / 10) * ovalGrowing5.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(
              (-50 +
                  (ovalGrowing5.value * (ovalGrowing5.value + 50 + centerX))),
              (centerY + 17) + 12 * ovalGrowing5.value),
          width: (size.width / 8) * ovalGrowing5.value,
          height: size.height / 8,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    }
    // cycle 6
    // ovalDecreases
    if (ovalDecreases6.value == 1.0) {
      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: const Offset(0, 0),
          width: 0,
          height: 0,
        ),
        eight,
      );
    } else {
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases6.value) * (centerX + 50),
              centerY + (12 * ovalDecreases6.value)),
          width: size.width / 3 * ovalDecreases6.value,
          height: size.height / 3,
        ),
        oval,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases6.value) * (centerX + 50),
              (centerY - 17) + (12 * ovalDecreases6.value)),
          width: size.width / 10 * ovalDecreases6.value,
          height: size.height / 10,
        ),
        eight,
      );

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(centerX + (1 - ovalDecreases6.value) * (centerX + 50),
              (centerY + 17) + (12 * ovalDecreases6.value)),
          width: size.width / 8 * ovalDecreases6.value,
          height: size.height / 8,
        ),
        eight,
      );
    }

// ovalGrowing
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(
            (-50 + (ovalGrowing6.value * (ovalGrowing6.value + 50 + centerX))),
            centerY + 12 * ovalGrowing6.value),
        width: (size.width / 3) * ovalGrowing6.value,
        height: size.height / 3,
      ),
      oval,
    );

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(
            (-50 + (ovalGrowing6.value * (ovalGrowing6.value + 50 + centerX))),
            (centerY - 17) + 12 * ovalGrowing6.value),
        width: (size.width / 10) * ovalGrowing6.value,
        height: size.height / 10,
      ),
      eight,
    );

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(
            (-50 + (ovalGrowing6.value * (ovalGrowing6.value + 50 + centerX))),
            (centerY + 17) + 12 * ovalGrowing6.value),
        width: (size.width / 8) * ovalGrowing6.value,
        height: size.height / 8,
      ),
      eight,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
