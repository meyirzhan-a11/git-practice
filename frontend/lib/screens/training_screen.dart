import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Тренировки', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
            CircleAvatar(backgroundColor: const Color(0xFFBBF246), child: const Icon(Icons.add, color: Colors.black)),
          ],
        ),
        const SizedBox(height: 20),
        _buildTrainingCard('Сила: Верх тела', '45 мин • 380 ккал', 'Сложно', Icons.fitness_center),
        const SizedBox(height: 12),
        _buildTrainingCard('ВИИТ Кардио Взрыв', '30 мин • 520 ккал', 'Сложно', Icons.local_fire_department, isDone: true),
        const SizedBox(height: 12),
        _buildTrainingCard('Кор и Гибкость', '25 мин • 180 ккал', 'Средне', Icons.favorite_border),
      ],
    );
  }

  Widget _buildTrainingCard(String title, String subtitle, String difficulty, IconData icon, {bool isDone = false}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1D1F),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: isDone ? const Color(0xFFBBF246).withOpacity(0.3) : Colors.transparent),
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: Colors.black, child: Icon(icon, color: const Color(0xFFBBF246), size: 20)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text('$subtitle • $difficulty', style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          Icon(isDone ? Icons.check_circle : Icons.play_circle_fill, 
               color: isDone ? const Color(0xFFBBF246) : Colors.grey, size: 32),
        ],
      ),
    );
  }
}