import 'package:flutter/material.dart';
import 'package:flutter_assignment_freepsace/widgets/dashboard_screen/chart_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 328,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Building Occupancy",
              textAlign: TextAlign.start,
              style: GoogleFonts.robotoMono(
                textStyle: TextStyle(
                    // fontSize: 16,
                  letterSpacing: 1.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade600),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          ChartWidget()
        ],
      ),
    );
  }
}
