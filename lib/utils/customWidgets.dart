import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget divisorListMain() => const Divider(
    height: 5,
    color: Colors.black54,
  );

Widget buildSvgIcon(String pathName) => SvgPicture.asset(
    pathName,
    width: 48,
    height: 48
  );