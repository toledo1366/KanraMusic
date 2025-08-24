import 'package:flutter/material.dart';
import 'package:kanraa/core/strings/texts.dart';
import 'package:kanraa/core/styles/colors.dart';

import '../../core/router/navigation_service.dart';

class BasePage extends StatelessWidget {
  final Widget page;

  const BasePage(this.page, {super.key});

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
              router.canPop() ? Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () => router.pop(),
                    icon: Icon(Icons.arrow_back, color: Color(0xCFD2DAFF))
                ),
              ) : Container(),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsetsGeometry.only(
                          left: 114, right: 114, top: 32, bottom: 232),
                      child: Text(
                        kanraaName,
                        style: TextStyle(color: Color(brandColor), fontSize: 40, fontFamily: 'Aclonica'),
                      ),
                    ),
                    page
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
