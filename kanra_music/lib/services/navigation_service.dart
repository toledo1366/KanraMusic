
import 'package:go_router/go_router.dart';
import 'package:kanra_music/views/create_game_page.dart';

import '../views/join_game_page.dart';
import '../views/main_page.dart';

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
      ]
    ),
  ]
);