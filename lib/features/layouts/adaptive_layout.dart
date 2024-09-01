import 'package:flutter/material.dart';

import '../../core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      switch (constrains.maxWidth) {
        case < SizeConfig.tablet:
          return mobileLayout(context);

        case < SizeConfig.desktop:
          return tabletLayout(context);

        default:
          return desktopLayout(context);
      }
    });
  }
}
