import 'package:flutter/material.dart';

import '../../../core/router/navigation_service.dart';
import '../../../shared/presentation/base_page.dart';

class CreateGamePage extends StatefulWidget {
  const CreateGamePage({super.key});

  @override
  State<CreateGamePage> createState() => _CreateGamePageState();
}

class _CreateGamePageState extends State<CreateGamePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _playerNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePage(
          Padding(
            padding: const EdgeInsets.only(left: 67, right: 67),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: _playerNameController,
                    style: TextStyle(
                      // fontFamily: 'Inter',
                      fontSize: 16,
                      height: 26 / 16, // line-height / font-size
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFBCC1CA), // neutral-400
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF424955), // neutral-650
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 9,
                        horizontal: 12,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          color: Color(0xFF9095A0), // neutral-500
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          color: Color(0xFF9095A0), // neutral-500
                          width: 1,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          color: Color(0xFF9095A0), // neutral-500
                          width: 1,
                        ),
                      ),
                      hintText: 'Player Name',
                      hintStyle: TextStyle(
                        color: Color(0xFFBCC1CA), // neutral-400
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  GestureDetector(
                    onTap: () => router.go('/lobby'),
                    child: Container(
                      alignment: AlignmentGeometry.center,
                      width: 109,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      child: Text(
                        'Create lobby',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
