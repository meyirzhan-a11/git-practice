import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Статистика', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: _buildStatBlock('🔥 3,790', 'СОЖЖЕНО КАЛОРИЙ', '+12%')),
              const SizedBox(width: 12),
              Expanded(child: _buildStatBlock('⏱ 342', 'АКТИВНЫЕ МИНУТЫ', '+8%')),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildStatBlock('🏋️‍♂️ 5', 'ТРЕНИРОВКИ', '+1')),
              const SizedBox(width: 12),
              Expanded(child: _buildStatBlock('❤️ 94', 'СР. ПУЛЬС', '-3', isRed: true)),
            ],
          ),
          const SizedBox(height: 30),
          const Text('АКТИВНОСТЬ ЗА НЕДЕЛЮ', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(color: const Color(0xFF1A1D1F), borderRadius: BorderRadius.circular(16)),
            child: const Center(child: Text('Здесь будет график 📊', style: TextStyle(color: Colors.grey))),
          ),
        ],
      ),
    );
  }

  Widget _buildStatBlock(String title, String subtitle, String diff, {bool isRed = false}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: const Color(0xFF1A1D1F), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(diff, style: TextStyle(color: isRed ? Colors.red : const Color(0xFFBBF246), fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 10)),
        ],
      ),
    );
  }
}