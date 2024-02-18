import 'package:flutter/material.dart';
import 'constants/strings.dart';
import 'presentation/screens/character_Details.dart';
import 'presentation/screens/character_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
            builder: (_) => const CharactersScreen());
      case characterDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharactersDetailsScreen());
    }
    return null;
  }
}
