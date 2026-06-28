import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Шапка
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('ДОБРОЕ УТРО', style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
                  Text('Мейiржан', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xFFBBF246),
                child: Icon(Icons.person, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 30),

          // Карточка со статистикой
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1D1F),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: const [
                    SizedBox(
                      height: 80, width: 80,
                      child: CircularProgressIndicator(value: 0.68, color: Color(0xFFBBF246), backgroundColor: Colors.black, strokeWidth: 8),
                    ),
                    Text('68%', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('🔥 КАЛОРИИ', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text('1,248 ккал', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('⚡ ТРЕНИРОВКИ', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text('2 заверш.', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // План на сегодня
          const Text('ПЛАН НА СЕГОДНЯ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1D1F),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: const Color(0xFFBBF246), borderRadius: BorderRadius.circular(10)),
                  child: const Text('СИЛОВАЯ', style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 15),
                const Text('Сила: Верх тела', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                const Text('⏱ 45 мин   🔥 380 ккал   🏋️‍♂️ 8 упр.', style: TextStyle(color: Colors.grey, fontSize: 14)),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBBF246),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {},
                    child: const Text('▶ НАЧАТЬ ТРЕНИРОВКУ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}