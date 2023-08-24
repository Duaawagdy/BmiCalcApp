import 'package:flutter/material.dart';
class BMIResultScreen extends StatelessWidget{
  final int result;
  final bool ismale;
  final int age;
  const BMIResultScreen({
    required this.result,
    required this.ismale,
    required this.age,
});
  @override
  Widget build(BuildContext context){
    return Scaffold(
appBar: AppBar(
  title: Text(
    'BMI RESULT'
  ),
),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Gender:${ismale ? 'Male':'Female'}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Age:$age',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Result:$result',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    ),
    );
  }
}