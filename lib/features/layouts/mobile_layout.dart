import 'package:flutter/material.dart';
import 'package:test_app/core/utils/responsive_text_functions.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Mobile Layout",
        style:
            TextStyle(fontSize: getResponsiveFontSize(fontSize: 18, context)),),
    );
  }
}