import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../shared_components/user_info_list_tile.dart';


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
