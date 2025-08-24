import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanraa/core/di/di.dart';
import 'package:kanraa/core/styles/colors.dart';
import 'package:kanraa/features/lobby/presentation/cubit/lobby_page_cubit.dart';
import 'package:kanraa/shared/presentation/base_page.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key});

  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LobbyPageCubit>(
      create: (context) => di.get<LobbyPageCubit>(),
      child: Scaffold(
        body: BasePage(
          BlocBuilder<LobbyPageCubit, LobbyPageState>(
            // builder: (context, state) => state.map(
            //     loading: (_) => Text('LOADING'),
            //     error: (message) => Container(),
            //     success: (data) => _buildLobby(context, data)
            // ),
            builder: (context, state) => _buildLobby(context, []),
          )
        ),
      ),
    );
  }

  Widget _buildLobby(BuildContext context, dynamic data){
    return Padding(
      padding: EdgeInsets.only(left: 0, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCodeSection(),
          SizedBox(
            width: 350,
            height: 408,
            child: _buildPlayersList(),
          )
        ],
      ),
    );
  }

  Widget _buildCodeSection(){
    return Container(
      width: 119,
      height: 22,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(brandColor),
        borderRadius: BorderRadius.circular(6),
        border: Border.fromBorderSide(BorderSide(
          color: Color(0x1D2128FF),
          style: BorderStyle.solid
        ))
      ),
      child: RichText(
          text: TextSpan(
            text: 'Code: 123456',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700
            )
          )
      ),
    );
  }

  Widget _buildPlayersList(){
    return ListView.builder(
      itemCount: 150,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Color(brandColor)
          ),
          child: Text('Player $index'),
        )
    );
  }

  Widget _buildSearchSection() {
    return Container();
  }
}
