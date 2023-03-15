
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learning_flutter/model/user.dart';
import 'package:learning_flutter/provider/api_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBlocNew extends Bloc<UserEvent,UserState>{


  UserBlocNew() : super(UserInitial()){
    final ApiRepository _apiRepository =ApiRepository();

    on<GetUser>((event,emit) async{
      try{
        emit(UserLoading());
        final user = await _apiRepository.fetchUser();
        emit(UserLoaded(user));

        if(user ==null){
          emit(const UserError("Data Kosong"));
        }
      }
      on NetworkError{
        emit(const UserError("Data Kosong"));
      }
    });
  }

}