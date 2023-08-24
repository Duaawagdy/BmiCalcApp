import 'package:flutter/material.dart';

import 'bmi.dart';
class LOGIN extends StatefulWidget{
  const LOGIN({super.key});

  @override
  State createState()=>login();

}
class login extends State<LOGIN>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Log In'
        ),

      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style:TextStyle(
                fontSize:25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value)
              {
                print(value);
              },

              decoration:InputDecoration(
                labelText: 'Email Address',
                prefixIcon:Icon(
                  Icons.email,
                ),
                border: OutlineInputBorder() ,
              ),
            ),
              SizedBox(
                height: 10.0,
              ),
            TextFormField(
keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (value)
              {
                print(value);
              },

              decoration:InputDecoration(
                labelText: 'Password',
                prefixIcon:Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                Icons.remove_red_eye,
                ),
                border: OutlineInputBorder() ,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.blueGrey,

              child: MaterialButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder:(context)=>BmiScreen() ,
                  ),
                );
              },
                child: Text(
                  'LOGIN',


               style   : TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}