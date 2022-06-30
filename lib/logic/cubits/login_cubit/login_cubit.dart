import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dijipol/data/models/login.dart';
import 'package:dijipol/data/repositories/login_repository.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {

  final LoginRepository repository;

  LoginCubit({required this.repository}) : super(LoginInitial());
  void login(Login login){
    emit(LoginLoading());
    Timer(Duration(seconds: 2), () {
      repository.login(login).then((result){
        if(result['Success']){
          emit(LoginSuccess());
        }
      });
    });
  }


}
