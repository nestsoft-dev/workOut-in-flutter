import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:workout_flutter/pages/started/home_view.dart';

import '../shared/styles/colors.dart';
import 'navigation/navigation.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/image1.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            //sing up text

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 150),
              child: Row(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    'Train and live the new experience of \n exercising at home',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: formLogin(),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Navigation()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kFirstColor,
                      ),
                      height: 50,
                      width: Get.width * 0.7,
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    // onPressed: (){
                    //   Navigator.p
                    // },
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent,
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      height: 50,
                      width: Get.width * 0.7,
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column formLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: TextStyle(color: Color(0xFF707070), fontSize: 18),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter name",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Email",
          style: TextStyle(color: Color(0xFF707070), fontSize: 18),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter email",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Password",
          style: TextStyle(color: Color(0xFF707070), fontSize: 18),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "*******",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Confirm PPassword",
          style: TextStyle(color: Color(0xFF707070), fontSize: 18),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "*******",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
                'By signing up, you agree to our policy of service and \n user agreements')
          ],
        ),
      ],
    );
  }
}
