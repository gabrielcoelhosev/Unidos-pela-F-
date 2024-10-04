import 'package:flutter/material.dart';
import 'package:unidos_pela_fe/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
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
                  height: 600,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/imgs/capa.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.5, -0.4),
                  ),
                ),
                Center(
                  child: Text(
                    'Unidos pela Fé',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                        fontFamily: 'Dancing'),
                    softWrap: true,
                  ),
                ),
              ],
            ),
            Container(
              height: 800,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 650,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/imgs/amanda.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Ajustar largura do texto e movê-lo mais para baixo
                  Container(
                    width: 400, // Largura menor para o texto
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.start, // Alinhar no início
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 100),
                        Text(
                          'Quem Somos?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Dancing'),
                        ), // Espaço para mover o texto para baixo
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
                        SizedBox(height: 22),
                        Text(
                          'Especializados em eternizar momentos religiosos, fazemos cobertura de pequenos e grandes eventos como: aniversários, batizados, batuques, elebós, casamentos, apresentações religiosas em geral, etc.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
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
                              fontSize: 22,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'RobotoCondensed'),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 650,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/imgs/daniel.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800, // Altura fixa para o GridView
              color: Colors.grey.shade900, // Apenas um exemplo de cor de fundo
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      'Veja nosso Portifólio',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Dancing',
                          fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Número de colunas
                        crossAxisSpacing:
                            10, // Espaçamento horizontal entre os itens
                        mainAxisSpacing:
                            10, // Espaçamento vertical entre os itens
                      ),
                      itemCount: 3, // Número total de itens no grid
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 400,
                                  width: 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(capas[index].image),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Text(
                                      capas[index].text,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontFamily: 'Dancing'),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 800,
              width: double.infinity,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Center(
                        child: Text(
                          'Entre em Contato',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: 'Dancing'),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth: 500), // Limita a largura do texto
                            child: Center(
                              child: Text(
                                'Cada momento é um presente divino, e suas celebrações merecem ser eternizadas com respeito e profissionalismo.',
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'RobotoCondensed'),
                                textAlign:
                                    TextAlign.center, // Centraliza o texto
                              ),
                            ),
                          ),
                          SizedBox(height: 20), // Espaço entre os textos
                          ConstrainedBox(
                            constraints: BoxConstraints(
                                maxWidth: 500), // Limita a largura do texto
                            child: Center(
                              child: Text(
                                'Entre em contato com nossa equipe e permita-nos transformar seus momentos sagrados em memórias eternas.',
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'RobotoCondensed'),
                                textAlign:
                                    TextAlign.center, // Centraliza o texto
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.whatsapp,
                                        color: Colors.green, size: 25),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Contato Amanda',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            width: 40,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.whatsapp,
                                        color: Colors.green, size: 25),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Contato Daniel',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
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
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/imgs/criarmemorias.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
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
