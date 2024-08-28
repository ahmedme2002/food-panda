import 'package:appmenus/elmenus/presentation/screens/fill_account_info_screen.dart';
import 'package:appmenus/elmenus/presentation/screens/veravication_screen.dart';
import 'package:appmenus/elmenus/presentation/widget/coustom_text_button.dart';
import 'package:appmenus/elmenus/presentation/widget/coustom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreen();
}

class _LoginWithEmailScreen extends State<LoginWithEmailScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  // String emailText = "";
  String passText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFF2B85),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Image.asset(
                      "assets/images/login_icon.png",
                      width: 60,
                    ),
                  ),
                  const Text(
                    "Login With your Email ",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "log in with Your Password to or get a login link via email ",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CoustomTextFormField(
                    noIcon: false,
                    labeltext: "Password",
                    controller: passController,
                    onchanged: (value) {
                      setState(() {
                        passText = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "I frogot my password ? ",
                      style: TextStyle(
                          color: Color(0xFFFF2B85),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[300],
            ),
            CustomTextButton(
              isDisabled: passText.isEmpty,
              text: "Login with password",
              onpressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FillAccountInfoScreen(),
                ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const VeravicationScreen(),
                ));
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFFF2B85)),
                ),
                child: const Center(
                  child: Text(
                    "Send Me a login link",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF2B85),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
