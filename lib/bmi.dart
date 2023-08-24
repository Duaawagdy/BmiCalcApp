
import 'dart:math';

import 'package:bmi/bmiresultscreen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget{
 const BmiScreen({super.key});

  @override
 State createState()=>_BmiScreenststate();

}

class _BmiScreenststate extends State<BmiScreen>{
  bool ismale=true;
  double height=120.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI Calculator'
        ),
      ) ,
      body: Column(
        children: [
          Expanded(child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(children: [
                  Expanded(
                    child:
                      GestureDetector(
                        onTap: (){setState(() {
                          ismale=true;
                        });

                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              child:
                            Column(
                              children:[
           Image(image: AssetImage('images/22.png'),
             height: 90.0,
             width: 90.0,
           ),
SizedBox(
    height: 15.0,
    ),
Text(
    'Male',
    style: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w200,
    ),
    ),
    ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0,),
                              color: ismale ? Colors.blue: Colors.grey[400],
                            ),),
                          ),
                        ),
                      ),
                    ),
SizedBox(
  width: 20.0,
),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              ismale=false;
                            });

                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                child:
                                Column(
                                  children:[
                                    Image(
                                        image:AssetImage('images/11.png'),
                                      height: 90.0,
                                      width: 90.0,
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      'Female',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0,),
                                  color: !ismale ? Colors.blue : Colors.grey[400],
                                ),),
                            ),
                          ),
                        ),
                      ),
  ],
                  ),
          ),

    ),

          Expanded(child:
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
         children: [
               Text(
                 'HEIGHT',
                 style: TextStyle(
                   fontSize: 25.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.baseline,
                 mainAxisAlignment: MainAxisAlignment.center,
                 textBaseline: TextBaseline.alphabetic,
                 children: [
                   Text(
                     '${height.round()}',
                         style: TextStyle(
                           fontSize: 25.0,
                           fontWeight: FontWeight.bold,
                         ),
                   ),
                   Text(
                     'CM',
                     style: TextStyle(
                       fontSize: 18.0,
                       fontWeight: FontWeight.w200,
                     ),
                   ),
                 ],
               ),
               Slider(value:height,
                   max: 220.0,
                   min: 80.0,
                   onChanged:(value){
                setState(() {
                  height=value;
                });
                   }, ),
         ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[400],
              ),
            ),
          ),),
          Expanded(child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
             children: [
               Expanded(
                 child:
                   Container(
                     child:
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:[
                       Text(
                         'weight',
                         style: TextStyle(
                           fontSize: 25.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Text(
                         '$weight',
                         style: TextStyle(
                           fontSize: 25.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               weight--;
                             });
                           },
                             heroTag: 'weight--',
                             mini: true,
                           child: Icon(
                             Icons.remove,

                           ),
                           ),
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               weight++;
                             });
                           },
                             heroTag: 'weight++',
                             mini: true,
                             child: Icon(
                               Icons.add,

                             ),
                           )
                         ],
                       )

    ],//children
                     ),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0,),
    color: Colors.grey[400],
    ),
    ),
    ),
                   SizedBox(
                     width: 20.0,
                   ),
                   Expanded(
                     child: Container(
                       child:
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:[
                           Text(
                             'AGE',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Text(
                             '$age',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(onPressed: (){
                                 setState(() {
                                   age--;
                                 });
                               },
                                 heroTag: 'age--',
                                 mini: true,
                                 child: Icon(
                                   Icons.remove,

                                 ),
                               ),
                               FloatingActionButton(onPressed: (){
                                 setState(() {
                                   age++;
                                 });
                               },
                                 heroTag: 'age++',
                                 mini: true,
                                 child: Icon(
                                   Icons.add,

                                 ),
                               )
                             ],
                           )

                         ],//children
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0,),
                         color: Colors.grey[400],
                       ),
    ),
                   ),

                 ],
               ),
          ),

          ),

         Container(
           width: double.infinity,
             color: Colors.blueAccent,
             child:MaterialButton(onPressed: (){
               var result=weight/ pow(height/ 100,2);
               print(result.round());
               Navigator.push(context,
                   MaterialPageRoute(
                     builder:(context)=>BMIResultScreen(
                       age: age,
                       ismale:ismale,
                       result: result.round(),
                     ) ,
                   ),
               );

             },
                 height: 50.0,
          child:Text(
              'CALCULATE',
            style: TextStyle(
              color: Colors.white70,
            ),
          ))),
        ],
      ),
    );

  }
}
