import 'package:flutter/material.dart';

//Page Welcome
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //Partie Scrollable de l'apk
            SingleChildScrollView(
                child:
                    //Début du centreur globale
                    Center(
                        child: //Colonne principale de l'apk
                            Column(
      //Composé de trois enfants Texte, Image, Bouton
      children: [
        buildTextSection(), //Appel de la méthode de construction des texte
        buildImageSection(), //Appel de la méthode de Construction de l'image
        buildButtonSection() //Appel de la méthode de Construction du bouton
      ],
    ) //Fin de la colonne principale
                        )
                //Fin du centreur Total
                )
        //Fin de la partie Scrollable
        );
  }

  //Méthode de construction des Textes
  Widget buildTextSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 100),
      child: Column(
        //Dans cette partie on aura 2 colonnes pour les 2textes
        children: [
          //Grand titre
          Text(
            'A New Way\n To Travel',
            //style du titre
            style: TextStyle(
              fontSize: 40, //Taille du titre
              fontWeight: FontWeight.bold, //Poids du titre
            ),
            //fin du style du titre
          ),
          //Fin Grand titre
          //Début espace entre les textes
          SizedBox(
            height: 15,
          ),
          //Fin espace entre les textes
          //Début du sous titre
          Text(
            'Find the best things to do for your trip.',
            //Début du style du sous titre
            style: TextStyle(
                fontSize: 18, //Taille du texte
                fontWeight: FontWeight.w300 //Poids du texte
                ),
            //Fin du style du sous titre
          )
          //Fin du sous titre
        ],
      ),
    );
    //Fin des colonnes pour les textes
  }
  //Fin de la construction des textes

  //Début de la méthode de construction de la section image
  Widget buildImageSection() {
    return //Début de l'image
        Image.asset('assets/travel.png');
    //Fin de l'image
  }
  //Fin de la méthode de construction de l'image

  //Début de la construction de la méthode du bouton
  Widget buildButtonSection() {
    return
        //Début du padding du bouton
        Padding(
      padding: const EdgeInsets.only(top: 20),
      child:
          //Début du bouton
          ElevatedButton(
        //Début de l'action lors du pressement du bouton
        onPressed: () {
          // Action pour passer à la page suivante
        }, //fin de l'action lors du pressement du bouton
        //Style du bouton
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(30), //Bordure arrondie du bouton
          ),
        ), //Fin du style du bouton
        //Début du texte dans le bouton
        child: const Text(
          'Explore',
          style: TextStyle(fontSize: 18),
        ),
        //Fin du texte dans les boutons
      ),
      //Fin du bouton
    );
    //Fin du padding du bouton
  }
  //Fin de la construction de la méthode du bouton
}
