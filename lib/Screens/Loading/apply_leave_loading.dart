import 'package:flutter/material.dart';
import 'package:ict_mu_students/Helper/Components.dart';

import 'package:ict_mu_students/Helper/colors.dart';
import 'package:ict_mu_students/Helper/size.dart';

class ApplyLeaveLoading extends StatelessWidget {
  const ApplyLeaveLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: Center(
          child: Container(
            height: getHeight(context, 0.15),
            width: getWidth(context, 0.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRad),
                color: backgroundColor
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation(muColor),
                ),
                SizedBox(height: 25,),
                Text('Applying For Leave...'),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
