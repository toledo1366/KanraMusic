import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/strings/texts.dart';
import '../services/navigation_service.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      body: SafeArea(
        bottom: false,
          child: Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.center,
            children: [
              Image(
                image: AssetImage('assets/images/background-primary.png'),
                fit: BoxFit.fill,
              ),
              Image(
                image: AssetImage('assets/images/background-secondary.png'),
                fit: BoxFit.fill,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsetsGeometry.only(
                          left: 114, right: 114, top: 32, bottom: 232),
                      child: Text(
                        'Kanraa',
                        style: TextStyle(color: Colors.orange, fontSize: 40, fontFamily: 'Aclonica'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 140, right: 141),
                      child: GestureDetector(
                        child: Container(
                          alignment: AlignmentGeometry.center,
                          width: 109,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange),
                          child: Text(
                            'Create game',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.only(left: 140, right: 141, top: 27, bottom: 308),
                      child: GestureDetector(
                        child: Container(
                          alignment: AlignmentGeometry.center,
                          width: 109,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange),
                          child: Text(
                            'Join game',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentGeometry.bottomLeft,
                      child: GestureDetector(
                        onTap: () => _showAboutSection(context),
                        child: Padding(
                          padding: EdgeInsets.only(left: 7, bottom: 9, right: 304),
                          child: Container(
                            padding: EdgeInsets.all(22),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(0, 50, 56, 66),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(40))
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(Radius.circular(18))
                              ),
                              child: Icon(Icons.question_mark, color: Colors.white,),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }

  void _showAboutSection(BuildContext context) {
    showAdaptiveDialog<void>(
        context: context,
        builder: (context) => Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 29, 33, 40),
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            width: 280,
            height: 380,
            child: Stack(
              // alignment: AlignmentDirectional.center,
              children: [
                Align(
                  alignment: AlignmentGeometry.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 9,bottom: 57),
                    child: Text(
                      'Game info',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: GestureDetector(
                    onTap: () => context.pop(),
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, bottom: 0, right: 5, top: 5),
                      child: Container(
                        // padding: EdgeInsets.all(22),
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Icon(Icons.close, color: Colors.white,),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: RichText(
                      text: TextSpan(
                        text: kanraaName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.orange,
                          fontFamily: 'Aclonica'
                        ),
                        children: [
                          TextSpan(
                            text: aboutText,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Default'
                            )
                          )
                        ]
                    )
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
