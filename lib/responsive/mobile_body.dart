import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unidos_pela_fe/data.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

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
                        fontSize: 65,
                        fontFamily: 'Dancing'),
                    softWrap: true,
                  ),
                ),
              ],
            ),
            Container(
              height: 2500,
              width: double.infinity,
              color: Colors.black,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Text(
                              'Quem Somos?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Dancing'),
                            ),
                            SizedBox(height: 60),
                            Text(
                              'Nós somos a Amanda e o Daniel, e juntos formamos uma dupla de fotógrafos chamada Unidos pela Fé.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'RobotoCondensed'),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Especializados em eternizar momentos religiosos, fazemos cobertura de pequenos e grandes eventos como: aniversários, batizados, batuques, elebós, casamentos, apresentações religiosas em geral, etc.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'RobotoCondensed'),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Queremos registrar o seu momento religioso com muito amor e carinho, criando um vínculo para a vida toda para você e sua família.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'RobotoCondensed'),
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      const Center(
                        child: Text(
                          'Amanda',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Dancing'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 800,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/imgs/amanda.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      const Center(
                        child: Text(
                          'Daniel',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Dancing'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 800,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/imgs/daniel.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade900,
              height: 1800,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  const Center(
                    child: Text(
                      'Veja nosso Portifólio',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Dancing',
                          fontSize: 40),
                    ),
                  ),
                  const SizedBox(height: 100),
                  GridView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Expanded(
                            flex: 10,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    height: 400,
                                    width: 400,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(capas[index].image),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Center(
                                  child: Text(capas[index].text,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Dancing',
                                          fontSize: 25)),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            Container(
              height: 1500,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    width: 70,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Center(
                        child: Text(
                          'Entre em Contato',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: 'Dancing'),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                                maxWidth: 300), // Limita a largura do texto
                            child: const Center(
                              child: Text(
                                'Cada momento é um presente divino, e suas celebrações merecem ser eternizadas com respeito e profissionalismo.',
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'RobotoCondensed'),
                                textAlign:
                                    TextAlign.center, // Centraliza o texto
                              ),
                            ),
                          ),
                          const SizedBox(height: 20), // Espaço entre os textos
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                                maxWidth: 300), // Limita a largura do texto
                            child: const Center(
                              child: Text(
                                'Entre em contato com nossa equipe e permita-nos transformar seus momentos sagrados em memórias eternas.',
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'RobotoCondensed'),
                                textAlign:
                                    TextAlign.center, // Centraliza o texto
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.whatsapp,
                                        color: Colors.green, size: 20),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Contato Amanda',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                  ],
                                ),
                              )),
                          const SizedBox(
                            width: 40,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.whatsapp,
                                        color: Colors.green, size: 20),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Contato Daniel',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      height: 700,
                      width: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image:
                                  AssetImage('assets/imgs/criarmemorias.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.black,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Copyright © Todos os direitos reservados Unidos pela Fé',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
