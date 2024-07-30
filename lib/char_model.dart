import 'package:flutter/material.dart';

class CharacterPart {
  final String type;
  final String imagePath;

  CharacterPart({
    required this.type,
    required this.imagePath,
  });
}

class CharacterModel with ChangeNotifier {
  final Map<String, CharacterPart> _selectedParts = {
    'body': CharacterPart(
      type: 'body',
      imagePath: 'assets/body1.png',
    ),
    'eyes': CharacterPart(
      type: 'eyes',
      imagePath: 'assets/eyes1.png',
    ),
  };

  CharacterPart getPart(String type) => _selectedParts[type]!;

  void updatePart(String type, CharacterPart part) {
    _selectedParts[type] = part;
    notifyListeners();
  }

  Map<String, CharacterPart> get selectedParts => _selectedParts;
}
