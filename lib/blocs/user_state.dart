

part of 'user_bloc_new.dart';


abstract class UserState extends Equatable{
  const UserState();

  List<Object> get props => [];
}


class UserInitial extends UserState{}
class UserLoading extends UserState{}
class UserLoaded extends UserState{
  final User user;
  const UserLoaded(this.user);
}
class UserError extends UserState{
  final String? message;
  const UserError(this.message);
}
