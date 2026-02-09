import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/student.dart';
import 'models/viewmodels/student_view_model.dart';
import 'views/details_screen.dart';
import 'views/input_screen.dart';
import 'routes/route_manager.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => StudentViewModel(),
      child: const MyApp(),
    ),
  );
}

void runApp(changeNotifierProvider) {}

ChangeNotifierProvider(
    {required StudentViewModel Function(dynamic context) create,
    required MyApp child}) {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Georgia',
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurple, foregroundColor: Colors.white),
        textTheme: TextTheme(
            bodyMedium:
                TextStyle(fontSize: 18, color: Colors.deepPurpleAccent)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurpleAccent,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
        ),
      ),
      initialRoute: RouteManager.inputScreen,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
