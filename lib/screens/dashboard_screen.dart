import 'package:flutter/material.dart';
import 'package:flutter_assignment_freepsace/widgets/dashboard_screen/dashboard_body.dart';
import 'package:flutter_assignment_freepsace/widgets/dashboard_screen/dashboard_header.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashBoardHeader(),
        DashBoardBody(),
      ],
    );
  }
}
