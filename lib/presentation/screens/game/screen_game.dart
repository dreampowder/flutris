import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/model_game_configuration.dart';
import 'package:flutris/presentation/screens/game/bloc/game_engine_bloc.dart';
import 'package:flutris/presentation/widgets/widget_game_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenGame extends StatefulWidget {

  const ScreenGame({super.key});

  @override
  State<ScreenGame> createState() => _ScreenGameState();
}

class _ScreenGameState extends State<ScreenGame> {

  final configuration = ModelGameConfiguration(Size(10,24), 250);
  Size? singleBlockSize;

  final GameEngineBloc _bloc = GameEngineBloc();

  List<ModelGameBlock> availableBlocks = [];
  bool isGameRunning = false;
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_){
      final screenSize = MediaQuery.of(context).size;
      setState(() {
        singleBlockSize = Size(screenSize.width / configuration.gridSize.width, screenSize.height / configuration.gridSize.height);
      });
    });
  }

  void _handleBlocStates(BuildContext context, GameEngineState state) {
    state.when(
        initial: (){},
        gameUpdate: (_, blocks){
          debugPrint("Update State");
          setState(() {
            availableBlocks = blocks;
          });
        }
    );
  }

  void _toggleGame(){
    if (!isGameRunning) {
      _bloc.add(GameEngineEvent.start(configuration));
    }else{
      _bloc.add(GameEngineEvent.stop());
    }
    isGameRunning = !isGameRunning;
  }

  void _move(bool isLeft){
    _bloc.add(GameEngineEvent.moveCurrentBlock(isLeft));
  }
  
  @override
  Widget build(BuildContext context) {
    var block = ModelGameBlockLongBrick();
    block.rotationDegrees = EnumBlockRotationState.zero;
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: ()=>_move(true), child: Icon(Icons.arrow_left),elevation: 1,),
          FloatingActionButton(onPressed: _toggleGame, child: Icon(Icons.refresh),elevation: 0),
          FloatingActionButton(onPressed: ()=>_move(false), child: Icon(Icons.arrow_right),elevation: 1,),
        ],
      ),
      body: BlocListener(
        bloc: _bloc,
        listener: _handleBlocStates,
        child: singleBlockSize == null ? _emptyState() : _gameState(),
      ),
    );
  }

  Widget _emptyState(){
    return Container();
  }

  Widget _gameState(){
    return Stack(
      children: availableBlocks.map((gameBlock)=>WidgetGameBlock(
        key: ObjectKey(gameBlock.id),
        gameBlock: gameBlock, singleBlockSize: singleBlockSize!)).toList(),
    );
  }
}
