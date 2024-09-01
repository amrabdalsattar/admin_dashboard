import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';
import 'core/utils/size_config.dart';
import 'features/drawer/custom_drawer.dart';
import 'features/layouts/adaptive_layout.dart';
import 'features/layouts/desktop_layout.dart';
import 'features/layouts/mobile_layout.dart';
import 'features/layouts/tablet_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.initSizeConfig(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: SizedBox(
          width: SizeConfig.width * 0.6,
          child: const CustomDrawer(
            isMobileDrawer: true,
          )),
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.liteGrey,
              leading: GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  child: const Icon(Icons.menu)),
            )
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout()),
    );
  }
}
