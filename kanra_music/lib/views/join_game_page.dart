import 'package:flutter/material.dart';

class JoinGamePage extends StatefulWidget {
  const JoinGamePage({super.key});

  @override
  State<JoinGamePage> createState() => _JoinGamePageState();
}

class _JoinGamePageState extends State<JoinGamePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter code:',
                  fillColor: Colors.white,
                  
                ),
                maxLength: 6,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter code.'; 
                  }
                  return null; 
                },
                onSaved: (value) {
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your name:'
                ),
                style: TextStyle(
                  color: Colors.white
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter coyour name.'; 
                  }
                  return null; 
                },
                onSaved: (value) {
                },
              )
            ],
          )
        ),
      ),
    );
  }
}