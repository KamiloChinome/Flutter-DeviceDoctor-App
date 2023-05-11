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
        ),
        GoRoute(
          path: 'mobile-devices',
          name: MobileDevicesScreen.name,
          builder: (context, state) => const MobileDevicesScreen(),
          routes: [
            GoRoute(
              path: 'tools',
              name: ToolsScreen.name,
              builder: (context, state) => const ToolsScreen(),
            ),
            GoRoute(
              path: 'disassembly',
              name: DisassemblyScreen.name,
              builder: (context, state) => const DisassemblyScreen(),
            ),
            GoRoute(
              path: 'preventive',
              name: PreventiveScreen.name,
              builder: (context, state) => const PreventiveScreen(),
            ),
            GoRoute(
              path: 'repairs',
              name: RepairsScreen.name,
              builder: (context, state) => const RepairsScreen(),
            ),
          ]
        ),
      ]
    )
  ]
);