import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app_icons/custom_icons.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF5F5F5), // Light grey background
        hintText: 'Search',
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Color(0xFFF5F5F5), // Grey border color
            width: 1.0,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Color(0xFFF5F5F5), // Grey border color
            width: 1.0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Color(0xFFF5F5F5), // Grey border color
            width: 1.0,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Color(0xFFF5F5F5), // Grey border color
            width: 1.0,
          ),
        ),
        prefixIcon: SvgPicture.asset(
            CustomIcons.search,
            height: 5, // Set the height of the icon
            width: 5,  // Set the width of the icon
          ),
      ),
    );
  }
}
