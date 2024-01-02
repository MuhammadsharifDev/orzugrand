import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:orzu_grand/src/presentation/bloc/home/home_bloc.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/chat/chat_page.dart';
import 'package:orzu_grand/src/presentation/pages/main/home/widgets/location/location_page.dart';

import '../../../injector_container.dart';
import '../../presentation/bloc/main/main_bloc.dart';
import '../../presentation/pages/main/main_page.dart';

part 'routes_name.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
GlobalKey<ScaffoldMessengerState>();

// final localSource = sl<LocalSource>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.main,
  routes: <RouteBase>[

    /// main
    GoRoute(
      name: Routes.main,
      path: Routes.main,
      pageBuilder: (_, state) =>
          CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 1200),
            child: MultiBlocProvider(
              providers: [
                BlocProvider<MainBloc>(create: (_) => sl<MainBloc>()),
                BlocProvider(
                  create: (context) =>
                  sl<HomeBloc>()
                    ..add(const ProductListEvent())..add(const TimerEvent()),
                ),
              ],
              child: const MainPage(),
            ),
            transitionsBuilder: (_, animation, __, child) =>
                FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutCirc).animate(
                      animation),
                  child: child,
                ),
          ),
    ),

    ///Current Location
    GoRoute(
      name: Routes.currentLocation,
      path: Routes.currentLocation,
      builder: (context, state) =>
          BlocProvider(
            create: (context) => sl<HomeBloc>()..add(const CurrentLocationEvent()),
            child: const CurrentLocationPage(),
          ),
    ),

    ///CHAT
    GoRoute(
      name: Routes.chat,
      path: Routes.chat,
      builder: (context, state) =>const ChatPage(),
    ),
  ],
);

class FadePageRoute<T> extends PageRouteBuilder<T> {
  FadePageRoute({required this.builder})
      : super(
    pageBuilder: (context,
        animation,
        secondaryAnimation,) =>
        builder(context),
    transitionsBuilder: (context,
        animation,
        secondaryAnimation,
        child,) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
  final WidgetBuilder builder;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);
}
