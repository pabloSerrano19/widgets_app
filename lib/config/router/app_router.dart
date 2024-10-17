
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/config/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/config/presentation/screens/home_screens.dart';


final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreens();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/buttons',
          builder: (BuildContext context, GoRouterState state) {
            return const ButtonsScreen();
          },
        ),
        GoRoute(
          path: '/cards',
          builder: (BuildContext context, GoRouterState state) {
            return const CardsScreen();
          },
        ),
      ]
      
    ),
  ],
);
