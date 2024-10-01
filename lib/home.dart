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
        buildColumn3(), //Construction de la troisième colonne
        buildColumn4(), //Construction de la quatrième colonne
        buildColumn5(), //Construction de la cinquième colonne
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
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal, //La direction du Scroll
    // Debut du Padding
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10), //Padding
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
    ),
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
    Image.network(
        'data:image/jpeg;base64,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'),
    Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp_35XmyXylDhlgzwjR6mN5yolys40QXN3yw&s'),
    Image.network(
        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhIVFhUSFxUVFxUVFRUVFRISFRUWFhgSFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0lICUtLS0tLS0tLS0tLS8tLi0tKy0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALUBFgMBEQACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQIDBAYFB//EAEIQAAIBAgIGBQkHAgQHAAAAAAABAgMRBCEFEjFBUWEGMnGBkQcTIlKhscHR4SNCcoKSwvBiYxQkc/FTZJOisrPS/8QAGgEBAAIDAQAAAAAAAAAAAAAAAAEDAgQFBv/EADMRAQACAQIDBAkEAgMBAAAAAAABAhEDBBIhMQVBUWETInGRocHR4fAjMoGxFVIUM0Jy/9oADAMBAAIRAxEAPwD7iAAAGwITAkAAAAAAAAAAAAAAAAAAAAENgSAAAAAAAAAAAAAAAAxTd8gMkdgEgAAAAAAhsCt3wAmMgLAAAAAAAAAIbAxrN3AygAAAAAAARJgVu+AFkwJAAAMcpXARjxAyAAAAAAAAU3gTbfcCJMCyAkAAAAAAESYGNgXjHxAsAAAAAACGBVe8CdgELaBcABjlO/YAjHwAyAAAAAAAAAKPLMBJICyQEgAAACs5pK7dkt7MbWisZtOITETM4hzPSDpdDDxVS32aqU4yfFTmotrkk2/ynJt2lx6vDpRyjrPj7G/TZTw5t1dKqisms09nM61bRaItHSWhMTE4lVsyQvGIFgAAAAAAADAouDAJfzgBZICQAFFDwAuAAAAAAAAAAAIUQJAAAAGhjdKwp5L0pcFu7Wc/c9o6WjyjnPhHzls6O1vqc+kOcx2kJ1H6Ty3JbEee3G71NefXnl4dzraO3rpx6vvcP5Qa16VKn69RN+KivfIt2Mc5sumPWdj5MNOOth/8PUf2mH9HP70F1XzysdnY62LTpT7a+zvj+Jczf6GJjUjv5T7fu7eETpuasAAAAAAAAAAQ0ASAkAAAAAAAAAAAAAAAAAAANLFaThDfrPgvizR1+0NHS5ZzPhDY09te/k8PG6WnPK+quC+LOHuO0dXV5ZxHhH1dLR2lKc+svLnUOdluxVrzqGMysirhumeJTqpvZTqUofpl6T/U5HY2lMUx5S15nPPzbeGxE8Djo1Fsb1JcG08vFFddSZpF6/urzj5rOCupE0npaPi+2YLExqQjUi7qSTR6PQ1q62nF697zmrp207zW3WGcuVgAAAAAAAAAAAAAAAAAAAAAAAAAAAKVKqjm2l2mGpq004zecJrWbdIaGI0tFdVX5vJHM1u1aV5acZ+EfVtU2lp/dyeTi9ITntllwWS+pydfe6ur+6eXhHRvaW3pTpDz51DSy2oq16kzGZW1qwTmYTK2KteviNSMpv7iulxlsiu+TRnpV4rRCNScVcN0nwrWE85J5utSV+Lbb+DOxt751ZjylrWnExHm6zpbo/zlJVErtxjLLfJK/tWRobbU4bcMppPJ6vk06QZf4ectvVfPb7VZ950djr+g1vR2/bb4T+clPaO39JSNavWOr6OehcEAAAAAAAAAAAAAAAAAAAAAAAAAADFiayhFyfdzfAp3GtGjpzeWenSb2xDnK1dttt5nk76k3tNrTzdalIiMQ1KlUqmV9atepUMJlbFWvOoYTK6KsEqhjlZFVJMMoaOP9Jxp/nl7or3vvRs6Hq1m096jUnM+x4/lOh5vAUl/zFNv/p1X8EbnZs8Wvb/5n+4at55uvwC85haS40qfjqo5154dSfay6WcXUhLD1rxy1ZJdkW7wl2J60e43b/qUifzz+ra0ZjnWej7D0Z0usRRUvvRykufE73Z269Np8Nv3R18/N5/e7adDUx3T0eudBpgAAAAAAAAAAAAAAAAAAAAAAABDdsyJmIjMkc3OaTx2vLLqrZz5nmN9u/T35ftjp9XW2+hwRz6vNqVDnzLcrVrzqGEytirXnUMJlbFWGczFZEKNhlEK6297Fm+zh2vZ3k1iZnBeeGuVtHUNaTnLe7vlwXZsRfqWxGIac8nOeWKf+UpL+/F+FOr8zd7H/wC6fZ84UakdHT9FquthKD/tr2ZfA0NxGNW0ea20c2l0jwSbUrZTvTl+bqv9Vl+cs0L8pj+fz+P6ZVnEtXonpiWGrWk8k9WfOO6X85mxTVnQ1I1afnjC7caEbjSx3vr9GqpRUou6auj1enqV1KxevSXlbVms4lczYgAAAAAAAAAAAAAAAAAAAAAADwNMaS1vQi/RW1+s+HYee7R33pP06dO+fH7f26e123D61urxZ1DjzLoxVrzqGEytirBKZhMrYqwykQsiFWwnCjZiyiFZK7UOGcu3dHu975F9I4a5a17cUvWw8NVFU25qZ5uG8sL/AMtR/wBX9kjrdj/9tvZ81Op3Pe6BVdbAUOUWva/maW+jGvb2re6PZD2cbQVSEoP7ytfg9z7nma9LcNokclpKg7RqpekrqS7HaUe1NPwZuVxzr7vk2NK+HZ9ANP3SoTf4H8Dodmbr0V/RX6T08p+/9tDtTaZ/Vr/Luz0bggAAAAAAAAAAAAAAAAAAAAAHgaY0te8IPLfLjyXI4HaHaPFnT0p5d8+PlDp7XaY9e/8AEPCqVDiTLp1q151DCZWxVglMxWxDFKQiMp6K3MWeFXIhlEKSnZX3vKK58XyXyLNOuZzPRXq2xyht4ChZXf8AuL2y15b2sV5Y4cB5Xqn2VBcZz9kV8zs9jfvv7IU6vc9XyaVr4GH9MpLwt9TV7TjG4lZWPVh1WsaGWWHl4qitaUfWWuu3KMku/Vf5y+tuUT4cvp+eRXlOHP2dGplkr3i+D4F1o44y26TExwy+q9FdOLEU7N/aR2rjzPQdm7301fR3n1o+MeP1ec3+znQvmP2y906rngAAAAAAAFVPO3+wFgAENgV77AM0BcAAAiTtm9xEzERmSIy5zS+l9a8IO0d73y+h53f9ozqZ09P9vfPj9v7dba7Ph9a/X+nhzqHHmXSirBOZhMrYqwykYrIhVZuxNazacJmcQtPJfPc+DS322dpdMRFfz89iuJmZa7ZrNnDHOaScnsXi3uiuZNazacQxvbhgwcHN60u5bktyRdeYrGIa0vXjka+WKbkZMPnflfl6OGXOq/ZT+Z3Oxet/4+ajW6w3/JVVvhZR9Wb9t2UdrxjXz5LNP9kfy7VHNrGec9Ez4NfGSSSnbqO7zfUeUr9id/yospaJnGOv5DGYnrl5umMFdXX1TLdO3fHRdS3i0NDaQnRqKUXaUX4r5GUzbTtF6TzjovvSutSa2fWdCaWhiIKUcpLrR4P5HqNjva7mnhaOsfP2PLbra20L4np3S9E3mqAAAAABSUuAEU9oGQABWW1ALreBCYFooCQMdetGCcpOyRXqatNOvFecQypS15xWHL6V0s6mSyhw3vm/keZ3vaFteeGOVfDx9v0drbbSNPnPOXkzqHNmW9FWvKZhMrYhiciGcQr/AB8uYiMpmcLa1uxrO648bbbpF0Tw9OivGfaw1J3f82FN7ZnK6lcQw1aqinKTtFbX8Et75EVrN5xCbWisc2lQk6slJq0V1Y8FxfFs25iNOuIa/Oecvew9OyNK1syiWW5ijA2DD5z5XZZ4Zf6r/wDWd/sTpf8Aj5tfX6wy+SWt6NaHNS9iRh21X1qyz0f2/wAvod81fZl9TkzMZrnoyiOUtjENONsnfYjYvzr/AEprGJaKo2hqyd3G8fk33WZXePRznPXuW0nic1pLDuL1ltXtXAt07RaMS2azhv6D0rKnJTg+7jyZhFr6GpF6TiY/Pcy1tGmvThs+n6G0rDEQ1o5NdaO9P5HrNlvabmmY5THWPzueV3W1voWxPTul6ButYAAAKSkBVIDIkBIACJICrkBZL+cAJA1NIaQhSXpZvdFbX8kam63mnt49br3Qv0NvfVnl08XJ4/SMqjvJ9iWxdh5bc7y+vbN59keDt6G3rpRiHn1K64rxRrNqKteWIj60f1L5mOJ8FkQo60fWj+pfMYnwZZhF77LeKIiOZxRC7pyVpLtyvlyZnjEcUMYtEziWGpN7927gV2vNl1axHRq43GQpR1pvLclnKT4RXx2Iy0tK2pOITNsdHN4fG1MRVevlFZwgtkVxb3vn7jp206aOn6v8yomJzmXXaPw1kcvUvmUS3rlSMFwYLgfN/K1L08Ov6anvgeg7E/bf+Pm1dx+6GDyU1bVqsfWgvY2Zds1/TrPmy2/fHsfUE/58GcCJ4oxPVdMY5slOerd2z3X95ZSfRxmY5sJjinl0aspWnf11b80c17L/AKUVzabRz7mcRiWHHYfWROnfErIaPRnQsq+JdNS1Y6kpt2vZppLK/FnW223rurcEzjkq3O5/49OPGeeHULo9isNLzlGSnb1cm1wcXtXY2Wz2Zudvf0mjOce/3Nb/ACG23FeDVjH54un0RpaNZarThVj1qcspLmk9qO1td3GtHDaOG0dYn5eTj7nazozmJzWekx+dXpG41QCk5AVir/MDIkBIAAAAWApVqxitaTSS3t2QGpKpVqZQvTj68l9o1/RB9Xtkt3V3kc5Zco6ssMBTWbgpPfKXpSfNtlH/ABdHPFNYmfGec/Fn6fUxjPyY9J6Np1qM6MorVmrZJZPapLmnZ9xnfRrak0x1Tpa1tPUi8dYfHMVoh05yhJJSg3F9q+B5DUvbTvNLdYexpet6xavSWB6PXAw9MyQ9HrgT6YVejuRl6aTCf8G92VuGWfEmdfPVjwQVHUhFyVSpkr2UpZ8tpFZre0RiEWitYzhheDnKzqScpWV5N3bfyM51q59XlBSmKxEt3QuCSrRvvuu1tZLxsV6mpxVmEakYrl06Zz1RcgwXAi4MPm/lVzrUFwhJ/wDd9D0XYsepf2tPccrQ87ycVNXGJXycJL3fUv7Wrnb5807afWmPL6PrVzyzbRcGFKyustqzXaszKs4lEwvGd0mtjz8SJjCYe90KwyVSrNbdWMfFt/tPQdgxm158Ij45+jldrW9WtfOfz4uuPSuIwYnCQqW1lms1JNqUXxjJZowtp1t1hnW9q9JaylWpdb7aHrJKNWK5xVoz7tV8myecI5T5NvD4mM1eDvbJ7nF+rJPOL5PMyyiYwySjcIEgJAAAAADDKs3lBX/qfVX/ANdi8UQnHiinhVfWk9aS2N7I/hWyPv4tjBlnJQAAOE6e4NRqxqpZVFZ/ijv71b9J5rtrb41I1Y7+vtj7f09F2PrcWnOnPd/U/f8Aty2sjic3YwskieiEWRGZThGoMjXxFO8oQ5677I2sv1OPgy3Ttw1m38e/7K7c5iP5933Z/NlfEsIRs01uafhmIsiYzGHr1J5tc8uwrmOeGvWOWVPOGOGXCr5wYTwnnCcHC+beVCrevSX9v98j0fY0fpW9vyaG5j149jx+hVXVxtHm2vGL+Nja7RrxbazHQn9SH2Lzh5HDocKPOE4OFHnRgwpTqWuuGa7H9b+BlPiiK9ztOhMfs6kuM7eEU/3HpuwqxGle3n8o+rhdrT+pWPL5ujO45QAA16+EjJ62cZrJTjlK3Bv7y5O65EYTEqqrOHXWsvXgs/zQ296v2IHKWxTmpK6aae9O6JQsAAAY69PWjKN3HWTWtHJxurXT4oEKUacnCKqWctVa2rfVcrZtLhe+0hM+TLnyJQWfFeH1AWfH2AQ4vj7CEquEvW9gOTQ0polV4qFXNJ6ys2mnZq+XaynX29NavDeMwv0NzfQtxUeFW6D0/uzqLvjJe5M0LdkaM9Mw6Fe2NaOsRPv+rz6/QiqurWT/ABU5L2qT9xr27Fjuv8F9e2Y76fH7NKp0UxS/4UuybX/lFFFuxtTumGxXtfRnrEtSpoLFx20JPnGUJexSuUW7K3Ed3xXV7S20/wDr4S0IYasnKTo1Vd2T83O1o3XWStt1iq+z1oiI4J9y2m50ZmZ4496ksQlk3Z8Hk/A1raN69YlsRatukrKuV8CcNzz90nyXsVvgYWjmwiqJYhb2l2uxMVmU8OFYVdbKOb/pz9xZXb6tulZ90sZvp162j3s8MPVeUaNZ8/NVEn3uNi6NhuJ5RSVU7rQjrePe5bpZ0Gx+KrxnSoPVVNRvOUIZ60nsbvvR3ez9vqaOlNbV558vJztzudG1s1tHTz+jFofyVaRhWp1GqS1Jxk15y7aTTayT3G3raVtTTtTHWGvXdaVbROX0OPRfFv7tNds5fCBxY7D1e+0fFtz2toeE/D6sseiWJ3ukvzTf7EWR2FfvvHuYT2vp91ZZI9Dq++pDwbMv8FP+/wAPux/zFP8AT4/Yn0Oqpp+cjw2Pfs38beJP+DnGOP4fdH+Yp/p8fs6LQOjqmHpuDtK8nK+zakuPI6my2s7bT4M555c3ebiu41OOIxyw9RTlvj4NG41MQvr8mSg11z8GA11xQEpgYpUFfWj6Mnta3/iWx+8jCcrKbXWXetn0/mZItKaVrtK7srva3sSCFgAAAAAAAAAAAANAauOVoNpLWdox/HJ6sb8rtESyjqUsDGMVGN0opJdiVhg4pY6+Gyzs1z+TImExZpT0FRn1sPSfN04/K5XOjS3Wse5bXcalelp95T6LYVbaMHycbrwldGMbTRjnwR7mU73Xn/3Pvb1DRFCHVpQXZGK9yLY06x0hTbVvbrMtpUYrcZ4YZTqLgvAISkAauBGa5+8CVICQKzjdNcQFKV0uO/tWTAsAAAAIcVwQEaiAmwGGphIynCbV3T1nHgpSVnK3rWur8JS4kYTmcM5KAAAAAAAAAAAAAMM1eceEPS73eK9mt7CE9zK5EoQo8foBYAAAAAAAABDjcCM1z94EpgQlZvnn8H8ALAAAAAAAAAAAAAAAAAAAAAAY8RS1oyjdrWTV4u0ldWumtj5ghiwEZ+bj52yqNLXtsc0km1yyIjzTOM8mwkShIAAAAAAAAAAAAQ0BgxsJuDVJpTeSlLZG7s5W3tJtpb2kstpE+SYxnmy0oasVG7dkldu7dla7e9koXAAAAAAAAAAAACs5W7QJi8gJAAAAAAAAXAAAAAAAAAAAACjlnls3/QC4AAAAAAAAAAAAAAFZSAxgZUBIAAAAAAKyYFbICdnYBcAAAAAAAABjnIBBAZAAAAAAAAKN37ACigJi9wFgAESdkBib3gZIICwAAAAAAAFd4BPICPiBdAAAAAAAAUnLOwFFtsBmSAAAAAAAAhgVWxATJgEgLAf/2Q==')
  ]; // Tableau d'images

  var textsCard = [
    productWidgetTextToCard('Surfing'),
    productWidgetTextToCard('Hiking'),
    productWidgetTextToCard('Camping')
  ];

  return
      //Début de padding
      Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3.0),
    // Début de la carte
    child: Card(
      color: Color(0xfffffffff),
      child: SizedBox(
        width: 155, //Largeur de la boxe
        child: Column(
          // Début de la colonne
          children: [
            // Début du SizedBox
            SizedBox(
              width: 100, //Largeur de l'image
              height: 100, //hauteur de l'image
              child: imagesCards[i], // Tableau d'images
            ),
            // Fin du SizedBox
            //Début du padding
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              //Début de center
              child: Center(
                //Debut du Texte
                child: textsCard[i],
                //Fin du texte
              ),
              //Fin du center
            )
            //fin du padding
          ],
        ),
      ),

      // Fin de la colonne
    ),
  );
  // Fin de la carte
}
//Fin duconstructeur du card 1 de la colonne 3
//Fin du grand III

