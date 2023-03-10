import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:equatable/equatable.dart';
part 'switch_game.g.dart';

abstract class SwitchGame
    with EquatableMixin
    implements Built<SwitchGame, SwitchGameBuilder> {
  int get id;
  String get name;
  BuiltList<String>? get genre;
  BuiltList<String>? get developers;
  BuiltList<String>? get publishers;
  BuiltMap<String, String>? get releaseDates;

  SwitchGame._();
  factory SwitchGame([void Function(SwitchGameBuilder) updates]) = _$SwitchGame;
  static Serializer<SwitchGame> get serializer => _$switchGameSerializer;

  @override
  List<Object?> get props =>
      [id, name, genre, developers, publishers, releaseDates];
}
