import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning_flutter/provider/users_provider.dart';
import 'package:learning_flutter/uicomponen.dart';
import 'package:learning_flutter/widgets/card_kast.dart';
import 'package:learning_flutter/widgets/home_page_bloc.dart';
import 'package:learning_flutter/widgets/home_with_bloc.dart';
import 'package:learning_flutter/widgets/home_with_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Widget> listContent = [
    UiComponen().CategoryCard(),
    UiComponen().cardKas(),
    UiComponen().cardKas(),
    UiComponen().cardKas(),
  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: const HomePageBloc() ,
            appBar: AppBar(
              title: const Center(
                child: Text("My App"),
              ),
            ),
          ),
        );
  }
}
