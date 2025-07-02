import 'package:flutter/material.dart';

import '../services/navigation_service.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KanraMusic', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => router.go('/join_game'), 
              child: Container(
                child: Text('Join game'),
              )
            ),
            ElevatedButton(
              onPressed: () => router.go('/create_game'), 
              child: Container(
                child: Text('Create game'),
              )
            )
          ],
        ),
      ),
    );
  }
}