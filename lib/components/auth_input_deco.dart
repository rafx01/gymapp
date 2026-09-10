import 'package:flutter/material.dart';
import 'package:gymapp/_common/colors.dart';

InputDecoration getAuthFieldInputDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(64)),
    contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(color: Colors.blueGrey, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(color: MyColors.darkBlue, width: 4),
    ),
  );
}
