// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contact Us"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.redAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red[400],
                            radius: 108,
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://thulotechnology.com/ubunseem/2020/12/cropped-thulotechnologylogo-1.png"),
                              //NetworkImage
                              radius: 100,
                            ), //CircleAvatar
                          ), //CirclAvatar
                          const SizedBox(
                            height: 60,
                          ), //SizedBox
                          const Text(
                            'Thulo Technology Pvt.Ltd',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Pokhara, Nepal',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'info@thulotechnology.com',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '+977 9805832889 ',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                        ],
                      ), //Column
                    ), //Padding
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
