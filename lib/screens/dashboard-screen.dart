
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/appointement-card.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/doctor-bg.jpg',width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height * 0.5,fit: BoxFit.fill,),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/pro-pic.jpg',width: 40,height: 40,fit: BoxFit.cover,),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Image.asset('assets/images/bell.png',width: 20,height: 20,),
                        )
                      ],
                    ),
                    const SizedBox(height: 40,),
                    const Text('Welcome!',style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    const Text('Rajesh',style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    const Text('How is it going today?',style: TextStyle(fontSize: 18, color: Colors.black45,fontWeight: FontWeight.w400),),
                    const SizedBox(height: 40,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.orange
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.wb_twighlight, color: Colors.white,size: 15,),
                            Text('Urgent Care',style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right:15,top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Our Services',style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26,width: 1),
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                    ),
                                    child: const Icon(Icons.medical_services_outlined,color: Colors.blueAccent,size: 30,),
                                  ),   const SizedBox(height: 5,),
                                  const Text('Consultation',style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26,width: 1),
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                    ),
                                    child: const Icon(Icons.medical_services_outlined,color: Colors.blueAccent,size: 30,),
                                  ),   const SizedBox(height: 5,),
                                  const Text('Medicines',style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26,width: 1),
                                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                                    ),
                                    child: const Icon(Icons.medical_services_outlined,color: Colors.blueAccent,size: 30,),
                                  ),
                                  const SizedBox(height: 5,),
                                  const Text('Consultation',style: TextStyle(fontSize: 13, color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Appointment',style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),),
                              Text('See All',style: TextStyle(fontSize: 15, color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                            ],),
                          const SizedBox(height: 30,),
                          const DoctorCard(date: 'Wed June 20',name: 'Dr.Padma Jignesh',designation: 'OrthoPedic',pic: 'pexels-thirdman-5327585.jpg'),
                          const DoctorCard(date: 'Fri June 22',name: 'Dr.Sakshi Sinha',designation: 'Obstetrician',pic: 'jeremy-alford-O13B7suRG4A-unsplash.jpg'),
                          const DoctorCard(date: 'Fri June 22',name: 'Dr.John Leigh',designation: 'Obstetrician',pic: 'usman-yousaf-pTrhfmj2jDA-unsplash.jpg',),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}