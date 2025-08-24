
import 'package:go_router/go_router.dart';
import 'package:kanraa/features/create_game/presentation/create_game_page.dart';
import 'package:kanraa/features/lobby/presentation/lobby_page.dart';

import '../../features/join_game/presentation/join_game_page.dart';
import '../../features/main_menu/presentation/main_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MainPage(),
      routes: [
        GoRoute(
          path: '/join_game',
          builder: (context, state) => const JoinGamePage(),
        ),
        GoRoute(
          path: '/create_game',
          builder: (context, state) => CreateGamePage(),
        ),
        GoRoute(
            path: '/lobby',
            builder: (context, state) => const LobbyPage(),
        )
      ]
    ),
  ]
);