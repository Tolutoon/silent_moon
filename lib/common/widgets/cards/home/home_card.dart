import 'package:silent_moon/common/widgets/button/startButton/start_button.dart';
import 'package:silent_moon/import.dart';

class HomeCard extends StatelessWidget {
  final Color color;
  final String imagePath;
  const HomeCard({super.key, required this.color, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(15),
      clipBehavior: Clip.antiAlias,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  height: 80,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Basics',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'COURSE',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.5,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '3-10 MIN',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const StartButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}