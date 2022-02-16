import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/pages/login/login_state.dart';

import '../../widgets/animations/slide_right_route.dart';
import '../hotels/hotels_screen.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void login(context) {
    Navigator.push(context, SlideRightRoute(page: const HotelsScreen()));
  }

  setUsername(String str) {
    emit(state.copyWith(username: str, password: str));
  }

  setPassword(String str) {
    emit(state.copyWith(password: str, username: str));
  }
}
