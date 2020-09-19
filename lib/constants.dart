import 'dart:ui';

import 'package:flutter/material.dart';

// Defining colors
const Color bgColor = Color(0xFF262A2E);
const Color cardColor = Color(0xFF303539);
const Color titleColor = Color(0xFFBB86FC);
const Color pinkishColor = Color(0xFFFD8090);
const Color neonGreen = Color(0xFF03DAC6);
final Color fireRadiusColor = Color(0xFFFA7E1E).withOpacity(0.5);
const Color purpleColor = Color(0xFFAF43BE);

//Defining TextStyles

const TextStyle titleTextStyle = TextStyle(
  fontFamily: "Kanit",
  color: titleColor,
  fontWeight: FontWeight.bold,
  fontSize: 40,
);

const TextStyle subTextStyle = TextStyle(
  fontFamily: "Kanit",
  color: neonGreen,
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

const TextStyle cardTextStyle = TextStyle(
  fontFamily: "Kanit",
  color: neonGreen,
  fontWeight: FontWeight.w600,
  fontSize: 18,
);

const TextStyle redTextStyle = TextStyle(
  color: pinkishColor,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

const TextStyle normalTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
  fontWeight: FontWeight.normal,
);