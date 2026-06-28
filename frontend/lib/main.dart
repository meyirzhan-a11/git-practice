import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/training_screen.dart';
import 'screens/stats_screen.dart';
import 'screens/profile_screen.dart';

void main() => runApp(const MFITApp());

class MFITApp extends StatelessWidget {
  const MFITApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MFIT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, 
        scaffoldBackgroundColor: const Color(0xFF111315),
        primaryColor: const Color(0xFFBBF246),
      ),
      // Стартовый экран теперь — Логин
      home: const LoginScreen(),
    );
  }
}

// Этот класс отвечает за нижнее меню и переключение вкладок
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  
  final List<Widget> _screens = [
    const HomeScreen(),
    const TrainingScreen(),
    const StatsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: const Color(0xFF1A1D1F),
        selectedItemColor: const Color(0xFFBBF246),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ГЛАВНАЯ'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'ТРЕНИРОВКИ'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'СТАТИСТИКА'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ПРОФИЛЬ'),
        ],
      ),
    );
  }
}