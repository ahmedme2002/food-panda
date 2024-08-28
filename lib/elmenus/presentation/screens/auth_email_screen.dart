import 'package:appmenus/elmenus/presentation/screens/login_with_email_screen.dart';
import 'package:appmenus/elmenus/presentation/widget/coustom_text_button.dart';
import 'package:appmenus/elmenus/presentation/widget/coustom_text_form_field.dart';
import 'package:flutter/material.dart';

class AuthEmailScreen extends StatefulWidget {
  const AuthEmailScreen({super.key});

  @override
  State<AuthEmailScreen> createState() => _AuthEmailScreenState();
}

class _AuthEmailScreenState extends State<AuthEmailScreen> {
  TextEditingController emailController = TextEditingController();
  String emailText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFF2B85),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Contine",
              style: TextStyle(
                color: emailText.isEmpty
                    ? Colors.grey.shade300
                    : const Color(0xFFFF2B85),
              ),
            ),
          )
        ],
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
                      "assets/images/email_icon.png",
                      width: 60,
                    ),
                  ),
                  const Text(
                    "What is Your Email? ",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "We Well Check if you an account",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CoustomTextFormField(
                    labeltext: "Email",
                    controller: emailController,
                    onchanged: (value) {
                      setState(() {
                        emailText = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[300],
            ),
            CustomTextButton(
              isDisabled: emailText.isEmpty,
              text: "Containe",
              onpressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginWithEmailScreen(),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
