import 'package:flutris/data/game_engine/enum_move_direction.dart';
import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutris/data/models/model_game_configuration.dart';
import 'package:flutris/data/models/type_game_state.dart';
import 'package:flutris/presentation/screens/game/bloc/game_bloc.dart';
import 'package:flutris/presentation/screens/game/widgets/widget_game_grid.dart';
import 'package:flutris/presentation/widgets/widget_game_block.dart';
import 'package:flutris/presentation/widgets/widget_static_blocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ScreenGame extends StatefulWidget {
  const ScreenGame({super.key});

  @override
  State<ScreenGame> createState() => _ScreenGameState();
}

class _ScreenGameState extends State<ScreenGame> {

  final GameBloc _bloc = GameBloc();
  final configuration = ModelGameConfiguration(Size(10,24), 250);
  Size? singleBlockSize;

  GameEngineState? gameEngineState;
  ModelGameBlock? activeBlock;
  bool isGameRunning = false;
  int score = 0;

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

  void _toggleGame(){
    if (isGameRunning) {
      _bloc.add(GameEvent.stop());
    }else{
      _bloc.add(GameEvent.startGame(configuration));
    }
    isGameRunning = !isGameRunning;
  }

  void _move(EnumMoveDirection direction){
    _bloc.add(GameEvent.move(direction));
  }

  void _rotate(){
    _bloc.add(GameEvent.rotate());
  }

  void _handleBlocStates(BuildContext context, GameState state) {
    state.when(
        initial: (){},
        tick: (currentBlock, gameEngineState, score){
          setState(() {
            activeBlock = currentBlock;
            this.gameEngineState = gameEngineState;
            this.score = score;
          });
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener(
        listener: _handleBlocStates,
        bloc: _bloc,
        child: singleBlockSize == null ? Container() : _gameBody(),
      ),
    );
  }

  Widget _gameBody(){
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(child: WidgetGameGrid(gameGridSize: configuration.gridSize, singleBLockSize: singleBlockSize!,)),
          if(activeBlock != null)WidgetGameBlock(gameBlock: activeBlock!, singleBlockSize: singleBlockSize!),
          if(gameEngineState != null)WidgetStaticBlocks(gameState: gameEngineState!, singleBlockSize: singleBlockSize!),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: SafeArea(child: topControls())
          )
        ],
      ),
    );
  }

  Widget topControls(){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _scoreBoard(),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingActionButton(onPressed: ()=>_move(EnumMoveDirection.left),elevation: 1, child: Icon(Icons.arrow_left),),
                    FloatingActionButton(onPressed: _rotate,elevation: 0, child: Icon(Icons.arrow_drop_up)),
                    FloatingActionButton(onPressed: ()=>_move(EnumMoveDirection.right),elevation: 1, child: Icon(Icons.arrow_right),),
                  ],
                ),
                FloatingActionButton(onPressed: _toggleGame,elevation: 0, child: Icon(Icons.sync)),
              ],
            ),
          ],
        ),
      );
  }

  Widget _scoreBoard(){
    return Container(
      width: 100,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(child: Text("$score", style: Theme.of(context).textTheme.titleLarge,)),
    );
  }
}
