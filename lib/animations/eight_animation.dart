import 'package:flutter/material.dart';
import 'package:bullet_animation/components/transform_decreaces.dart';
import 'package:bullet_animation/components/transform_growing.dart';

class EightAnimation extends StatelessWidget {
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

  EightAnimation({super.key, required this.controller}) {
    // cycle 1
    ovalDecreases = Tween(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.0,
          0.05,
          curve: Curves.linear,
        ),
      ),
    );
    ovalGrowing = Tween(begin: -0.5, end: -1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.035,
          0.1,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 2
    ovalDecreases2 = Tween(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.1,
          0.15,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing2 = Tween(begin: -0.5, end: -1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.135,
          0.2,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 3
    ovalDecreases3 = Tween(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.2,
          0.25,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing3 = Tween(begin: -0.5, end: -1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.235,
          0.3,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 4
    ovalDecreases4 = Tween(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.3,
          0.35,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing4 = Tween(begin: -0.5, end: -1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.335,
          0.4,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 5
    ovalDecreases5 = Tween(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.4,
          0.5,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing5 = Tween(begin: -0.5, end: -1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.47,
          0.6,
          curve: Curves.linear,
        ),
      ),
    );
    // cycle 6
    ovalDecreases6 = Tween(begin: 0.0, end: -0.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.6,
          0.75,
          curve: Curves.linear,
        ),
      ),
    );

    ovalGrowing6 = Tween(begin: -0.5, end: -1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(
          0.705,
          0.9,
          curve: Curves.linear,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (ovalGrowing.value != -1.0) {
      return Row(
        children: [
          TransformDecreaces(animation: ovalDecreases),
          TransformGrowing(animation: ovalGrowing),
        ],
      );
    } else if (ovalGrowing2.value != -1.0) {
      return Row(
        children: [
          TransformDecreaces(animation: ovalDecreases2),
          TransformGrowing(animation: ovalGrowing2),
        ],
      );
    } else if (ovalGrowing3.value != -1.0) {
      return Row(
        children: [
          TransformDecreaces(animation: ovalDecreases3),
          TransformGrowing(animation: ovalGrowing3),
        ],
      );
    } else if (ovalGrowing4.value != -1.0) {
      return Row(
        children: [
          TransformDecreaces(animation: ovalDecreases4),
          TransformGrowing(animation: ovalGrowing4),
        ],
      );
    } else if (ovalGrowing5.value != -1.0) {
      return Row(
        children: [
          TransformDecreaces(animation: ovalDecreases5),
          TransformGrowing(animation: ovalGrowing5),
        ],
      );
    } else {
      return Row(
        children: [
          TransformDecreaces(animation: ovalDecreases6),
          TransformGrowing(animation: ovalGrowing6),
        ],
      );
    }
  }
}
