import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final bool hasLogin;
  final String username;

  const LoginState({
    this.hasLogin = false,
    this.username = 'User',
  });

  LoginState copyWith({
    bool? hasLogin, String? username
  }) => LoginState(
    hasLogin: hasLogin?? this.hasLogin,
    username: username?? this.username
  );
  
  @override
  List<Object> get props => [
    hasLogin,
    username
  ];
}