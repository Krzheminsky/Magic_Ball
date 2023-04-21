import 'package:flutter/material.dart';
import 'dart:math';

class TransformDecreaces extends StatelessWidget {
  const TransformDecreaces({
    super.key,
    required Animation animation,
  }) : _animation = animation;

  final Animation _animation;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        100.0 - 340 * _animation.value,
        112.0 + (_animation.value * 24.0),
      ),
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.003)
          ..rotateY(pi * _animation.value),
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(248, 248, 51, 1),
          ),
          child: const Center(
            child: Text(
              '8',
              style: TextStyle(
                fontSize: 80,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
