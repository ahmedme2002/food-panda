import 'package:appmenus/elmenus/presentation/screens/home_screen.dart';
import 'package:appmenus/elmenus/presentation/widget/coustom_text_button.dart';
import 'package:appmenus/elmenus/presentation/widget/coustom_text_form_field.dart';
import 'package:flutter/material.dart';

class FillAccountInfoScreen extends StatefulWidget {
  const FillAccountInfoScreen({super.key});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  String emailText = "";
  String passText = "";
  String firsNameText = "";
  String lastNameText = "";
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
                color: passText.isEmpty ||
                        firsNameText.isEmpty ||
                        lastNameText.isEmpty
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
                      "assets/images/profile_icon.png",
                      width: 60,
                    ),
                  ),
                  const Text(
                    "Lets get  you started ",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "First, lets create your foodpande account with progammingoffcial@gmail.com  ",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        padding: EdgeInsets.only(right: 7),
                        child: CoustomTextFormField(
                          // noIcon: false,
                          labeltext: "First Name",
                          controller: firstnameController,
                          onchanged: (value) {
                            setState(() {
                              firsNameText = value;
                            });
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        padding: EdgeInsets.only(right: 7),
                        child: CoustomTextFormField(
                          // noIcon: false,
                          labeltext: "Last Name",
                          controller: lastnameController,
                          onchanged: (value) {
                            setState(() {
                              lastNameText = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
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
                ],
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[300],
            ),
            CustomTextButton(
              isDisabled: passText.isEmpty ||
                  firsNameText.isEmpty ||
                  lastNameText.isEmpty,
              text: "Continue",
              onpressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
