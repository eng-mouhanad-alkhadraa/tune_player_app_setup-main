import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/piano_model.dart';

class PianoItem extends StatelessWidget {
  const PianoItem.PianoItem({super.key, required this.tune});
  final PianoModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          child: Ink.image(
            image: AssetImage(
              tune.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
