import 'package:flutter/material.dart';
import 'package:test_app/widgets/layouts/mobile_layout.dart';
import 'package:test_app/widgets/layouts/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth > 600){
        return const TabletLayout();
      }else{
        return const MobileLayout();
      }
    });
  }
}
