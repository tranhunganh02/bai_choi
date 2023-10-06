import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool mute = true;

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/bg_app.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height/3),
          child: Center(
            child: Container(
              color: const Color.fromARGB(255, 105, 64, 64),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Bài chòi", style: TextStyle(),),
                  TextButton(onPressed: (){}, child: Text("Choiw"))
                ],
              ),
            ),
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: Color(0xFFEE9F72),
        onPressed: (){
          setState((){
            mute = !mute;
          });
        },
          shape: const CircleBorder(),
        child: mute==true ? const Icon(Icons.volume_mute, size: 45): const Icon(Icons.volume_off, size: 45)
      ), // This tr
    );
  }
}
