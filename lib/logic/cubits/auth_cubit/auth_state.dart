part of 'auth_cubit.dart';

enum AuthStatus {authenticated,unauthenticated}

class AuthState {

  final UserDetails? userDetails;
  final AuthStatus authStatus;
  final AcenteError? acenteError;

  AuthState({
    this.userDetails,
    this.authStatus = AuthStatus.unauthenticated,
    this.acenteError,
  });


  AuthState copyWith({
    UserDetails? userDetails,
    AuthStatus? authStatus,
    AcenteError? acenteError,
  }) {
    return AuthState(
      userDetails: userDetails ?? this.userDetails,
      authStatus: authStatus ?? this.authStatus,
      acenteError: acenteError ?? this.acenteError,
    );
  }

  @override
  String toString() => 'AuthState(userDetails: $userDetails, authStatus: $authStatus, acenteError: $acenteError)';
}


