import 'package:flutter/material.dart';
import 'login_screen.dart'; // Для выхода на экран логина

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Шапка профиля
          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFBBF246),
            child: Icon(Icons.person, color: Colors.black, size: 50),
          ),
          const SizedBox(height: 16),
          const Text('Мейiржан', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
          const Text('В клубе с янв 2024', style: TextStyle(color: Colors.grey, fontSize: 14)),
          const SizedBox(height: 30),

          // Параметры тела
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBodyParam('82 кг', 'ВЕС'),
              _buildBodyParam('183 см', 'РОСТ'),
              _buildBodyParam('14%', 'ЖИР'),
            ],
          ),
          const SizedBox(height: 30),

          // Меню настроек
          _buildMenuTile(Icons.person_outline, 'Личные данные'),
          _buildMenuTile(Icons.notifications_none, 'Уведомления'),
          _buildMenuTile(Icons.calculate_outlined, 'Калькулятор КБЖУ'),
          const SizedBox(height: 40),

          // Кнопка выхода
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                side: const BorderSide(color: Colors.red),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                // Логика выхода - очищаем стек и кидаем на экран входа
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text('ВЫЙТИ ИЗ АККАУНТА', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBodyParam(String value, String title) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1D1F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(value, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildMenuTile(IconData icon, String title) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: Colors.grey),
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {},
    );
  }
}