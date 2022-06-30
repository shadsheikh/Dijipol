
import 'package:bloc/bloc.dart';
import 'package:dijipol/data/models/dijipol_error.dart';
import 'package:dijipol/data/models/user_details.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());
  void authenticate(UserDetails userDetails){
    emit(AuthState(userDetails: userDetails,authStatus: AuthStatus.authenticated));
  }

  void logout(){
    emit(AuthState());
  }

}
