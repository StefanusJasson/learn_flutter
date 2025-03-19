import 'package:flutter/material.dart';
import 'package:flutter_batch_5/blocs/theme_cubit.dart';
import 'package:flutter_batch_5/blocs/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key, this.canGoBack = false});

  final bool canGoBack;
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.canGoBack) {
      return Scaffold(
        body: ListView(
          children: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                if(state.themeMode == ThemeMode.dark) {
                  return ListTile(
                    onTap: () {
                      context.read<ThemeCubit>().setThemeMode(ThemeMode.light);
                    },
                    leading: CircleAvatar(child: Icon(Icons.light_mode)),
                    title: Text('Change Theme'),
                  );
                }
                else{
                  return ListTile(
                    onTap: () {
                      context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);
                    },
                    leading: CircleAvatar(child: Icon(Icons.dark_mode)),
                    title: Text('Change Theme'),
                  );
                }
              },
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: CircleAvatar(child: Icon(Icons.arrow_back)),
              title: Text('Go Back'),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: ListView(
          children: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                if(state.themeMode == ThemeMode.dark) {
                  return ListTile(
                    onTap: () {
                      context.read<ThemeCubit>().setThemeMode(ThemeMode.light);
                    },
                    leading: CircleAvatar(child: Icon(Icons.light_mode)),
                    title: Text('Change Theme'),
                  );
                }
                else{
                  return ListTile(
                    onTap: () {
                      context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);
                    },
                    leading: CircleAvatar(child: Icon(Icons.dark_mode)),
                    title: Text('Change Theme'),
                  );
                }
              },
            ),
          ],
        ),
      );
    }
  }
}
