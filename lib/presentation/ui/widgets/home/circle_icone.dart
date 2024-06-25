import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.ontap,
    required this.iconData,
  });

  final VoidCallback ontap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(15),
        child: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.grey.shade300,
          child: Icon(
            iconData,
            color: Colors.grey,
          ),
        ));
  }
}
