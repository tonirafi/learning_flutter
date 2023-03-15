

part of 'user_bloc_new.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  List<Object> get props => [];
}

class GetUser extends UserEvent{}
class NetworkError extends UserEvent{}