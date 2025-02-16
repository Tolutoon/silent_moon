import 'package:silent_moon/common/widgets/cards/topic/topic_card.dart';
import 'package:silent_moon/import.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

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
            const SizedBox(
              height: 20,
            ),
            const Text(
              'choose a topic to focus on:',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              children: const [
                TopicCard(
                    color: Color(0xFF8E97FD),
                    imagePath: Appimages.reduceStress,
                    title: "Reduce Stress"),
                TopicCard(
                    color: Color(0xFFFA6E5A),
                    imagePath: Appimages.improvePerformance,
                    title: "Improve Performance"),
                TopicCard(
                    color: Color.fromARGB(255, 254, 176, 143),
                    imagePath: Appimages.increaseHappiness,
                    title: "Incresed Happiness"),
                TopicCard(
                    color: Color(0xFFFFCF86),
                    imagePath: Appimages.reduceAnxiety,
                    title: "Reduce Anxiety"),
                TopicCard(
                    color: Color(0xFF6CB28E),
                    imagePath: Appimages.personalGrowth,
                    title: "Personal Growth"),
                TopicCard(
                    color: Color(0xFF3F414E),
                    imagePath: Appimages.betterSleep,
                    title: 'Better Sleep'),
              ],
            )),
            const SizedBox(
              height: 16,
            ),
            BasicAppButton(onPressed: () {}, title: "Continue")
          ],
        ),
      )),
    );
  }
}
