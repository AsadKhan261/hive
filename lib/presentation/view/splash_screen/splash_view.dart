import 'package:flutter/material.dart';
import 'package:hive/configs/front_end_configs.dart';
import 'package:hive/presentation/elements/app_button.dart';
import 'package:hive/presentation/view/login_screen/login_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg.png')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(
                height: 200,
              ),
              Row(
                children: [
                  Expanded(
                      child: AppButtton(
                    width: 0,
                    text: 'Login',
                    color: Colors.white,
                    textColor: Colors.black,
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginView()));
                    },
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: AppButtton(
                    width: 0,
                    text: 'Signup',
                    color: FrontEndConfigs.kPrimaryColor,
                    textColor: Colors.white,
                    onPress: () {},
                  )),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
