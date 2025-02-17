import 'package:silent_moon/import.dart';

class DailyThoughtCard extends StatelessWidget {
  const DailyThoughtCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 51, 50, 66),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(Appimages.camoOverlay),
              fit: BoxFit.cover,
            )),
        padding: EdgeInsets.all(32),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily Thought',
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Meditation • 3 - 10 Mins",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            // const SizedBox(
            //   width: 42,
            // ),
            Icon(
              Icons.play_arrow_rounded,
              color: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
