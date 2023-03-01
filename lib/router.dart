import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/base_page.dart';
import 'package:portfolio/pages/main_page.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage(
          child: const BasePage(index: 0, child: MainPage(), appBarTitle : "Menü"),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
                  opacity: animation,
                  child: child
              )
      )
  ),
 //GoRoute(
 //   path: '/game',
 //   pageBuilder: (context, state) => CustomTransitionPage(
 //       child: const BasePage(index: 1, child: GamePage(), appBarTitle : "Game"),
 //       transitionsBuilder: (context, animation, secondaryAnimation, child) =>
 //           FadeTransition(
 //               opacity: animation,
 //               child: child
 //           )
 //   )
 //
]);
