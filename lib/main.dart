import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/ui/page/boarding/boarding_cubit.dart';
import 'package:weather_app/ui/page/home/home_cubit.dart';
import 'package:weather_app/ui/router/router.gr.dart';

import 'injection.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.locator<BoardingCubit>()
        ),
        BlocProvider(
            create: (_) => di.locator<HomeCubit>()
        )
      ],
      child: MaterialApp.router(
        title: 'Weather App',
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      )
    );
  }
}
