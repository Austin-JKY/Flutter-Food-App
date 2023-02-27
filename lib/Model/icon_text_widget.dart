import 'package:flutter/cupertino.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color icolor;
  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.icolor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            icon,
            color: icolor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
