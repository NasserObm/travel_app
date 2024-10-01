import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState(); //Creation du State Home
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //Début du body
            //Debut de la partie Scrollable
            SingleChildScrollView(
                child: //Debut de la colonne principale de la page home
                    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      /*Sera composée de 6 enfants */
      children: [
        buildColumn1(), //Construction de la première colonne
        buildColumn2(), //Construction de la deuxième colonne
        // buildColumn3(), //Construction de la troisième colonne
        // buildColumn4(), //Construction de la quatrième colonne
        // buildColumn5(), //Construction de la cinquième colonne
        // buildColumn6(), //Construction de la sixième colonne
      ],
    )
                //Fin de la colonne principale de la page home
                )
        //Fin de la partie scrollable
        //Fin du body
        );
    //Fin du Scaffold
  }
  //Fin du build de la page Home
}

//Grand I pour tous ce qui concernent la ligne 1
//Constructeur de la ligne 1
Widget buildColumn1() {
  return
      //Début du padding
      Padding(
          padding: EdgeInsets.only(top: 50, left: 25, right: 25), //Padding
          //Début du row de la première ligne
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, //Pour séparer les enfants
            /*Sera Composé de 2enfants */
            children: [
              buildLeftSideColumn1(), //Construction du coté gauche de la colonne 1
              buildRightSideColumn1(), //Construction du coté droit de la colonne 1
            ],
          ) //Fin du row de la première ligne
          ); //Fin du padding de la première ligne
} //Fin de la première ligne

//Début du constructeur buildLeftSideColumn1 de la colonne 1
Widget buildLeftSideColumn1() {
  return
      //Début du Row de buildLeftSideColumn1
      const Row(
    /*Sera Composé de 2enfants */
    children: [
      //Debut de la sizedbox
      SizedBox(
        child:
            //Début de l'icon
            Icon(
          Icons.place, //Icon
          color: Color.fromARGB(255, 146, 192, 230), //Couleur de l'icone
        ),
        //Fin de l'icone
      ),
      //Fin de la sizedBox
      //Début du texte
      Text(
        '  Bali, Indonesia',
        //Début du style
        style: TextStyle(
          fontSize: 14, //Taille du texte
          fontWeight: FontWeight.normal, //Poids du texte
        ),
        //Fin du style
      )
      //Fin du texte
    ],
  );
  //Fin du Row de buildLeftSideColumn1
}
//Fin du constructeur du buildLeftSide

//Début du constructeur de buildRidghtSideColumn1
Widget buildRightSideColumn1() {
  return
      //Debut du padding pour buildRightSideColumn1
      const Padding(
    padding: EdgeInsets.all(8.0), //Padding de tous les cotés
    child:
        //Début du circular Avatar
        CircleAvatar(
      radius: 22, // Taille du cercle
      backgroundImage: AssetImage(
          'assets/nasser.jpg'), // Image circulaire (remplace avec ton image)
    ),
    //Fin du circular Avatar
  );
  //Fin du padding du buildRightSideColumn1
}
//Fin du constructeur de buildRightSideColumn1

//Fin du Grand I

//Debut du grand II pour tous ce qui concerne la 2eme ligne
//Debut du constructeur buildColumn2
Widget buildColumn2() {
  return
      //Debut du padding
      const Padding(
    padding: EdgeInsets.only(right: 100, left: 30), //Début padding
    child:
        //Début du texte de la 2eme ligne
        Text(
      'Exciting things you\ncan  do here',
      //Debut du style
      style: TextStyle(
        fontSize: 35, //Taille de la police
        fontWeight: FontWeight.bold, //poids du textge
      ),
      //Fin du style
    ),
    //Fin du texte de la 2eme ligne
  );
  //Fin du padding
  //Fin de la 2eme ligne
}
//Fin du constructeur buildColumn2
//Fin du grand II

//Debut du grand III
//Début du constructeur buildColum
Widget buildColumn3() {
  return
      // Debut du Padding  du
      Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10), //
    child:
        //Début du row
        Row(
      /*Composé de 3 enfants */
      children: [
        buildCardColumn3(0), //Constructeur du card 1 de colonne 3
        buildCardColumn3(1), //Constructeur du card 2 de la colonne 3
        buildCardColumn3(2), //Constructeur du card 3 de la conlonne 3
      ],
    ),
    //Fin du Row
  );
}

//Fin du constructeur buildColumn3
//Début du constructeur du card 1 de la colonne 3
Widget buildCardColumn3(int i) {
  //Methode pour créer des textes
  Widget productWidgetTextToCard(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 15,
        ),
      );
  //Fin de la methode de création du texte
  var imagesCards = [
    Image.network(''),
    Image.network(''),
    Image.network('')
  ]; // Tableau d'images

  var textsCard = [
    productWidgetTextToCard('Surfing'),
    productWidgetTextToCard('Hiking'),
    productWidgetTextToCard('Camping')
  ];

  return Card(
    // Début de la carte
    child: Column(
      // Début de la colonne
      children: [
        // Début du SizedBox
        SizedBox(
          child: imagesCards[i], // Tableau d'images
        ),
        // Fin du SizedBox
        //tDebut du Texte
        textsCard[i],
        //Findu texte
      ],
    ),
    // Fin de la colonne
  );
  // Fin de la carte
}

//Fin duconstructeur du card 1 de la colonne 3
//Fin du grand III
