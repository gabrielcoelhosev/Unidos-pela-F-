import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unidos_pela_fe/home_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class Whats extends StatefulWidget {
  const Whats({super.key});

  @override
  State<Whats> createState() => _WhatsState();
}

class _WhatsState extends State<Whats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: TextButton(
          onPressed: () {
            _voltar();
          },
          child: Text(
            'Unidos pela Fé',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: 'Dancing'),
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 1000,
            width: double.infinity,
            child: Image.asset(
              'assets/imgs/capa.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              height: 700,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20), // Bordas circulares
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Entre em Contato',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Dancing',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () async {
                      final urlA = Uri.parse('http://wa.me/554984004220');
                      if (await canLaunchUrl(urlA)) {
                        await launchUrl(urlA);
                      } else {
                        throw 'Não foi possível abrir o link $urlA';
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            'Amanda',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Dancing',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      final urlD = Uri.parse('http://wa.me/554999791770');
                      if (await canLaunchUrl(urlD)) {
                        await launchUrl(urlD);
                      } else {
                        throw 'Não foi possível abrir o link $urlD';
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            'Daniel',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Dancing',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      final urlInsta = Uri.parse(
                          'https://www.instagram.com/unidospelafepht/');
                      if (await canLaunchUrl(urlInsta)) {
                        await launchUrl(urlInsta);
                      } else {
                        throw 'Não foi possível abrir o link $urlInsta';
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.pink,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            'Instagram',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Dancing',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _voltar() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeWidget()),
    );
  }
}
