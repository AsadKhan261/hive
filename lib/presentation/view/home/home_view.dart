import 'package:flutter/material.dart';
import 'package:hive/configs/front_end_configs.dart';
import 'package:hive/models/page_view_model.dart';
import 'package:hive/presentation/elements/app_button.dart';
import 'package:hive/presentation/elements/custom_text.dart';
import 'package:hive/presentation/view/home/widgets/home_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

List<PageViewModel> myList = [
  PageViewModel(color: const Color(0xffff5252), image: 'assets/images/1.jpeg'),
  PageViewModel(color: Colors.purpleAccent, image: 'assets/images/2.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/3.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/4.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/1.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/2.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/3.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/4.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/1.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/2.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/3.jpeg'),
  PageViewModel(color: Colors.lightGreen, image: 'assets/images/4.jpeg'),
];

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  CustomText(
                    text: 'Welcome To ',
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: 'Hive Vault',
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: PageView.builder(
                        itemCount: myList.length,
                        scrollDirection: Axis.horizontal,
                        pageSnapping: true,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: () {
                              print(myList[i].color);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: myList[i].color,
                                  borderRadius: BorderRadius.circular(12),
                                  // image: DecorationImage(
                                  //   image: AssetImage(myList[i].image.toString()),fit: BoxFit.cover
                                  // )
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      myList[i].image.toString(),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    color: Colors.black54,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            text: 'upcomming docs'.toUpperCase(),
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        HomeCard(title: 'KINGCORGI'),
                        HomeCard(title: 'SHIBCHAIN'),
                        HomeCard(title: 'VERSATILE'),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppButtton(
                            width: 0,
                            height: 70,
                            text: 'My Account',
                            color: FrontEndConfigs.kPrimaryColor,
                            onPress: () {},
                            textColor: Colors.white),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: AppButtton(
                            width: 0,
                            height: 70,
                            text: 'Setting',
                            color: FrontEndConfigs.kPrimaryColor,
                            onPress: () {},
                            textColor: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: AppButtton(
                            width: 0,
                            height: 70,
                            text: 'News',
                            color: FrontEndConfigs.kPrimaryColor,
                            onPress: () {},
                            textColor: Colors.white),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: AppButtton(
                            width: 0,
                            height: 70,
                            text: 'Support',
                            color: FrontEndConfigs.kPrimaryColor,
                            onPress: () {},
                            textColor: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
