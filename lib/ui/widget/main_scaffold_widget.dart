import 'package:flutter/material.dart';

class MainScaffoldWidget extends StatelessWidget {
  Widget body;
  double? bottom;
  MainScaffoldWidget({Key? key, required this.body, this.bottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            EdgeInsets.only(left: 30, right: 30, bottom: bottom ?? 0, top: 40),
        child: body,
      ),
    );
  }
}
