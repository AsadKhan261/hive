import 'package:flutter/material.dart';
import 'package:hive/presentation/elements/app_button.dart';
import 'package:hive/presentation/elements/custom_text.dart';
import 'package:hive/presentation/elements/custom_text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

TextEditingController nameController = TextEditingController();

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    print(nameController.text);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(child: Image.asset('assets/images/logo.png')),
              SizedBox(
                height: 50,
              ),
              CustomText(
                text: 'Create account',
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Welcome to Hive Vault\n Sign up to continue',
                color: Colors.white,
              ),
              CustomTextField(
                name: 'Name',
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(name: 'Email'),
              SizedBox(
                height: 10,
              ),
              CustomTextField(name: 'Password'),
              SizedBox(
                height: 10,
              ),
              CustomTextField(name: 'Confirm Password'),
              SizedBox(
                height: 30,
              ),
              AppButtton(
                  width: MediaQuery.of(context).size.width,
                  text: 'Create account',
                  color: Colors.black,
                  onPress: () {},
                  textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
