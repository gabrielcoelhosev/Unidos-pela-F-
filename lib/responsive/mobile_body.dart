import 'package:flutter/material.dart';
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
                Center(
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
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
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
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          'Amanda',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Dancing'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 800,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/imgs/amanda.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          'Daniel',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Dancing'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 800,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
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
                  SizedBox(height: 100),
                  Center(
                    child: Text(
                      'Veja nosso Portifólio',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Dancing',
                          fontSize: 40),
                    ),
                  ),
                  SizedBox(height: 100),
                  GridView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                                      style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
