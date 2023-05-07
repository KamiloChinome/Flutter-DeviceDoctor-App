import 'package:circuitos_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'presentation',
          name: PresentationScreen.name,
          builder: (context, state) => const PresentationScreen(),
        )
      ]
    )
  ]
);