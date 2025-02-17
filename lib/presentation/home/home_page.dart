import 'package:shared_preferences/shared_preferences.dart';
import 'package:silent_moon/common/widgets/cards/daily/daily_thought.dart';
import 'package:silent_moon/common/widgets/cards/home/home_card.dart';
import 'package:silent_moon/common/widgets/cards/topic/topic_card.dart';
import 'package:silent_moon/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _username;
  String _greeting = "";
  @override
  void initState() {
    super.initState();
    loadUserName();
    _updateGreeting();
  }

  void _updateGreeting() {
    final hour = DateTime.now().hour;
    setState(() {
      if (hour < 12) {
        _greeting = 'Good Morning';
      } else if (hour < 17) {
        _greeting = 'Good Afternoon';
      } else if (hour < 21) {
        _greeting = 'Good Evening';
      } else {
        _greeting = 'Good Night';
      }
    });
  }

  Future<void> loadUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');

    setState(() {
      if (username != null && username.isNotEmpty) {
        _username = username[0].toUpperCase() + username.substring(1);
      } else {
        _username = username;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
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
            height: 32,
          ),
          Text(
            '$_greeting, $_username ',
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
          const SizedBox(
            height: 20,
          ),
          DailyThoughtCard(),
          const SizedBox(
            height: 36,
          ),
          Text(
            'Recommended for you',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColors.darkBlue),
          )
        ]),
      )),
    );
  }
}
