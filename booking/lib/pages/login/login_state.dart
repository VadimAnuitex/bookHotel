class LoginState {
  final String username;
  final String password;

  const LoginState({this.username, this.password});

  LoginState copyWith({
    String username,
    String password,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
