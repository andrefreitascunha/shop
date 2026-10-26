import 'package:flutter/material.dart';

class Badgetag extends StatelessWidget {

  final Widget child;
  final String value;
  final Color? color;

  const Badgetag({
    required this.child,
    required this.value,
    this.color,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: color ?? Colors.red,
                    borderRadius: BorderRadius.circular(10),
                ),
                constraints: BoxConstraints(
                    minWidth: 10,
                    minHeight: 10,
                ),
                child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                    ),
                ),
            ),
        ),
      ],
    );
  }
}
