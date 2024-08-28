import 'package:flutter/material.dart';
import 'package:test_app/core/constants.dart';
import 'package:test_app/features/shared_components/user_info_list_tile.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: Constants.users
              .map((user) => UserInfoListTile(user: user))
              .toList()),
    );
  }
}
