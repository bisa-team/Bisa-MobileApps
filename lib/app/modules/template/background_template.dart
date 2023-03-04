import 'package:flutter/material.dart';

class BackgroundTemplate extends StatelessWidget {
  const BackgroundTemplate({
    super.key,
    this.widget,
  });

  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);
    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: Image.asset(
            "assets/images/splashscreen.png",
            fit: BoxFit.fill,
          ),
        ),
        widget ?? const SizedBox(),
      ],
    );
  }
}
