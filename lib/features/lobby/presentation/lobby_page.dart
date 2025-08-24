import 'package:flutter/material.dart';
import 'package:kanraa/shared/presentation/base_page.dart';

class LobbyPage extends StatefulWidget {
  final String playerName;
  const LobbyPage(this.playerName, {super.key});

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePage(
        Container()
      ),
    );
  }
}
