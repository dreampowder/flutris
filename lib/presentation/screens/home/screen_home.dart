import 'package:flutris/presentation/screens/game/screen_game.dart';
import 'package:flutris/presentation/widgets/widget_flutris_text.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  void _onTapStart(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenGame()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          WidgetFlutrisText(
            blockSize: Size(10,20),
          ),
          const SizedBox(height: kToolbarHeight * 4,),
          InkWell(
            onTap: _onTapStart,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 8
                ),

              ),
              height: 44,
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Center(child: Text("START", textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),)),
            ),
          ),
          const SizedBox(height: kToolbarHeight * 2,),
        ],
      ),
    );
  }
}