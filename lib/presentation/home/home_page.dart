import 'package:silent_moon/common/widgets/cards/home/home_card.dart';
import 'package:silent_moon/common/widgets/cards/topic/topic_card.dart';
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
            'Good Morning, User',
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
          Row(
            children: [
              SizedBox(
                  height: 210,
                  width: 177,
                  child: HomeCard(
                      imagePath: Appimages.basicCourses,
                      color: Color.fromARGB(255, 142, 151, 253))),
              const SizedBox(
                width: 16,
              ),
              SizedBox(
                  height: 210,
                  width: 177,
                  child: HomeCard(
                      imagePath: Appimages.basicCourses,
                      color: Color.fromARGB(255, 255, 201, 126))),
              // SizedBox(
              //   height: 210,
              //   width: 117,
              //   child: HomeCard(
              //       color: Color.fromARGB(255, 255, 219, 157),
              //       imagePath: Appimages.relaxationMusic),
              // )
            ],
          ),
        ]),
      )),
    );
  }
}
