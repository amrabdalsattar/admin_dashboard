import 'package:flutter/material.dart';
import 'package:test_app/core/utils/responsive_text_functions.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Tablet Layout",
        style:
            TextStyle(fontSize: getResponsiveFontSize(fontSize: 18, context)),),
    );
  }
}