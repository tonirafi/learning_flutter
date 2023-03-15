import 'package:flutter/material.dart';
import 'package:learning_flutter/blocs/user_bloc.dart';
import 'package:learning_flutter/model/user.dart';
import 'card_kast.dart';

class HomeWithBLoc extends StatelessWidget {
  UserBloc userBloc =UserBloc();

  @override
  Widget build(BuildContext context) {

    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    // @override
    // void dispose(){
    //   userBloc.dispose();
    // }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        StreamBuilder(
            stream: userBloc.output,
            initialData: userBloc.counter,
            builder: (context,snapshot){

             if(snapshot.data is User){
               var user = snapshot.data as User;
               Text(" Angka : ${user.data?.first_name}");
             }

             return  const Text(" Angka ");
            }


          // return build(context);

        ),
        ElevatedButton(
          style: style,
          onPressed: () {
            // userProvider.getData();
            userBloc.input.add('user');
          },
          child: const Text('Show User'),
        )
      ],
    );
  }
}
