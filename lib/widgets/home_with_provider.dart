import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/user.dart';
import '../provider/users_provider.dart';
import 'card_kast.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UsersProvider>(context);
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Column(
      children: [
        ElevatedButton(
          style: style,
          onPressed: () {
            userProvider.getData();
          },
          child: const Text('Show User'),
        )
      ],
    );
  }
}
