import 'package:flutter/material.dart';

class CreateGamePage extends StatelessWidget {
  CreateGamePage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create game'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter your name:'
                  ),
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name!'; 
                    }
                    return null; 
                  },
                  onSaved: (value) {
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter players count:'
                  ),
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'You have to set players count!'; 
                    }
                    return null; 
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter songs count for each player:'
                  ),
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'You have to set songs count for each player!'; 
                    }
                    return null; 
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter time for songs in seconds:'
                  ),
                  style: const TextStyle(
                    color: Colors.white
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'You have to set time for songs!'; 
                    }
                    return null; 
                  },
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}