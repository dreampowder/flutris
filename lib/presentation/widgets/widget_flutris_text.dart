import 'dart:math';

import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/presentation/widgets/widget_game_block.dart';
import 'package:flutter/material.dart';

class WidgetFlutrisText extends StatefulWidget {
  final Size blockSize;
  const WidgetFlutrisText({super.key, required this.blockSize});

  @override
  State<WidgetFlutrisText> createState() => _WidgetFlutrisTextState();
}

class _WidgetFlutrisTextState extends State<WidgetFlutrisText> with SingleTickerProviderStateMixin {

  late final AnimationController _animationController;
  late Animation<int> _redTween;
  late Animation<int> _greenTween;
  late Animation<int> _blueTween;
  final Random random = Random(DateTime.now().millisecondsSinceEpoch);
  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    _redTween = IntTween(begin: random.nextInt(50), end: 50+random.nextInt(200)).animate(_animationController);
    _greenTween = IntTween(begin: random.nextInt(50), end: 50+random.nextInt(200)).animate(_animationController);
    _blueTween = IntTween(begin: random.nextInt(50), end: 50+random.nextInt(200)).animate(_animationController);

  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left: (MediaQuery.sizeOf(context).width - widget.blockSize.width * 30)/2.0),
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, widget){
          return WidgetGameBlock(
              gameBlock: ModelFlutrisTextBlock(Color.fromARGB(255, _redTween.value, _greenTween.value, _blueTween.value)),
              singleBlockSize: this.widget.blockSize
          );
        },
      ),
    );
  }
}

class ModelFlutrisTextBlock extends ModelGameBlock{

  final Color customColor;
  ModelFlutrisTextBlock(this.customColor);

  @override
  Color get color => customColor;

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    //No need for copy
    throw UnimplementedError();
  }

  @override
  // TODO: implement defaultConfiguration
  List<List<int>> get defaultConfiguration => [
    [1,1,1,1,0,1,0,0,0,1,0,0,1,0,1,1,1,0,1,1,1,1,0,1,1,1,0,1,1,1,1],
    [1,0,0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0],
    [1,0,0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0],
    [1,1,1,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,1,1,0,0,0,1,0,0,1,1,1,1],
    [1,0,0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,1],
    [1,0,0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,1],
    [1,0,0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,1],
    [1,0,0,0,0,1,1,1,0,0,1,1,0,0,0,1,0,0,1,0,0,1,0,1,1,1,0,1,1,1,1],
  ];

}

// FLUTRIS