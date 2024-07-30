import 'package:flutter/material.dart';
import 'package:freelance/char_model.dart';
import 'package:freelance/char_preview.dart';
import 'package:provider/provider.dart';

class CharacterCustomizationScreen extends StatelessWidget {
  final List<CharacterPart> parts = [
    CharacterPart(
      type: 'eyes',
      imagePath: 'assets/eyes1.png',
    ),
    CharacterPart(
      type: 'eyes',
      imagePath: 'assets/eyes2.png',
    ),
    CharacterPart(
      type: 'eyes',
      imagePath: 'assets/eyes3.png',
    ),
    CharacterPart(
      type: 'body',
      imagePath: 'assets/body1.png',
    ),
    CharacterPart(
      type: 'body',
      imagePath: 'assets/body2.png',
    ),
    CharacterPart(
      type: 'body',
      imagePath: 'assets/body3.png',
    ),
  ];

  CharacterCustomizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Character Customization')),
      body: Column(
        children: [
          const Expanded(
            child: CharacterPreview(),
          ),
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: parts.length,
              itemBuilder: (context, index) {
                final part = parts[index];
                return GestureDetector(
                  onTap: () {
                    Provider.of<CharacterModel>(context, listen: false)
                        .updatePart(part.type, part);
                  },
                  child: Image.asset(part.imagePath),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
