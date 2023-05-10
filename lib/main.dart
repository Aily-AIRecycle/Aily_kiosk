import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

import 'mainscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setWindowSize(const Size(1366, 728));
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
