import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../transition_routing/slide_bottom_routing.dart';
import '../transition_routing/slide_top_routing.dart';
import '../utilis/divider_with_text.dart';
import '../utilis/google_facabook_buttons.dart';
import '../utilis/my_checkbox.dart';
import '../utilis/my_richtext.dart';
import '../utilis/my_textfield.dart';
import '../utilis/reusable_button.dart';
import 'complete_profile_view.dart';
import 'login_view.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Hey there,',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Create an Account',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyTextField(
                  hintText: 'First Name',
                  inputType: TextInputType.text,
                  obsecureText: false,
                  icon: Icons.person_outline,
                ),
                const SizedBox(
                  height: 12,
                ),
                const MyTextField(
                  hintText: 'Last Name',
                  inputType: TextInputType.text,
                  obsecureText: false,
                  icon: Icons.person_outline,
                ),
                const SizedBox(
                  height: 12,
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
                const MyCheckBox(),
                const SizedBox(
                  height: 50,
                ),
                MyButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      SlideTopRoute(
                        page: const CompleteProfileView(),
                      ),
                    );
                  },
                  title: 'Register',
                  bgColor: const Color(0XFF92A3FD),
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                const DividersWithText(),
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
                  height: 12,
                ),
                MyRichText(
                  text1: "Already have an account? ",
                  text2: 'Login',
                  onTap: () {
                    Navigator.push(
                      context,
                      SlideBottomRoute(
                        page: const LoginView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
