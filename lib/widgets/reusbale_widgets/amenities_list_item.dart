import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_freepsace/widgets/reusbale_widgets/amenity.dart';

class AmenitiesListItem extends StatelessWidget {
  final IconData icon;
  final String amenity;
  final String info;

  AmenitiesListItem({this.icon, this.amenity, this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Amenity(width: 40.0, height: 40.0, icon: icon,),
          SizedBox(
            width: 8.0,
          ),
          Text(
            amenity,
            style: TextStyle(
                color: Colors.grey.shade400, fontWeight: FontWeight.w500),
          ),
          Text(
            info,
            style: TextStyle(
                color: Colors.grey.shade700, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
