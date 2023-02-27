import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Connstant.dart';
import 'icon_text_widget.dart';

class AppCC extends StatelessWidget {
  final String text1;
  const AppCC({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: 18,
            color: purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                // ignore: prefer_const_constructors
                return Icon(
                  Icons.star,
                  color: Colors.blue,
                  size: 16,
                );
              }),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("6.7"),
            const SizedBox(
              width: 50,
            ),
            Icon(
              Icons.reviews,
              color: Colors.red,
            ),
            const Text(
              "review",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const IconTextWidget(
              icon: Icons.rate_review,
              text: "Normal",
              color: purple,
              icolor: d4,
            ),
            const IconTextWidget(
                icon: Icons.location_on_outlined,
                text: "4.5",
                color: purple,
                icolor: d2),
            const IconTextWidget(
                icon: Icons.time_to_leave,
                text: "43min",
                color: purple,
                icolor: d1),
          ],
        ),
      ],
    );
  }
}
