import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/user.dart';
import '../provider/users_provider.dart';

class KasCard extends StatelessWidget {
  final User user;

  const KasCard(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 4,
      color: const Color.fromRGBO(64, 75, 96, .9),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(user.data!.first_name,
                    style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text( user.data!.last_name, style: const TextStyle(color: Colors.white70)),
                Text(  user.data!.email, style: const TextStyle(color: Colors.white70)),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              child: Image.network( user.data!.avatar),
            ),
          ],
        ),
      ),
    );
  }
}
