import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String designation;
  final String date;
  final String pic;
  const DoctorCard({Key? key, required this.name,required this.designation, required this.date, required this.pic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
      child: InkWell(
        onTap:  () {
          showModalBottomSheet<void>(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            builder: (BuildContext context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        const Divider(
                          color: Colors.grey,
                          indent: 200,
                          endIndent: 200,
                          thickness: 6,
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(),
                            Text('Summary',style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),),
                            Text('Cancel',style: TextStyle(fontSize: 20, color: Colors.grey,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        const SizedBox(height: 25,),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset('assets/images/$pic',width: 40,height: 40,fit: BoxFit.cover,),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name,style: const TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
                                Text(designation,style: const TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w400),),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 25,),
                        const Text('Doctor\'s Advice',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/checkmark.png',width: 20,height: 20,),
                            const SizedBox(width: 10,),
                            const Text('Drink 4 litres of water a day',style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w400),),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/checkmark.png',width: 20,height: 20,),
                            const SizedBox(width: 10,),
                            const Text('Sleep for 8 hours',style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w400),),
                          ],
                        ),const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/checkmark.png',width: 20,height: 20,),
                            const SizedBox(width: 10,),
                            const Text('No Smoking',style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w400),),
                          ],
                        ),
                        const SizedBox(height: 25,),
                        const Text('Discharge',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/icons8-pdf-100.png',width: 150,height: 160,),
                            Image.asset('assets/images/icons8-pdf-100.png',width: 150,height: 160,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            children: [
              Container(
                width: 5,
                height: MediaQuery.of(context).size.height * 0.7,
                color: Colors.green,
              ),
              const SizedBox( width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Appointment Date',style: TextStyle(fontSize: 18, color: Colors.black45,fontWeight: FontWeight.w400),),
                            const SizedBox(height: 5,),
                            Row(

                              children: [
                              const Icon(Icons.access_time_outlined,color: Colors.black,size: 18,weight: 2),const SizedBox(width: 8,),
                              Text('$date . 8:00 - 8:30 AM',style: const TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),),
                            ],),
                          ],
                        ),
                        const Icon(Icons.more_vert_outlined,size: 25,)
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,thickness: 1,indent: 10,endIndent: 10,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/$pic',width: 50,height: 50,fit: BoxFit.cover,),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,style: const TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
                            Text(designation,style: const TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
