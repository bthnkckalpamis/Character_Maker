import 'package:flutter/material.dart';
import 'package:freelance/char_model.dart';
import 'package:provider/provider.dart';

class CharacterPreview extends StatelessWidget {
  const CharacterPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterModel>(
      builder: (context, characterModel, child) {
        return Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                characterModel.getPart('body').imagePath,
              ),
            ),
            Positioned(
              child: Center(
                child: Image.asset(
                  characterModel.getPart('eyes').imagePath,
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
