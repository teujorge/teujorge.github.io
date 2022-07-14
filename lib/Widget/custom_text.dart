import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color? color;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  CustomText(
      {required this.text,
      required this.textsize,
      this.color,
      this.letterSpacing,
      this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: textsize,
        letterSpacing: letterSpacing == null ? 0.10 : letterSpacing,
        fontWeight: fontWeight == null ? FontWeight.w400 : fontWeight,
      ),
    );
  }
}

class MainHeader extends StatelessWidget {
  final String number, text;
  MainHeader({required this.number, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: number,
          textsize: 20.0,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          width: 12.0,
        ),
        CustomText(
          text: text,
          textsize: 26.0,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}

class AppBarTitle extends StatelessWidget {
  final String text;
  //final Function ontab;

  AppBarTitle({
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14.0,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            letterSpacing: 3.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
