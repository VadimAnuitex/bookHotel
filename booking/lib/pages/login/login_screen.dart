import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/pages/login/login_cubit.dart';
import 'package:booking/pages/login/login_state.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../values/values.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/login_shape_clipper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final screenCubit = LoginCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        bloc: screenCubit,
        builder: (BuildContext context, LoginState state) {
          return buildBody(state);
        },
      ),
    );
  }

  Widget buildBody(LoginState state) {
    var heightOfScreen =
        MediaQuery.of(context).size.height - Constants.heightOfAppBar;
    return Center(
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: ClipPath(
              clipper: LoginShapeClipper(),
              child: Container(
                height: heightOfScreen,
                decoration: const BoxDecoration(
                    color: AppColors.boxDecorationGrayColor),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: ClipPath(
              clipper: LoginShapeClipper(turningRadius: 0.6),
              child: Container(
                height: heightOfScreen,
                decoration: const BoxDecoration(
                    color: AppColors.boxDecorationBlueColor),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: <Widget>[
                //10% of the height of screen
                SizedBox(height: heightOfScreen * 0.075),
                buildIntroText(context, state),
                const SizedBox(height: 8.0),
                buildForm(context, state),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIntroText(BuildContext context, LoginState viewModel) {
    var textTheme = Theme.of(context).textTheme;
    var heightOfScreen =
        MediaQuery.of(context).size.height - Constants.heightOfAppBar;

    return ListBody(
      children: <Widget>[
        BorderedText(
            strokeWidth: 5.0,
            strokeColor: AppColors.borderTitleColor,
            child: Text(
              "WELCOME",
              style: textTheme.headline4.copyWith(
                color: AppColors.textColor,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            )),
        const SizedBox(height: 4.0),
        SizedBox(height: heightOfScreen * 0.075),
        Text(
          "SIGN IN",
          style: textTheme.headline6.copyWith(
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget buildForm(BuildContext context, LoginState state) {
    var textTheme = Theme.of(context).textTheme;
    var iconTheme = Theme.of(context).iconTheme;

    return Column(
      children: <Widget>[
        CustomTextFormField(
          hasPrefixIcon: true,
          textInputType: TextInputType.emailAddress,
          hintText: "EMAIL ADDRESS",
          title: state.username,
          prefixIcon: Icon(
            FeatherIcons.mail,
            color: iconTheme.color,
            size: 20,
          ),
          onChanged: (str) => {screenCubit.setUsername(str)},
        ),
        const SizedBox(height: 20.0),
        CustomTextFormField(
          hasPrefixIcon: true,
          textInputType: TextInputType.text,
          hintText: "PASSWORD",
          obscured: true,
          prefixIcon: Icon(
            FeatherIcons.key,
            color: iconTheme.color,
            size: 20,
          ),
          onChanged: (str) => {screenCubit.setPassword(str)},
        ),
        const SizedBox(height: 24.0),
        CustomButton(
          title: "SIGN ME IN",
          textStyle: textTheme.button.copyWith(
            color: AppColors.buttonTextColor,
          ),
          onPressed: () {
            screenCubit.login(context);
          },
        ),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
