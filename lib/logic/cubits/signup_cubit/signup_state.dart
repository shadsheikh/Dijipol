part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupError extends SignupState {

String error;

  SignupError({
    required this.error,
  });

}

class SignupLoading extends SignupState{

}

class SignupSuccess extends SignupState{

}