part of 'characters_bloc.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;

  CharactersLoaded(this.characters);
} //list of characters أول ما يحمل بجيب 
 
//  class CharactersErrorCase extends CharactersState{
//   blaaaaa
//  }