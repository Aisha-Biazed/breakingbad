import 'package:bloc/bloc.dart';
import 'package:breakingbad/data/models/characters.dart';
import 'package:breakingbad/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersRepository charactersRepository;
   List<Character> characters=[]; // list from characters to return data
  CharactersBloc(this.charactersRepository) : super(CharactersInitial()) {
    on<CharactersEvent>((event, emit) {});
  }
  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
