import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rickandmorty/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_rickandmorty/business_logic/cubit/characters_state.dart';
import 'package:flutter_rickandmorty/constants/my_color.dart';
import 'package:flutter_rickandmorty/presentation/widgets/character_item.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Character',
        ),
        backgroundColor: MyColors.myYellow,
      ),
      body: SafeArea(
          child: BlocConsumer<CharactersCubit, CharactersStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return ConditionalBuilder(
              condition: CharactersCubit.get(context).character != null,
              builder: (context) => Container(
                  color: MyColors.myGrey,
                  child: buildCharacterWidget(
                      CharactersCubit.get(context).character!)),
              fallback: (context) => const Center(
                      child: CircularProgressIndicator(
                    color: MyColors.myYellow,
                  )));
        },
      )),
    );
  }
}
