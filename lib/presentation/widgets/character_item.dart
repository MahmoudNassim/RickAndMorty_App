import 'package:flutter/material.dart';
import 'package:flutter_rickandmorty/Data/model/character_model.dart';
import 'package:flutter_rickandmorty/constants/my_color.dart';

Widget buildCharacterWidget(Character model) => GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3 / 4,
    ),
    itemCount: model.results.length,
    itemBuilder: (context, index) {
      Results character = model.results[index];
      return ClipRRect(
        child: Container(
          width: double.infinity,
          margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
          padding: EdgeInsetsDirectional.all(4),
          decoration: BoxDecoration(
            color: MyColors.myWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          child: GridTile(
              footer: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  color: Colors.black54,
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    '${character.name}',
                    style: const TextStyle(
                      height: 1.3,
                      fontSize: 16,
                      color: MyColors.myWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              child: Container(
                color: MyColors.myGrey,
                child: FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    placeholder: 'assets/images/loading.gif',
                    image: '${character.image}'),
              )),
        ),
      );
    });
