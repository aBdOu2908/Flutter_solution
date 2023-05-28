import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';




class MyMobile extends StatelessWidget {
  const MyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        padding: EdgeInsets.all(0),

        child: Column(

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Votre shynlei ", style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("7 etapes, 2 fiches pour prendre note des ", style: TextStyle(color: Colors.black, fontSize: 16),),
                Text("rencontres, 1 page pour éclairer le sens, 3 ", style: TextStyle(color: Colors.black, fontSize: 16),),
                Text("interprétation pour vous aider..", style: TextStyle(color: Colors.black, fontSize: 16),),
              ],
            ),

            SizedBox( height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 14.5),
              child: Column(

                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Row(

                      children: [
                        SvgPicture.asset('images/Page-1.svg', width: 52,height: 52,),
                        SizedBox(width: 10,),
                        Text("1. le rêve libère l'expression", style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(

                    child: Row(

                      children: [
                        SvgPicture.asset('images/Page-2.svg', width: 52,height: 52),
                        SizedBox(width: 10,),
                        Text("2. le sens éclaire le parcours",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(

                    child: Row(

                      children: [
                        SvgPicture.asset('images/Page-3.svg', width: 52,height: 52,),
                        SizedBox(width: 10,),
                        Text("3. la différence rend unique", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(

                    child: Row(

                      children: [
                        SvgPicture.asset('images/Page-4.svg', width: 52,height: 52,),
                        SizedBox(width: 10,),
                        Text("4. la valeur humaine met en mouvement", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(

                    child: Row(

                      children: [
                        SvgPicture.asset('images/Page-5.svg', width: 52,height: 52,),
                        SizedBox(width: 10,),
                        Text("5. la clé exprime le style", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(

                    child: Row(

                      children: [
                        SvgPicture.asset('images/Page-6.svg', width: 52,height: 52,),
                        SizedBox(width: 10,),
                        Text("6. le parcours associe rêve et réalité", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(

                    child: Row(

                      children: [
                        SvgPicture.asset('images/Page-7.svg', width: 52,height: 52,),
                        SizedBox(width: 10,),
                        Text("7. le ciel bleu révèle l'alignement", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: ElevatedButton(
                      child: Text('Exprimer mes rêve >', style: TextStyle(fontSize: 16.0),),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255,102,205,170)) ),
                      onPressed: () {},
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