import "package:flutter/material.dart";

InputDecoration buildInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    filled: true,
    fillColor: const Color(0xFF333333),
    prefixIcon: Icon(icons, color: Colors.white),
    hintText: hinttext,
    hintStyle: const TextStyle(
      color: Color(0xFF828282),
      fontWeight: FontWeight.w400,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
  );
}
