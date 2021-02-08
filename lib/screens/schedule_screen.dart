import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_freepsace/utils/constants.dart';
import 'package:flutter_assignment_freepsace/widgets/schedule_screen/calendar_widget.dart';
import 'package:flutter_assignment_freepsace/widgets/schedule_screen/scheduled_event.dart';


class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "My Schedule",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),
          ),
          Container(
            width: double.infinity,
            child: Calendar(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                SizedBox(width: 6.0,),
                Text("Work from office", style: TextStyle(color: Colors.grey.shade700),)
            ],),
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            thickness: 1.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          ScheduledEvent(),
        ],
      ),
    );
  }
}
