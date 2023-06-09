import 'package:circuitos_app/presentation/screens/laptops/laptops_screens.dart';
import 'package:circuitos_app/presentation/screens/laptops/repairs_laptop_screen.dart';
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
          path: 'laptops',
          name: LaptopsScreen.name,
          builder: (context, state) => const LaptopsScreen(),
          routes: [
            GoRoute(
              path: 'laptop-repairs',
              name: RepairsLaptopsScreen.name,
              builder: (context, state) => const RepairsLaptopsScreen(),
            ),
          ]
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
              routes: [
                GoRoute(
                  path: 'repair',
                  name: RepairScreen.name,
                  builder: (context, state) => const RepairScreen(),
                ),
              ]
            ),
          ]
        ),
      ]
    )
  ]
);