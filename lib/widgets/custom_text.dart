import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  const CustomeText({
    Key? key,
    required this.text,
     this.size,
     this.color,
     this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.bold,
        color: color ?? Colors.black,
      ),
    );
  }
}
