import 'package:breakingbad/business_logic/bloc/characters_bloc.dart';
import 'package:breakingbad/data/repository/characters_repository.dart';
import 'package:breakingbad/presentation/screens/characters_details.dart';
import 'package:breakingbad/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/web_services/characters_web_services.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersBloc charactersBloc;
  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersBloc = CharactersBloc(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) =>
                      CharactersBloc(charactersRepository), //  CharactersBloc(charactersRepository) بدل charactersBloc
                  child: CharactersScreen(),
                ));
      case 'characterDetailsScreen':
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
    }
  }
}
