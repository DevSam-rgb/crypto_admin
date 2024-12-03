import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';

class DashboardCard extends StatelessWidget {
  final String iconPath;
  final String value;
  final String title;
  final String change;

  const DashboardCard({
    Key? key,
    required this.iconPath,
    required this.value,
    required this.title,
    required this.change,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5), // Light grey background
        border: Border.all(color: Colors.grey, width: 0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white, // Set the desired background color
                radius: 20, // Adjust the radius as needed
                child: SvgPicture.asset(
                  iconPath,
                  color: Color.fromARGB(255, 1, 67, 187),// Use the icon parameter for the SVG asset path.
                ),
              ),
              const Spacer(),
              Text(value,
                  style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
            ],
          ),
          Row(
            children: [
              Text(
                title,
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              Text(change,
                  style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(
                      255,
                      0,
                      154,
                      73,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
