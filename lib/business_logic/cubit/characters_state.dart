abstract class CharactersStates {}

final class CharactersInitialState extends CharactersStates {}

final class CharactersLoadingState extends CharactersStates {}

final class CharactersSuccessState extends CharactersStates {}

final class CharactersErrorState extends CharactersStates {
  String error;
  CharactersErrorState(this.error);
}
