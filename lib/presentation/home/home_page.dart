import 'package:silent_moon/import.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: SizedBox(
              width: 120,
              height: 50,
              child: SvgPicture.asset(
                AppVectors.silentMoonSvg,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Good Morning, ',
            style: TextStyle(
                color: AppColors.darkBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'We wish you have a good day',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 30,
          ),
        ]),
      )),
    );
  }
}
