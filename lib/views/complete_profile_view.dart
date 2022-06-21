import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../transition_routing/slide_rigt_routing.dart';
import '../utilis/dropdown_menu.dart';
import '../utilis/my_textfield.dart';
import '../utilis/reusable_button.dart';
import 'intro_pages_view.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({
    Key? key,
  }) : super(key: key);

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/womangym.png'),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Let's complete your profile",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              Text(
                'It will help us to know more about you!',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 12,
              ),
              AppDropdownInput(
                hintText: "Choose Gender",
                options: const ["Male", "Female"],
                value: gender,
                onChanged: (String? value) {
                  setState(() {
                    gender = value;
                  });
                },
                getLabel: (String value) => value,
              ),
              const SizedBox(
                height: 12,
              ),
              const MyTextField(
                hintText: 'Date of birth',
                inputType: TextInputType.text,
                obsecureText: false,
                icon: Icons.calendar_month_outlined,
              ),
              const SizedBox(
                height: 12,
              ),
              const PersonWeightHeight(
                hintText: 'Your Weight',
                icon: Icons.monitor_weight_outlined,
                weightTitle: 'KG',
              ),
              const SizedBox(
                height: 12,
              ),
              const PersonWeightHeight(
                hintText: 'Your Height',
                icon: Icons.height_outlined,
                weightTitle: 'CM',
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    SlideRightRoute(
                      page: const IntroPages(),
                    ),
                  );
                },
                title: 'Next ⫸',
                bgColor: const Color(0xFF92A3FD),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonWeightHeight extends StatelessWidget {
  const PersonWeightHeight({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.weightTitle,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final String weightTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyTextField(
            hintText: hintText,
            inputType: TextInputType.text,
            obsecureText: false,
            icon: icon,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            gradient: LinearGradient(
              colors: [
                Color(0xFFC58BF2),
                Color(0xFFEEA4CE),
              ],
            ),
          ),
          child: Center(
            child: Text(
              weightTitle,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
