import 'package:flutter/material.dart';
import 'package:hive/configs/extension.dart';
import 'package:hive/presentation/elements/custom_text.dart';
import 'package:hive/presentation/elements/custom_text_field.dart';
import 'package:hive/presentation/elements/tab_bar_button.dart';
import 'package:hive/presentation/view/doctor_module/tabs/button1.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({Key? key}) : super(key: key);

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

int _selectIndex = 1;

class _DoctorHomeState extends State<DoctorHome> {
  @override
  Widget build(BuildContext context) {
    print("inDex is :::::${_selectIndex}");
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.ph,
              CustomText(
                text: 'Find Your \nConsultation',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              10.ph,
              CustomTextField(name: 'Search'),
              10.ph,
              CustomText(
                text: 'Categories',
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              20.ph,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TabBarButton(
                      text: 'Button1',
                      buttonColor: _selectIndex == 1?Color(0xfffcdac2): Colors.white,
                      onPress: () {
                        setState(() {
                          _selectIndex = 1;
                        });
                      },
                      textColor: _selectIndex ==1?Colors.black: Colors.black,
                    ),
                    10.pw,
                    TabBarButton(
                      text: 'Button2',
                      buttonColor:_selectIndex == 2?const Color(0xfffcdac2): Colors.white,
                      onPress: () {
                        setState(() {
                          _selectIndex = 2;
                        });
                      },
                      textColor:_selectIndex == 2?Colors.black: Colors.black,
                    ),
                    10.pw,
                    TabBarButton(
                      text: 'Button3',
                      buttonColor: _selectIndex == 3?const Color(0xfffcdac2): Colors.white,
                      onPress: () {
                        setState(() {
                          _selectIndex = 3;
                        });
                      },
                      textColor: _selectIndex == 3?Colors.black: Colors.black,
                    ),
                    10.pw,
                    TabBarButton(
                      text: 'Button4',
                      buttonColor: _selectIndex == 4?const Color(0xfffcdac2): Colors.white,
                      onPress: () {
                        setState(() {
                          _selectIndex = 4;
                        });
                      },
                      textColor: _selectIndex == 4?Colors.black: Colors.black,
                    ),
                    10.pw,
                    TabBarButton(
                      text: 'Button5',
                      buttonColor: _selectIndex == 5?const Color(0xfffcdac2): Colors.white,
                      onPress: () {
                        setState(() {
                          _selectIndex = 5;
                        });
                      },
                      textColor: _selectIndex == 5?Colors.black: Colors.black,
                    ),
                    10.pw,
                    TabBarButton(
                      text: 'Button6',
                      buttonColor: _selectIndex == 6?const Color(0xfffcdac2): Colors.white,
                      onPress: () {
                        setState(() {
                          _selectIndex = 6;
                        });
                      },
                      textColor: _selectIndex == 6?Colors.black: Colors.black,
                    ),
                  ],
                ),
              ),
              if(_selectIndex == 1) Button1(),
              if(_selectIndex == 2)Center(child: Text('Button 2'))
            ],
          ),
        ),
      ),
    );
  }
}
