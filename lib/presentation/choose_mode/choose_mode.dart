// choose_mode_page.dart
import 'package:flutter/material.dart';
import 'package:silent_moon/common/widgets/cards/topic/topic_card.dart';
import 'package:silent_moon/import.dart';

class ChooseModePage extends StatefulWidget {
  const ChooseModePage({super.key});

  @override
  State<ChooseModePage> createState() => _ChooseModePageState();
}

class _ChooseModePageState extends State<ChooseModePage> {
  int? selectedTopicIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What Brings you',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const Text(
                'to Silent Moon?',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 20),
              const Text(
                'choose a topic to focus on:',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  itemCount: topicData.length,
                  itemBuilder: (context, index) {
                    final topic = topicData[index];
                    return TopicCard(
                      color: topic.color,
                      imagePath: topic.imagePath,
                      title: topic.title,
                      isSelected: selectedTopicIndex == index,
                      onTap: () {
                        setState(() {
                          selectedTopicIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              BasicAppButton(
                onPressed: () {
                  context.go('/home');
                },
                title: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Topic data model
class TopicData {
  final Color color;
  final String imagePath;
  final String title;

  const TopicData({
    required this.color,
    required this.imagePath,
    required this.title,
  });
}

// Topic data list
final List<TopicData> topicData = [
  TopicData(
    color: const Color(0xFF8E97FD),
    imagePath: Appimages.reduceStress,
    title: "Reduce Stress",
  ),
  TopicData(
    color: const Color(0xFFFA6E5A),
    imagePath: Appimages.improvePerformance,
    title: "Improve Performance",
  ),
  TopicData(
    color: const Color.fromARGB(255, 254, 176, 143),
    imagePath: Appimages.increaseHappiness,
    title: "Increased Happiness",
  ),
  TopicData(
    color: const Color(0xFFFFCF86),
    imagePath: Appimages.reduceAnxiety,
    title: "Reduce Anxiety",
  ),
  TopicData(
    color: const Color(0xFF6CB28E),
    imagePath: Appimages.personalGrowth,
    title: "Personal Growth",
  ),
  TopicData(
    color: const Color(0xFF3F414E),
    imagePath: Appimages.betterSleep,
    title: "Better Sleep",
  ),
];

// Modified TopicCard widget
class TopicCard extends StatelessWidget {
  final Color color;
  final String imagePath;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const TopicCard({
    super.key,
    required this.color,
    required this.imagePath,
    required this.title,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: isSelected
              ? Border.all(
                  color: Colors.orange,
                  width: 3,
                )
              : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 8,
                  )
                ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
