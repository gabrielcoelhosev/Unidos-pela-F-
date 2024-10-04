import 'package:flutter/material.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
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
              height: 4000, // Altura fixa para o GridView
              color: Colors.grey, // Apenas um exemplo de cor de fundo
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
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: 400,
                                width: 400,
                                color: Colors.red,
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    'Religião',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Dancing'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
