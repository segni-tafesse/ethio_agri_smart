import 'package:ethio_agri_smart/color.dart';
import 'package:flutter/material.dart';

final ButtonStyle buttonprimary = ElevatedButton.styleFrom(
  minimumSize: Size(1000, 40),
  primary: purple,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);
