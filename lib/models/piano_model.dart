import 'package:audioplayers/audioplayers.dart';

class PianoModel {
  final String sound;
  final String image;

  const PianoModel({required this.image, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/$sound'));
  }
}
