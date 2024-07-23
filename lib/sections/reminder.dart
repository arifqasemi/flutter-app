import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        child: Container(
          decoration: BoxDecoration(color:const Color.fromARGB(255, 255, 255, 255),borderRadius:BorderRadius.circular(10)),
          height: 110,
          width: 380,
          margin:const EdgeInsets.only(bottom: 10),
          child:const Padding(
            padding: EdgeInsets.all(15),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Reminder',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),), Text('Interview at zoom In 2 hour.',style: TextStyle(fontWeight: FontWeight.w400),)],
                ),
                Text('19:30 AM',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              ],
            ),
          ),
        ),
      );
    
  }
}
