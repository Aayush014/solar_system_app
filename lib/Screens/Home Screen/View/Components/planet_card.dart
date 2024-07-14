import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget planetCard(double height, String s1, String p1, String i1) {
  return Align(
    alignment: Alignment.center,
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: height / 2,
          width: height / 2.5,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: height / 2.5,
            width: height / 2.5,
            decoration: BoxDecoration(
              color: const Color(0xff008DCA).withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  Text(
                    s1,
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 45, color: Colors.white),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        p1,
                        style: GoogleFonts.jetBrainsMono(
                            fontSize: 45, color: Colors.white),
                      ),
                      const Icon(
                        Icons.navigate_next,
                        size: 45,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: height / 4,
          child: TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: 100 * pi,
            ),
            duration: const Duration(seconds: 800),
            builder: (context, value, child) {
              return Transform.rotate(
                angle: value,
                child: child,
              );
            },
            child: Hero(
              tag: "planet",
              child: Image.asset(
                i1,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
