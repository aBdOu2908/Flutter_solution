import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class MyDesktop extends StatelessWidget {
   MyDesktop({Key? key}) : super(key: key);
  static const _backgroundColor = Colors.lightGreen;
   GlobalKey<ScaffoldState> Mkey= new GlobalKey<ScaffoldState>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Mkey,
      backgroundColor: Colors.white,
      endDrawer: Container(
        width: 300,
        color: Colors.white,
        child: Drawer(
             child: ListView(
               padding: EdgeInsets.all(0),
               children: [
                 Container(
                   alignment: Alignment.topRight,
                   height: 104,
                   child: DrawerHeader(
                     decoration: BoxDecoration(
                       color: Color.fromARGB(255,102,205,170)
                     ) ,
                     child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               ElevatedButton(
                                 child: Text('Log in >', style: TextStyle(fontSize: 12.0),),
                                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent) ),
                                 onPressed: () {},
                               ),
                               Divider(thickness: 2,),
                               ElevatedButton(
                                 child: Text("s'inscrire >", style: TextStyle(fontSize: 12.0),),
                                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent) ),
                                 onPressed: () {},
                               ),
                             ],
                           ),


                   ),
                 ),
               ],
             ),
        ),
      ),
      body:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background_image.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [

                  Positioned(
                    right: 80,
                    top: 34,
                    child: Container(
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),

                      ),
                        child: GestureDetector(
                          onTap: (){
                            Mkey.currentState!.openEndDrawer();
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Icon(Icons.menu, size: 50, color: Colors.black,),
                          ),
                        ),
                    ),
                  ),

                Positioned(
                  top: 0,
                  left: 60,
                  child: Container(
                    alignment: Alignment.topLeft,

                    child: Image.asset('images/logo.png', width: 120, height: 120,),
                  ),
                ),
                Positioned(
                  top: 205,
                  left: 100,

                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Pour commencer ...", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                        SizedBox(height: 25,),
                        Text("faire votre shynleï, jouer avec, c'est l'occasion", style: TextStyle(color: Colors.white, fontSize: 18),),
                        Text("d'ecouter vos rêve, de les partager et de prendre", style: TextStyle(color: Colors.white, fontSize: 18),),
                        Text("confience dans votre richesse", style: TextStyle(color: Colors.white, fontSize: 18),),
                        SizedBox(height: 30,),
                        Text("Nom et Prénom", style: TextStyle(color: Colors.white, fontSize: 18),),

                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  top: 385,
                  right: 720,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: "Jeal",
                                   labelStyle: TextStyle(color: Colors.white),
                                   hintStyle: TextStyle(color: Colors.white, fontSize: 19),
                                 ),
                               ),

                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        SizedBox(height: 15,),
                        Text("Mon intension", style: TextStyle(color: Colors.white, fontSize: 18),),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "L'intension, l'objectif de ce shynlei",
                              labelStyle: TextStyle(color: Colors.white),
                              hintStyle: TextStyle(color: Colors.white60, fontSize: 15),
                            ),
                          ),

                        ),
                        SizedBox(height: 15,),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Mon rêl",
                              labelStyle: TextStyle(color: Colors.white),
                              hintStyle: TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ),

                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),

                      ],
                    ),
                ),
                Positioned(
                  top: 205,
                  right: 80,

                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Votre shynlei c'est ...", style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),),
                        SizedBox(height: 25,),
                        Text("7 etapes, 2 fiches pour prendre note des rencontres, 1 page pour éclairer", style: TextStyle(color: Colors.black, fontSize: 14),),
                        Text("le sens, 3 interprétation pour vous aider..", style: TextStyle(color: Colors.black, fontSize: 14),),
                        SizedBox( height: 20,),
                        Row(
                          children: [
                            SvgPicture.asset('images/Page-1.svg', width: 40,height: 40,),
                            SizedBox(width: 10,),
                            Text("1. le rêve libère l'expression"),
                            SizedBox(width: 18,),
                            SvgPicture.asset('images/Page-2.svg', width: 40,height: 40,),
                            SizedBox(width: 10,),
                            Text("2. le sens éclaire le parcours"),

                          ],
                        ),
                        SizedBox( height: 20,),
                        Row(
                          children: [
                            SvgPicture.asset('images/Page-3.svg', width: 40,height: 40,),
                            SizedBox(width: 10,),
                            Text("3. la différence rend unique"),
                            SizedBox(width: 18,),
                            SvgPicture.asset('images/Page-4.svg', width: 40,height: 40,),
                            SizedBox(width: 10,),
                            Text("4. la valeur humaine met en mouvement"),
                          ],
                        ),
                        SizedBox( height: 20,),
                        Row(
                          children: [
                            SvgPicture.asset('images/Page-5.svg', width: 40,height: 40,),
                            SizedBox(width: 10,),
                            Text("5. la clé exprime le style"),
                            SizedBox(width: 18,),
                            SvgPicture.asset('images/Page-6.svg', width: 40,height: 40,),
                            SizedBox(width: 10,),
                            Text("6. le parcours associe rêve et réalité"),
                          ],
                        ),
                        SizedBox( height: 20,),
                        Row(
                          children: [
                            SvgPicture.asset('images/Page-7.svg', width: 40,height: 40,),
                            SizedBox(width: 10,),
                            Text("7. le ciel bleu révèle l'alignement"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                    right: 300,
                    child: Container(
                      child: ElevatedButton(
                        child: Text('Exprimer mes rêve >', style: TextStyle(fontSize: 12.0),),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255,102,205,170)) ),
                        onPressed: () {},
                      ),
                    ),
                ),
              ],
            ),
          ),


    );
  }
}