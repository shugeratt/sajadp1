import 'package:flutter/material.dart';
import 'package:sajadone/screens//cards_screen.dart';
import '../bottom_nav_bar.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});



  @override
  Widget build(BuildContext context) {
    TextEditingController userControler =TextEditingController();
    TextEditingController userPass =TextEditingController();
    return Scaffold(

      backgroundColor: Color.fromRGBO(45, 45, 131,0.7),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text('L  O  R  E  M',style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontSize: 50),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Text('B A N K',style: TextStyle(fontFamily: 'Montserrat',fontSize: 50,color: Colors.white),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('WELCOME!',style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,fontSize: 20),),

          )
          ,
          Container(
              width: 250,
              color: Color.fromRGBO(45, 45, 131,0.7),
              child: TextField(
                controller: userControler,
                decoration: InputDecoration(hintText:'                 username' ),

              )),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
                width: 250,
                color: Color.fromRGBO(45, 45, 131,0.7),
                child: TextField(

                  obscureText: true,
                  controller: userPass,

                  decoration: InputDecoration(hintText: "                  pasword",
                    fillColor: Color.fromRGBO(45, 45, 131,0.7),
                    filled: true,
                  ),
                )),
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top:70,left: 20),
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(45, 45, 131,0.7),
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.white, width: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)
                      )

                  )

                  , child:Text('CREAT NEW ACCOUNT',style: TextStyle(fontFamily: 'Montserrat',color: Colors.white, fontSize: 10),selectionColor: Colors.indigo,)),

            ),

            Padding(
              padding: const EdgeInsets.only(top:70,left: 40),
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(45, 45, 131,0.7),
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.white, width: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)
                      )

                  )

                  , child:Text('FORGET PASSWORD?',style: TextStyle(fontFamily: 'Montserrat',color: Colors.white, fontSize: 10),selectionColor: Colors.indigo,)),

            ),
          ] )






          ,Padding(
            padding: const EdgeInsets.only(top: 160),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => CardsScreen(),));
                // Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(45, 45, 131,0.7),
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),

                ),
              ),
              child: Text('LOG IN', style: TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w100,color: Colors.white, fontSize: 30)),
            ),
          ),
        ]),

      ),);
  }
}