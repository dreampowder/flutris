import 'package:flutris/data/models/enum_main_screen_state.dart';
import 'package:flutris/presentation/screens/home/screen_home.dart';
import 'package:flutris/presentation/screens/splash/screen_splash.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {

  EnumMainScreenState _mainScreenState = EnumMainScreenState.mainScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body(){
    switch(_mainScreenState){
      case EnumMainScreenState.splash:
        return ScreenSplash();
      case EnumMainScreenState.mainScreen:
        return ScreenHome();
    }
  }
}
