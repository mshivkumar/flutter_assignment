import 'package:flutter/material.dart';

class Amenity extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;

  Amenity({this.width, this.height, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color(0XFFE0DFE7),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Icon(icon, color: Colors.grey.shade700),
      ),
    );
  }
}