//Début grand IV

//Début de la construction de la 4eme colonne
Widget buildColumn4() {
  return
      //Début du Padding
      const Padding(
          padding: EdgeInsets.all(30.0),
          child:
              //Début Row
              Row(
            /*Composé de 2 enfants */
            children: [
              //Début du texte 1
              Text(
                'Top sights',
                //Début du style
                style: TextStyle(
                  fontSize: 19, //taille du texte
                  fontWeight: FontWeight.bold, //Poids du texte
                ),
                //Fin du style
              ),
              //Fin du texte 1
              Spacer(), //Espaceur
              //Début du texte 2
              Text(
                'See all',
                //Début du style
                style: TextStyle(
                  fontSize: 18, //couleur du texte
                  color: Color(0xff00b0a0), //Couleur de texte
                ),
                //Fin du style
              )
              //Fin du texte 2
            ],
          )
          //Fin du Row
          );
  //Fin du Padding
}
//Fin du constructeur de la 4eme colonne
//Fin grand IV

//Debut grand V
//Début de la colonne 5
Widget buildColumn5() {
  return
      //Debut du padding
      Padding(
    padding: const EdgeInsets.all(30),
    child: Row(
      /*Composé de 2enfant*/
      children: [
        buildCardColumn5(0), //Constructeur de card
        buildCardColumn5(1), //Constructeur de card
      ],
    ),
  );
  //Fin du padding
}

//Fin de la colonne 5
//Debut du constructeur des card
Widget buildCardColumn5(int i) {
  var imagesCardsColumn5 = [Image.network(''), Image.network('')];
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    //Début du padding
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        //Debut Card
        child: Card(
          ///Debut sizedBox
          child: SizedBox(
            //Début Column
            child: Column(
              /*Composé de 2 enfants*/
              children: [
                //Début sizedBox
                SizedBox(
                  width: 100, //Hauteur image
                  height: 100, //Largeur image
                  child: imagesCardsColumn5[i], //Image
                ),
                //Fin sizedBox
                buildSecondChildCardColumn5(
                    i) //Debut Constructeur  du 2eme enfant
              ],
            ),
            //FinColomn
          ),
          //Fin sizedBox
        )

        //Fin Card
        ),
    //Fin du padding
  );
}
//Fin du constructeur de card

//Debut Constructeur  buildSecondChildCardColumn5
Widget buildSecondChildCardColumn5(int i) {
  return const Padding(padding: EdgeInsets.all(10));
}
//Fin constructeur buildSecondChildCardColumn5
//Fin grand V
