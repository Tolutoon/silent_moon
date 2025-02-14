import 'package:silent_moon/import.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    TextEditingController emailAdressController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgroundColor,
      appBar: const BasicAppBar(
        route: '/',
      ),
      body: Stack(
        children: [
          Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: Image.asset(
              Appimages.backImg,
              width: double.infinity,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ),

          // Main content
          Column(
            children: [
              const SizedBox(height: kToolbarHeight + 40),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            "Welcome Back!",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: AppColors.darkBlue,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          SocialButton(
                            onPressed: () {},
                            icon: Icons.facebook,
                            color: Colors.white,
                            textColor: Colors.white,
                            backgroundColor: AppColors.secondary,
                            text: 'Continue with Facebook',
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          SocialButton(
                            hasOutline: true,
                            onPressed: () {},
                            icon: FontAwesomeIcons.google,
                            textColor: Colors.black,
                            backgroundColor: Colors.white,
                            text: 'Continue with Google',
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          const Text(
                            'OR LOG IN WITH YOUR EMAIL',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          BasicInputField(
                            hintText: 'Email Address',
                            controller: emailAdressController,
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          BasicInputField(
                            hintText: 'Password',
                            controller: passwordController,
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          BasicAppButton(
                            onPressed: () {},
                            title: 'Log In',
                            height: 70,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(color: AppColors.primary),
                          ),
                          SizedBox(
                            height: height * 0.1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'ALREADY HAVE AN ACCOUNT?',
                                style: TextStyle(color: AppColors.lightGrey),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.go('/signup');
                                },
                                child: const Text(
                                  'SIGN UP',
                                  style: TextStyle(color: AppColors.primary),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
