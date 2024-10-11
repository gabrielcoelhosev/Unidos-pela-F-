import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unidos_pela_fe/data.dart';
import 'package:unidos_pela_fe/responsive/catolicor.dart';
import 'package:unidos_pela_fe/responsive/evangelicor.dart';
import 'package:unidos_pela_fe/responsive/ubandar.dart';
import 'package:unidos_pela_fe/responsive/whats.dart';
import 'package:url_launcher/url_launcher.dart';

class Cellbody extends StatefulWidget {
  const Cellbody({super.key});

  @override
  State<Cellbody> createState() => _CellBodyState();
}

class _CellBodyState extends State<Cellbody> {
  List<Data> capas = [
    Data(image: 'assets/imgs/catolico.jpg', text: 'Católico'),
    Data(image: 'assets/imgs/ubanda.jpg', text: 'Ubanda'),
    Data(image: 'assets/imgs/evangelico.jpg', text: 'Evangélico')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/imgs/capa.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    const Center(
                      child: Text(
                        'Unidos pela Fé',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: 'Dancing'),
                        softWrap: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            whats();
                          },
                          icon: FaIcon(FontAwesomeIcons.whatsapp,
                              color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () async {
                            final urlInsta = Uri.parse(
                                'https://www.instagram.com/unidospelafepht/');
                            if (await canLaunchUrl(urlInsta)) {
                              await launchUrl(urlInsta);
                            } else {
                              throw 'Não foi possível abrir o link $urlInsta';
                            }
                          },
                          icon: FaIcon(FontAwesomeIcons.instagram,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: 2300,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      'Quem Somos?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Dancing'),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Nós somos a Amanda e o Daniel, e juntos formamos uma dupla de fotógrafos chamada Unidos pela Fé.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'RobotoCondensed',
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Especializados em eternizar momentos religiosos, fazemos cobertura de pequenos e grandes eventos como: aniversários, batizados, batuques, elebós, casamentos, apresentações religiosas em geral, etc.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'RobotoCondensed',
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Queremos registrar o seu momento religioso com muito amor e carinho, criando um vínculo para a vida toda para você e sua família.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'RobotoCondensed',
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 100),
                    buildPersonSection('Amanda', 'assets/imgs/amanda.jpeg'),
                    const SizedBox(height: 100),
                    buildPersonSection('Daniel', 'assets/imgs/daniel.jpeg'),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade900,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'Veja nosso Portifólio',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Dancing',
                          fontSize: 35),
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      itemCount: capas.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            _redirecionador(capas[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 280,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(capas[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Flexible(
                                  child: Text(
                                    capas[index].text,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Dancing',
                                        fontSize: 25),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    const Text(
                      'Entre em Contato',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Dancing'),
                    ),
                    const SizedBox(height: 30),
                    contactText(),
                    const SizedBox(height: 50),
                    contactButtons(),
                    const SizedBox(height: 50),
                    buildImageSection(
                        'assets/imgs/criarmemorias.jpeg', 300, 500),
                  ],
                ),
              ),
            ),
            footer(),
          ],
        ),
      ),
    );
  }

  Widget buildPersonSection(String name, String imagePath) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
              color: Colors.white, fontSize: 35, fontFamily: 'Dancing'),
        ),
        const SizedBox(height: 20),
        Container(
          height: 650,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget contactText() {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300),
          child: Center(
            child: Text(
              'Cada momento é um presente divino, e suas celebrações merecem ser eternizadas com respeito e profissionalismo.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed'),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300),
          child: Center(
            child: Text(
              'Entre em contato com nossa equipe e permita-nos transformar seus momentos sagrados em memórias eternas.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed'),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }

  Widget contactButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          onPressed: () async {
            final urlA = Uri.parse('http://wa.me/554984004220');
            if (await canLaunchUrl(urlA)) {
              await launchUrl(urlA);
            } else {
              throw 'Não foi possível abrir o link $urlA';
            }
          },
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.whatsapp,
                    color: Colors.green, size: 20),
                SizedBox(width: 10),
                Text('Contato Amanda',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          onPressed: () async {
            final urlD = Uri.parse('http://wa.me/554999791770');
            if (await canLaunchUrl(urlD)) {
              await launchUrl(urlD);
            } else {
              throw 'Não foi possível abrir o link $urlD';
            }
          },
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.whatsapp,
                    color: Colors.green, size: 20),
                SizedBox(width: 10),
                Text('Contato Daniel',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildImageSection(String imagePath, double height, double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 799,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget footer() {
    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.black,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10),
          Center(
            child: Text(
              'Copyright © Todos os direitos reservados Unidos pela Fé',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  void whats() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Whats()));
  }

  void _redirecionador(Data religi) {
    if (religi.text == "Católico") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => catolicoR()));
    }
    if (religi.text == "Ubanda") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ubandarR()));
    }
    if (religi.text == "Evangélico") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => evangelicoR()));
    }
  }
}
