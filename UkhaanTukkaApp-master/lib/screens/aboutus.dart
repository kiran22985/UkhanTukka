import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({ Key? key }) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('About Us'),centerTitle: true,backgroundColor: Colors.red,),
      body: SafeArea(child: Column(children: [
        Container(
          //margin: EdgeInsets.only(top:20),
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              "https://media.istockphoto.com/vectors/abstract-vector-background-for-use-in-design-vector-id183954960?k=20&m=183954960&s=612x612&w=0&h=n_Z933ml0u6ZKZJ3KOxKl2tSqNv_N9L1vheVVdBX_5Q="),
          fit: BoxFit.cover,
        )),
          child: Column
          
          (
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
            const CircleAvatar(
                    radius: 45.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://lh3.googleusercontent.com/yQ7P1rPiljgC0NweFKQI2k_mXiijv3VjUL5bOUep8OHwGuBII1kc4KoUnD9InhICzJKG'),
                  ),
                  const SizedBox(height:10),
                  const Text('Nepali Ukhan Tukka',style:TextStyle(color:Colors.white,)),
                  const SizedBox(height: 10,),
                  const Text('Developed by Thulo Technology Pvt. Ltd',style:TextStyle(color:Colors.white))

          ],),
        ),
        const Divider(thickness: 20,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Card(
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                
                child: const ListTile(
                  title: Text('Rate this App',style:TextStyle(fontWeight: FontWeight.bold)),
                  leading:Icon(Icons.rate_review) ,
                ),
              ),
              
              
              Card(
                
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: const ListTile(title: Text('Share App',style:TextStyle(fontWeight: FontWeight.bold)),
                leading:Icon(Icons.share)),
              ),
                
              Card(
                
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(title: const Text('Like us on Facebook',style:TextStyle(fontWeight: FontWeight.bold)),
                leading: Image.asset('images/1.png',width: 20,height: 20,),
                onTap: () => launch('https://www.facebook.com/thulotechnology')
                ),
              ),
                
              Card(
                
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ListTile(title:const  Text('Visit our website',style:TextStyle(fontWeight: FontWeight.bold)),
                leading:const Icon(Icons.web_stories),
                onTap: () => launch('https://thulotechnology.com/')
                ),
              ),
            ],),
        ),
      ],)
      ),
      
    );
  }
}