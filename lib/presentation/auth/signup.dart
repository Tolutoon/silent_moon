import 'package:silent_moon/auth/auth_service.dart';
import 'package:silent_moon/common/widgets/error/error_dialog.dart';
import 'package:silent_moon/common/widgets/success/success_dialog.dart';
import 'package:silent_moon/import.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailAdressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailAdressController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dipose() {
    emailAdressController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final authService = AuthService();

    void signup() async {
      final email = emailAdressController.text;
      final password = passwordController.text;

      print('$email, $password');
      try {
        await authService.signUpWithEmailAndPassword(email, password);
        showDialog(
            context: context,
            builder: (context) => const SuccessDialog(
                content:
                    "Your account has been successfully created with silent mood",
                path: '/home'));
      } catch (e) {
        showDialog(
            // ignore: use_build_context_synchronously
            context: context,
            builder: (context) => ErrorDialog(errorMessage: e.toString()));
        // ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text('Error: ${e.toString()}')));
      }
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const BasicAppBar(
        route: '/',
      ),
      body: Stack(
        children: [
          Positioned(
              top: -30,
              left: 0,
              right: 0,
              child: Image.asset(
                Appimages.backImg,
                width: double.infinity,
                fit: BoxFit.cover,
                height: height * 0.4,
              )),
          Column(
            children: [
              Expanded(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        children: [
                          const Text(
                            "Create your account",
                            style: TextStyle(
                                fontSize: 32,
                                color: AppColors.darkBlue,
                                fontWeight: FontWeight.bold),
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
                            hintText: 'Username',
                            controller: usernameController,
                          ),
                          SizedBox(
                            height: height * 0.025,
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
                            onPressed: () => signup(),
                            title: 'get started',
                            height: 70,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
