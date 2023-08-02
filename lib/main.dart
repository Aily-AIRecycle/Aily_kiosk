import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await WindowManager.instance.setFullScreen(true);
  runApp(const AilyKiosk());
}

class AilyKiosk extends StatelessWidget {
  const AilyKiosk({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
