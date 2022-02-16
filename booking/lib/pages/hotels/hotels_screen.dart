import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/pages/hotels/hotels_cubit.dart';
import 'package:booking/pages/hotels/hotels_state.dart';

import '../../values/values.dart';
import '../../widgets/login_shape_clipper.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key key}) : super(key: key);

  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  final screenCubit = HotelsCubit();

  @override
  void initState() {
    // screenCubit.loadInitialData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var heightOfScreen =
        MediaQuery.of(context).size.height - Constants.heightOfAppBar;
    return Scaffold(
      body: Column(children: [
        Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper:
                    LoginShapeClipper(turningRadius: 0.7, heightPercentage: 1),
                child: Container(
                  height: Constants.heightOfAppBar,
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
                clipper:
                    LoginShapeClipper(turningRadius: 0.5, heightPercentage: 1),
                child: Container(
                  height: Constants.heightOfAppBar,
                  decoration: const BoxDecoration(
                      color: AppColors.boxDecorationBlueColor),
                ),
              ),
            ),
            Container(
                height: Constants.heightOfAppBar,
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                )),
          ],
        ),
        Expanded(
          child: Container(),
        )
      ]),
    );
  }
}
