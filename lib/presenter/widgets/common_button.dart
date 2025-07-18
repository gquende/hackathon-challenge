import 'package:flutter/material.dart';
import 'package:nossa_seguros/utils/constants/app_colors.dart';

class CommonButton extends StatelessWidget {
  Function action;
  // String title;
  bool active = true;
  Widget title;

  CommonButton(
      {super.key,
      required this.title,
      required this.action,
      required this.active});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return TextButton(
      style: active
          ? TextButton.styleFrom(backgroundColor: SECONDARYCOLOR)
          : TextButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
      onPressed: () {
        if (active) {
          action();
        }
      },
      child: Container(
        width: size.width,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: title,
            )),
      ),
    );
  }
}
