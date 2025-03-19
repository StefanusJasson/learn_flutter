import 'package:bloc/bloc.dart';
import 'package:flutter_batch_5/blocs/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(): super(LoginState());

  void setLogin(bool hasLogin, String username){
    emit(state.copyWith(
      hasLogin: hasLogin,
      username: username,
    ));
  }
}