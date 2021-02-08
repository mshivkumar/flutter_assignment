import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_assignment_freepsace/widgets/reusbale_widgets/amenities_list_item.dart';

class CollapsibleView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;

  CollapsibleView({this.title, this.subtitle, this.description});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: Text(
        title,
        style:
            TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
      ),
      children: [
        /// Office Address
        Container(
          width: double.infinity,
          child: Text(
            subtitle.toUpperCase(),
            textAlign: TextAlign.start,
            style: GoogleFonts.hindSiliguri(
              textStyle: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500),
            ),
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Container(
          width: double.infinity,
          child: Text(
            description,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey.shade700),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),

        /// Amenities
        Container(
          width: double.infinity,
          child: Text(
            "Amenities".toUpperCase(),
            style: GoogleFonts.hindSiliguri(
              textStyle: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500),
            ),
          ),
        ),
        SizedBox(height: 6.0,),
        Column(children: [
          AmenitiesListItem(icon: Icons.computer_outlined, amenity: "Desk # ", info: "Floor 9, FIN-AB-64",),
          AmenitiesListItem(icon: Icons.motorcycle_outlined, amenity: "Cycle Stand # ", info: "4",),
          AmenitiesListItem(icon: Icons.lock_open_outlined, amenity: "Locker # ", info: "26",),
        ],),
      ],
    );
  }
}
