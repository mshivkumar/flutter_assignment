import 'package:flutter/material.dart';
import 'package:flutter_assignment_freepsace/utils/constants.dart';
import 'package:flutter_assignment_freepsace/widgets/reusbale_widgets/amenity.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduledEvent extends StatefulWidget {
  @override
  _ScheduledEventState createState() => _ScheduledEventState();
}

class _ScheduledEventState extends State<ScheduledEvent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            "3 June, Wednesday",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            FlatButton.icon(
              padding: EdgeInsets.zero,
              onPressed: null,
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey.shade700,
              ),
              label: Text(
                "My Plan",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey.shade700),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              color: accentColor,
              child: Text(
                "Change",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          child: Text(
            "Work From Office",
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          width: double.infinity,
          child: Text(
            "Office Address: Kimberly Gardens",
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: double.infinity,
          child: Text(
            "Amenities",
            style: GoogleFonts.robotoMono(
              textStyle: TextStyle(
                  // fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Amenity(
              width: 40.0,
              height: 40.0,
              icon: Icons.computer_outlined,
            ),
            SizedBox(
              width: 20.0,
            ),
            Amenity(
              width: 40.0,
              height: 40.0,
              icon: Icons.motorcycle_outlined,
            ),
            SizedBox(
              width: 20.0,
            ),
            Amenity(
              width: 40.0,
              height: 40.0,
              icon: Icons.print,
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Container(
          width: double.infinity,
          child: Text(
            "Desk and car parking are reserved, Your request for locker is being considered.",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
