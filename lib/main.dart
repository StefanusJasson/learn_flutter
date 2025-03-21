import 'package:flutter/material.dart';
import 'package:flutter_batch_5/Utils/Extension/routes.dart';
import 'package:flutter_batch_5/blocs/theme_cubit.dart';
import 'package:flutter_batch_5/blocs/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white
              ),
              tabBarTheme: TabBarTheme(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.grey,
              )
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white
              ),
              tabBarTheme: TabBarTheme(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.grey,
              )
            ),
            routes: routes,
            initialRoute: AppRoutes.tabPage,
          );
        },
      ),
    );
  }
}
