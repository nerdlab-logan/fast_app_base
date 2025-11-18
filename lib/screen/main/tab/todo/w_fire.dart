import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class Fire extends StatefulWidget {
  const Fire({super.key});

  @override
  State<Fire> createState() => _FireState();
}

class _FireState extends State<Fire> {
  late StateMachineController controller;
  late SMIBool smiOn;
  late SMIBool smiHover;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      "$baseRivPath/fire_button.riv",
      stateMachines: const ['controller'],
      onInit: (Artboard art) {
        controller = StateMachineController.fromArtboard(art, 'controller')!;
        controller.isActive = true;
        art.addController(controller);
        smiOn = controller.findInput<bool>('ON') as SMIBool;
        smiHover = controller.findInput<bool>('Hover') as SMIBool;
        smiOn.value = true;
      },
    );
  }
}
