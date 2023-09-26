import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_app/components/appointement-card.dart';
import 'package:registration_app/utils/constants/colors.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

int selectedIndex = 0;
  static  final List<Widget> _widgetOptions = <Widget>[
    ListView(
      children: const [
        DoctorCard(date: 'Wed June 20',name: 'Dr.Padma Jignesh',designation: 'OrthoPedic',pic: 'pexels-thirdman-5327585.jpg'),
        DoctorCard(date: 'Fri June 22',name: 'Dr.Sakshi Sinha',designation: 'Obstetrician',pic: 'jeremy-alford-O13B7suRG4A-unsplash.jpg'),
        DoctorCard(date: 'Fri June 22',name: 'Dr.John Leigh',designation: 'Obstetrician',pic: 'usman-yousaf-pTrhfmj2jDA-unsplash.jpg',),
        DoctorCard(date: 'Fri June 22',name: 'Dr.Sakshi Sinha',designation: 'Obstetrician',pic: 'jeremy-alford-O13B7suRG4A-unsplash.jpg',),
        DoctorCard(date: 'Fri June 22',name: 'Dr.Sakshi Sinha',designation: 'Obstetrician',pic: 'pexels-thirdman-5327585.jpg'),
      ],
    ),
    ListView(
      children: const [
        DoctorCard(date: 'Wed June 20',name: 'Dr.Padma Jignesh',designation: 'OrthoPedic',pic: 'pexels-thirdman-5327585.jpg',),
        DoctorCard(date: 'Fri June 22',name: 'Dr.Sakshi Sinha',designation: 'Obstetrician',pic: 'jeremy-alford-O13B7suRG4A-unsplash.jpg'),
        DoctorCard(date: 'Fri June 22',name: 'Dr.John Leigh',designation: 'Obstetrician',pic: 'usman-yousaf-pTrhfmj2jDA-unsplash.jpg',),
        DoctorCard(date: 'Fri June 22',name: 'Dr.Sakshi Sinha',designation: 'Obstetrician',pic: 'jeremy-alford-O13B7suRG4A-unsplash.jpg'),
        DoctorCard(date: 'Fri June 22',name: 'Dr.Sakshi Sinha',designation: 'Obstetrician',pic: 'pexels-thirdman-5327585.jpg',),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Schedule',style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),),
               CircleAvatar(
                 radius: 35,
                 backgroundColor: backgroundColor,
                 child: Image.asset('assets/images/bell.png',width: 35,height: 35,),
               )
             ],
            ),
            CustomSlidingSegmentedControl<int>(
              // controller: controller,
              isStretch: true,
              initialValue: 0,
              height: 54,
              children: const {
                0: Text('Upcoming',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
                1: Text('Past',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
              },
              decoration: BoxDecoration(
                color: CupertinoColors.lightBackgroundGray,
                borderRadius: BorderRadius.circular(30),
              ),
              thumbDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                    offset: const Offset(
                      0.0,
                      2.0,
                    ),
                  ),
                ],
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              onValueChanged: (v) {
                print(v);
               setState(() {
                 selectedIndex = v;
               });
              },
            ),
            Container(
              child: Expanded(child: _widgetOptions.elementAt(selectedIndex)),
            )

          ],
        ),
      ),
    );
  }
}
