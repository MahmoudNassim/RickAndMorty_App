import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rickandmorty/Data/model/character_model.dart';
import 'package:flutter_rickandmorty/Data/web_services/dio_helper.dart';
import 'package:flutter_rickandmorty/business_logic/cubit/characters_state.dart';

class CharactersCubit extends Cubit<CharactersStates> {
  CharactersCubit() : super(CharactersInitialState());
  static CharactersCubit get(context) => BlocProvider.of(context);

  Character? character;

  getAllCharacters() async {
    emit(CharactersLoadingState());
    DioHelper.getData(url: 'character').then((value) {
      emit(CharactersSuccessState());
      character = Character.fromJson(value.data);
      print(character.toString());
    }).catchError((error) {
      emit(CharactersErrorState(error.toString()));
      print(error.toString());
    });
  }
}
