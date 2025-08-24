import 'package:flutter/material.dart';
import 'package:kanraa/core/styles/colors.dart';
import 'package:kanraa/shared/presentation/base_page.dart';

import '../../../core/router/navigation_service.dart';

class JoinGamePage extends StatefulWidget {
  const JoinGamePage({super.key});

  @override
  State<JoinGamePage> createState() => _JoinGamePageState();
}

class _JoinGamePageState extends State<JoinGamePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _playerNameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePage(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 67),
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
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _codeController,
                    keyboardType: TextInputType.number,
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
                      hintText: 'Code',
                      hintStyle: TextStyle(
                        color: Color(0xFFBCC1CA), // neutral-400
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  GestureDetector(
                    onTap: () => router.go('/join_game'),
                    child: Container(
                      alignment: AlignmentGeometry.center,
                      width: 109,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(brandColor)),
                      child: Text(
                        'Join game',
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
