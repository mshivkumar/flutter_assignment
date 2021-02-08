import 'package:flutter/material.dart';
import 'package:flutter_assignment_freepsace/utils/constants.dart';
import 'package:flutter_assignment_freepsace/widgets/dashboard_screen/chart_info_widget.dart';
import 'package:flutter_assignment_freepsace/widgets/reusbale_widgets/expansion_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          /// Below container contains widgets for
          /// Change/Manage Today's Schedule
          /// WokSpace details in collapsible panel
          /// Building occupancy represented in Chart
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: cardBackground,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Change/Manage Today's Schedule
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Today's Schedule",
                                style: GoogleFonts.lexendMega(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade600),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ButtonTheme(
                                minWidth: 100,
                                height: 30,
                                child: FlatButton(
                                  onPressed: () {},
                                  color: Color(0XFFF08A33),
                                  child: Text(
                                    "Group A",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Work From Office",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
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
                  SizedBox(
                    height: 10.0,
                  ),
                  // WokSpace details in collapsible panel
                  CollapsibleView(
                    title: "Details",
                    subtitle: "Office Address",
                    description: "Kimberly Gardens, London",
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  // Building occupancy represented in Chart
                  ChartInfo(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          /// Contains the Check-in button
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: cardBackground,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Scan SPOT tag to check-in!",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    height: 45,
                    child: FlatButton(
                      onPressed: () {},
                      color: accentColor,
                      child: Text(
                        "Check-In",
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
