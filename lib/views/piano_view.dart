import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_notes_player_app_setup/models/piano_model.dart';
import 'package:music_notes_player_app_setup/widgets/piano_item.dart';

class PianoView extends StatelessWidget {
  const PianoView({super.key});
  final List<PianoModel> piano = const [
    PianoModel(sound: 'note1.wav', image: 'assets/images/piano.jpg'),
    PianoModel(sound: 'note2.wav', image: 'assets/images/piano.jpg'),
    PianoModel(sound: 'note3.wav', image: 'assets/images/piano.jpg'),
    PianoModel(sound: 'note4.wav', image: 'assets/images/piano.jpg'),
    PianoModel(sound: 'note5.wav', image: 'assets/images/piano.jpg'),
    PianoModel(sound: 'note6.wav', image: 'assets/images/piano.jpg'),
    PianoModel(sound: 'note7.wav', image: 'assets/images/piano.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
            systemOverlayStyle:
                const SystemUiOverlayStyle(statusBarColor: Colors.black),
            title: const Center(child: Text('Piano')),
            backgroundColor: Colors.black,
            elevation: 0),
        body: Column(
            children: piano
                .map(
                  (e) => PianoItem.PianoItem(tune: e),
                )
                .toList()),
      ),
    );
  }
}
