import 'package:flutter/material.dart';
import 'package:hive/presentation/elements/app_button.dart';
import 'package:hive/presentation/elements/custom_text.dart';
import 'package:hive/presentation/elements/custom_text_field.dart';
import 'package:hive/presentation/view/home/home_view.dart';
import 'package:hive/presentation/view/signup/signup_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    print(emailController.text);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpView()));
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: 'Dont have an account? ',color: Colors.white,),
                CustomText(text: 'Sign up',color: Colors.white,fontWeight: FontWeight.bold,),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(child: Image.asset('assets/images/logo.png')),
              CustomText(
                text: 'Sign in',
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomText(
                text: 'Welcome to Hive Vault\n Login to continue',
                color: Colors.white,
              ),
              SizedBox(
                height: 80,
              ),
              CustomTextField(
                name: 'Email',
                controller: emailController,
              ),
              CustomTextField(
                name: 'Password',
                controller: passwordController,
              ),
              SizedBox(
                height: 20,
              ),
              AppButtton(
                  width: MediaQuery.of(context).size.width,
                  text: 'Login',
                  color: Colors.black,
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeView()));
                  },
                  textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
