import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

Future<void> debugRiveStateMachines() async {
  final data = await rootBundle.load('assets/riv/fire_button.riv');
  final file = RiveFile.import(data);

  for (final artboard in file.artboards) {
    print('Artboard: ${artboard.name}');
    for (final sm in artboard.stateMachines) {
      print('  StateMachine: ${sm.name}');
    }
  }
}
