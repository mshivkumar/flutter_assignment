import 'package:flutter/material.dart';
import 'package:flutter_assignment_freepsace/utils/constants.dart';

class DashBoardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(15.0),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user_icon.png'),
        radius: 30,
      ),
      title: Text("Hello,", style: TextStyle(fontSize: 14, color: Colors.grey),),
      subtitle: Text(
        "Grayce Lemke",
        style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      ),
      trailing: Stack(
        children: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined),
            onPressed: () {},
            color: accentColor,
          ),
          Positioned(
            top: 15.0,
            right: 15.0,
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
