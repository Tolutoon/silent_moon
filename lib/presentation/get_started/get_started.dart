import 'package:shared_preferences/shared_preferences.dart';
import 'package:silent_moon/import.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  String? _username;
  @override
  void initState() {
    super.initState();
    loadUserName();
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
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        // width: MediaQuery.of(context).size.width,
        height: screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appimages.welcomeImg),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                    child: SizedBox(
                  height: 50,
                  width: 120,
                  child: SvgPicture.asset(AppVectors.silentMoonLogoAlt),
                )),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                Text(
                  'Hi $_username, Welcome',
                  style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'to Silent Moon',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const Text(
                  'Explore the app, Find some peace of mind \n to prepare for meditation.',
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: screenHeight * 0.10,
                ),
                Image.asset(Appimages.meditate),
                const Spacer(),
                BasicAppButton(
                  onPressed: () {
                    context.go('/chooseMode');
                  },
                  title: 'Get Started',
                  color: AppColors.white,
                  textColor: AppColors.darkBlue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
