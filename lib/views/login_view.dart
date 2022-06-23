import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../transition_routing/scale_routing.dart';
import '../transition_routing/slide_left_routing.dart';
import '../utilis/widgets/divider_with_text.dart';
import '../utilis/google_facabook_buttons.dart';
import '../utilis/my_richtext.dart';
import '../utilis/my_textfield.dart';
import '../utilis/reusable_button.dart';
import 'create_account_view.dart';
import 'welcome_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Hey there,',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Text(
                'Welcom Back',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const MyTextField(
                hintText: 'Email',
                inputType: TextInputType.emailAddress,
                obsecureText: false,
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 12,
              ),
              const MyTextField(
                hintText: 'Password',
                inputType: TextInputType.text,
                obsecureText: true,
                icon: Icons.lock_outline_rounded,
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                child: Text(
                  'Forgot your password?',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFADA4A5),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    ScaleRoute(
                      page: const WelcomeView(),
                    ),
                  );
                },
                title: '↪ Login',
                bgColor: const Color(0XFF92A3FD),
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              const DividersWithText(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  GoogleFacebookButtons(
                    imagePath: "assets/images/googlelogo.png",
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  GoogleFacebookButtons(
                    imagePath: "assets/images/facebooklogo.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              MyRichText(
                text1: "Don’t have an account yet? ",
                text2: 'Register',
                onTap: () {
                  Navigator.push(
                    context,
                    SlideLeftRoute(
                      page: const CreateAccountView(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
