import 'package:basic_prototype/pages/authentication/login_page.dart';
import 'package:basic_prototype/pages/authentication/main_page.dart';
import 'package:basic_prototype/pages/authentication/signup_page.dart';
import 'package:basic_prototype/pages/cart/cart.dart';
import 'package:basic_prototype/pages/home/home.dart';
import 'package:basic_prototype/pages/search/search.dart';
import 'package:basic_prototype/pages/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[
        GoRoute(
            path: "home",
            builder: (BuildContext context, GoRouterState state) =>
                const Home()),
        GoRoute(
            path: "login",
            builder: (BuildContext context, GoRouterState state) =>
                const LoginPage()),
        GoRoute(
            path: "signup",
            builder: (BuildContext context, GoRouterState state) =>
                const SignUpPage()),
        GoRoute(
            path: "search",
            builder: (BuildContext context, GoRouterState state) =>
                const Search()),
        GoRoute(
            path: "cart",
            builder: (BuildContext context, GoRouterState state) =>
                const Cart()),
        GoRoute(
            path: "wishlist",
            builder: (BuildContext context, GoRouterState state) =>
                const Wishlist()),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const MainPage(),
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}
