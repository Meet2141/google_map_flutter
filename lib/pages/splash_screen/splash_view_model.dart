import 'package:google_map_flutter/pages/map_screen/map_screen.dart';
import 'package:google_map_flutter/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashViewModel {
  SplashScreenState state;

  SplashViewModel(SplashScreenState state) {
    this.state = state;
    getMapScreen();
  }

  getMapScreen() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          state.context, MaterialPageRoute(builder: (context) => MapScreen()));
    });
  }
}
