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
      /*Sera composée de 6 enfants */
      children: [
        buildColumn1(), //Construction de la première colonne
        //  buildColumn2(), //Construction de la deuxième colonne
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

//Grand I pour tous ce qui concernent la ligne 1
  //Constructeur de la ligne 1
  Widget buildColumn1() {
    return
        //Début du row de la première ligne
        Row(
      /*Sera Composé de 2enfants */
      children: [
        buildLeftSideColumn1(), //Construction du coté gauche de la colonne 1
        buildRightSideColumn1(), //Construction du coté droit de la colonne 1
      ],
    );
  } //Fin du row de la première ligne

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
          'Bali,Indonesia',
          //Début du style
          style: TextStyle(
            fontSize: 14, //Taille du texte
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
        radius: 30, // Taille du cercle
        backgroundImage: AssetImage(
            'assets/nasser.jpg'), // Image circulaire (remplace avec ton image)
      ),
      //Fin du circular Avatar
    );
    //Fin du padding du buildRightSideColumn1
  }

  //Fin du constructeur de buildRightSideColumn1

  //Fin du Grand I

  //Fin du constructeur de la ligne1
}
