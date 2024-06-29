import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mai_practice/features/auth/view/auth_screen.dart';
import 'package:mai_practice/features/home/view/home_screen.dart';
import 'package:mai_practice/features/messager/view/messager_screen.dart';
import 'package:mai_practice/features/my_team/view/my_team_screen.dart';
import 'package:mai_practice/features/news/view/news_screen.dart';
import 'package:mai_practice/features/notifications/view/notifications_screen.dart';
import 'package:mai_practice/features/profile/view/profile_screen.dart';
import 'package:mai_practice/features/project_passport/view/project_passport_screen.dart';
import 'package:mai_practice/features/search_team/view/search_team_screen.dart';
import 'package:mai_practice/features/support/view/support_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      parentNavigatorKey: rootNavigatorKey,
      pageBuilder: (context, state) {
        return const NoTransitionPage(
          child: AuthScreen()
        );
      },
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: HomeScreen(
            location: state.matchedLocation,
            child: child,
          )
        );
      },
      routes: [
        GoRoute(
          path: '/profile',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: ProfileScreen()
            );
          },
        ),
        GoRoute(
          path: '/news',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: NewsScreen()
            );
          },
        ),
        GoRoute(
          path: '/team',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: MyTeamScreen()
            );
          },
        ),
        GoRoute(
          path: '/searchTeam',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: SearchTeamScreen()
            );
          },
        ),
        GoRoute(
          path: '/passport',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: ProjectPassportScreen()
            );
          },
        ),
        GoRoute(
          path: '/notifications',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: NotificationsScreen()
            );
          },
        ),
        GoRoute(
          path: '/chats',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: MessagerScreen()
            );
          },
        ),
        GoRoute(
          path: '/support',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: SupportScreen()
            );
          },
        ),
      ]
    )
  ]
);