import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter/blocs/user_bloc_new.dart';

import 'card_kast.dart';

class HomePageBloc extends StatefulWidget {
  const HomePageBloc({super.key});

  @override
  State<HomePageBloc> createState() => _StatePageHome();
}

class _StatePageHome extends State<HomePageBloc> {
  final UserBlocNew _userBloc = UserBlocNew();

  @override
  void initState() {
    // _userBloc.add(GetUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocProvider(
          create: (_) => _userBloc,
          child: BlocListener<UserBlocNew, UserState>(
            listener: (context, state) {
              if (state is UserError) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.message!),
                ));
              }
            },
            child: BlocBuilder<UserBlocNew, UserState>(
              builder: (context, state) {
                if (state is UserLoading) {
                  return _buildLoading();
                } else if (state is UserLoaded) {
                  return KasCard(state.user);
                } else if (state is UserError) {
                  return Text(state.message.toString());
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
        ElevatedButton(
          style: style,
          onPressed: () {
            _userBloc.add(GetUser());
          },
          child: const Text('Show User'),
        )
      ],
    );
  }
}

Widget _buildLoading() => const Center(child: CircularProgressIndicator());
