import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unidos_pela_fe/data.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

  //Arrumar a responsividade

class _MobileBodyState extends State<MobileBody> {
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
              ],
            ),
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Text(
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
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'RobotoCondensed'),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Especializados em eternizar momentos religiosos...',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'RobotoCondensed'),
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
                    const SizedBox(height: 50),
                    GridView.builder(
                      itemCount: capas.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
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
          height: 800,
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
              'Cada momento é um presente divino...',
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
              'Entre em contato com nossa equipe...',
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
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(7.0),
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
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(7.0),
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
}
