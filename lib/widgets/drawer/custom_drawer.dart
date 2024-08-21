import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/widgets/drawer/drawer_items_list.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        elevation: 0,
        backgroundColor: const Color(0xffDBDBDB),
        child: ListView(
          children: const [
            DrawerHeader(
                child: Icon(FontAwesomeIcons.solidHeart, size: 50)),
            DrawerItemsList()
          ],
        ),
      ),
    );
  }
}
