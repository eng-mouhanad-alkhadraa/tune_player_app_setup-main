import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/views/piano_view.dart';

void main() {
  runApp(const PianoApp());
}

class PianoApp extends StatelessWidget {
  const PianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PianoView(),
    );
  }
}
