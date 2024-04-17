import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cons.dart';
import 'package:flutter_application_1/custom_textfeild.dart';
import 'package:flutter_application_1/Models/sing%20in/login.dart';
import 'package:flutter_application_1/Models/root/secand.dart';
import 'package:page_transition/page_transition.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
  body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVZ14159bXExoKON1uzMWmoDJNYEZuIkG_KA&usqp=CAU",
              fit: BoxFit.cover,
            ),
            Center(
                child: const Text(
              "  زمارەی نهێنیت بیر چووە؟",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            )),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFeild(
              obscureText: false,
              hintText: "یمێلەکەت بنوسە",
              icon: Icons.alternate_email,
            ),
         
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: cons.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Center(
                  child: Text(
                    "وشەی نهێنی ڕێکبخەرەوە ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 5,
            ),
         
            
            GestureDetector(
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: SingIn(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: 'تۆمارت هەیە؟ ',
                            style: TextStyle(color: cons.blackcolor)),
                        TextSpan(
                            text: 'تۆمار بە',
                            style: TextStyle(color: cons.primaryColor))
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}