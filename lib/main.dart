import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';
import 'home_page.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => const AdminDashboard()));
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const HomePage(),
    );
  }
}
