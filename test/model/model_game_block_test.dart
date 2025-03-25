import 'package:flutris/data/models/model_game_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Test EnumBlockRotationState.nextRotation", (){
    var value = EnumBlockRotationState.zero;
    expect(EnumBlockRotationState.deg90, value.nextRotation(),reason: "90 degree should come after 0");
    value = value.nextRotation();
    expect(EnumBlockRotationState.deg180, value.nextRotation(),reason: "180 degree should come after 90");
    value = value.nextRotation();
    expect(EnumBlockRotationState.deg270, value.nextRotation(),reason: "2700 degree should come after 180");
    value = value.nextRotation();
    expect(EnumBlockRotationState.zero, value.nextRotation(),reason: "2700 degree should come after 270");
  });

  test("Test game block abstract class", (){
    final block1 = ModelGameBlock.allBlocks.first;
    final block2 = ModelGameBlock.allBlocks.first;
    expect(false, block1.id == block2.id, reason:"Each instance from allBlocks should have a different value");

    final block = TestGameBlock();
    expect(2, block.filledCoordinates.length, reason:"Expected value is 2");
    expect(EnumBlockRotationState.zero, block.rotationDegrees, reason: "Initial rotation should be zero");
    expect(2, block.widthCount);
    expect(2, block.heightCount);

    final copyBlock = block.copyWith(rotation: EnumBlockRotationState.deg90);
    expect(EnumBlockRotationState.deg90, copyBlock.rotationDegrees, reason: "Copy shuold have 90 degree rotation");
  });
}

class TestGameBlock extends ModelGameBlock{

  @override
  Color get color => Colors.red;

  @override
  ModelGameBlock copyWith({Offset? position, EnumBlockRotationState? rotation}) {
    var copy = TestGameBlock();
    copy.position = position ?? this.position;
    copy.rotationDegrees = rotation ?? rotationDegrees;
    return copy;
  }

  @override
  // TODO: implement defaultConfiguration
  List<List<int>> get defaultConfiguration => [
    [1,0],
    [0,1]
  ];

}