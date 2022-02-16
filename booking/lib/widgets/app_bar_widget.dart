import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../values/values.dart';
import 'login_shape_clipper.dart';

class CustomBarWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  CustomBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightOfScreen =
        MediaQuery.of(context).size.height - Constants.heightOfAppBar;
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
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
        ],
      ),
    );
  }
}
