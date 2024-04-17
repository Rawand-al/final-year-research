
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Models/sing%20in/ForgetPassowrd.dart';
import 'package:flutter_application_1/Models/sing%20in/SiginUp.dart';
import 'package:flutter_application_1/cons.dart';
import 'package:flutter_application_1/custom_textfeild.dart';
import 'package:flutter_application_1/Models/root/secand.dart';
import 'package:page_transition/page_transition.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  get favoratedPlants => null;

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
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0PLpiebeQ5yiCYv7Q9QBVI4BkcaGaOOsQgZYLZwbD4Cj8EDic7-cLL0pT-J2U2HW4pw&usqp=CAU",
              fit: BoxFit.cover,
            ),
            Center(
                child: const Text(
              " چوونە ژوورەوە",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            )),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFeild(
              obscureText: false,
              hintText: "یمێلەکەت بنوسە",
              icon: Icons.alternate_email,
            ),
            const CustomTextFeild(
              obscureText: true,
              hintText: "زمارەی نهێنی بنوسە",
              icon: Icons.lock,
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: secand(favoratedPlants2: [], favoratedPlants: [],
                          
                        ),
                        type: PageTransitionType.bottomToTop));
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
                    "داخل بوون",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: ForgetPass(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: 'وشەی نهێنیت بیر چووە؟',
                            style: TextStyle(color: cons.blackcolor)),
                        TextSpan(
                            text: 'کلیک بکە',
                            style: TextStyle(color: cons.primaryColor))
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('یان'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: cons.primaryColor),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.network(
                        "https://static.vecteezy.com/system/resources/previews/022/484/503/non_2x/google-lens-icon-logo-symbol-free-png.png"),
                  ),
                  Text(
                    " بە گۆگل داخڵ بە",  
                   
                    style: TextStyle(color: cons.primaryColor),
                  )
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: SignUp(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: 'تۆمارکردنی نوێ؟',
                            style: TextStyle(color: cons.blackcolor)),
                        TextSpan(
                            text: 'تۆمار بکە',
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
