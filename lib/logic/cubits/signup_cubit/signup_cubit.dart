import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dijipol/data/models/signup.dart';
import 'package:dijipol/data/repositories/signup_repository.dart';
import 'package:meta/meta.dart';
part './signup_state.dart';

class SignupCubit extends Cubit<SignupState> {

  final SignupRepository repository;

  SignupCubit({required this.repository}) : super(SignupInitial());
  void signup(Signup signup) {
    emit(SignupLoading());
    Timer(Duration(seconds: 2), () {
      repository.signUp(signup).then((result){
        if(result['Success']){
          emit(SignupSuccess());
        }
      });
    });
  }
}