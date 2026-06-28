import 'package:flutter/material.dart';
import '../main.dart'; // Для перехода в MainScreen
import 'register_screen.dart'; // Для перехода на регистрацию

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'MFIT',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFFBBF246)),
            ),
            const SizedBox(height: 10),
            const Text(
              'Войдите в свой аккаунт',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 40),
            
            // Поля ввода
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: const Color(0xFF1A1D1F),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Пароль',
                filled: true,
                fillColor: const Color(0xFF1A1D1F),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 30),
            
            // Кнопка Входа
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBBF246),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                // Переход в главное приложение
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainScreen()));
              },
              child: const Text('ВОЙТИ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 20),
            
            // Переход к регистрации
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
              },
              child: const Text('Нет аккаунта? Зарегистрироваться', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}