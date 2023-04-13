// ignore_for_file: must_be_immutable, depend_on_referenced_packages, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:bullet_animation/components/decisions.dart' as decition;

class TextAnimation extends StatelessWidget {
  final AnimationController controller;

  List<String> list = decition.desitions;

  TextAnimation({super.key, required this.controller})
      : addText = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.9,
              1.0,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> addText;

  @override
  Widget build(BuildContext context) {
    var randomText = list.sample(1).single;

    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 100.0,
        height: 100.0,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:
              const Color.fromRGBO(248, 248, 51, 1).withOpacity(addText.value),
          shape: BoxShape.circle,
        ),
        child: Text(
          '$randomText',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromARGB(255, 151, 10, 0)
                .withOpacity(addText.value),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
