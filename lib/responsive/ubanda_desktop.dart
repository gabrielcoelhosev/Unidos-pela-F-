import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:unidos_pela_fe/home_widget.dart';
import 'package:unidos_pela_fe/responsive/catolicor.dart';
import 'package:unidos_pela_fe/responsive/evangelicor.dart';
import 'package:unidos_pela_fe/responsive/ubandar.dart';
import 'package:unidos_pela_fe/responsive/whats.dart';
import 'package:url_launcher/url_launcher.dart';

class ubandaDesk extends StatefulWidget {
  const ubandaDesk({super.key});

  @override
  State<ubandaDesk> createState() => _ubandaDeskState();
}

class _ubandaDeskState extends State<ubandaDesk> {
  List<String> _photos = [
    'assets/imgs/ubanda1.jpg',
    'assets/imgs/ubanda2.jpg',
    'assets/imgs/ubanda3.jpg',
    'assets/imgs/ubanda4.jpg',
    'assets/imgs/ubanda5.jpg',
    'assets/imgs/ubanda6.jpg',
    'assets/imgs/ubanda7.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Column(
          children: [
            TextButton(
              onPressed: () {
                _voltar();
              },
              child: Text(
                'Unidos pela Fé',
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'Dancing'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
                  onPressed: () {
                    whats();
                  },
                ),
                TextButton(
                    onPressed: () {
                      _voltar();
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {
                      _catolico();
                    },
                    child: Text(
                      'Católico',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ubanda',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {
                      _evangelico();
                    },
                    child: Text(
                      'Evangélico',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.bold),
                    )),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                  onPressed: () async {
                    final urlInsta =
                        Uri.parse('https://www.instagram.com/unidospelafepht/');
                    if (await canLaunchUrl(urlInsta)) {
                      await launchUrl(urlInsta);
                    } else {
                      throw 'Não foi possível abrir o link $urlInsta';
                    }
                  },
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Ubanda',
                style: TextStyle(
                    fontFamily: 'Dancing', color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _photos.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    _openImageViewer(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(_photos[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 100),
            Center(
              child: Text(
                'Agende agora!',
                style: TextStyle(
                    color: Colors.white, fontSize: 40, fontFamily: 'Dancing'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Eternize seus momentos de fé com a gente!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed'),
              ),
            ),
            Center(
              child: Text(
                'Entre em contato com nossa equipe:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
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
                    padding: EdgeInsets.all(7.0),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.whatsapp,
                            color: Colors.green, size: 20),
                        SizedBox(width: 10),
                        Text('Contato Amanda',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
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
                    padding: EdgeInsets.all(7.0),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.whatsapp,
                            color: Colors.green, size: 20),
                        SizedBox(width: 10),
                        Text('Contato Daniel',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.black,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 80,
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

  void whats() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Whats()));
  }

  void _voltar() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeWidget()),
    );
  }

  void _catolico() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => catolicoR()),
    );
  }

  void _ubanda() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ubandarR()),
    );
  }

  void _evangelico() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => evangelicoR()),
    );
  }

  void _openImageViewer(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageViewer(
          imagePaths: _photos,
          initialIndex: index,
        ),
      ),
    );
  }
}

class ImageViewer extends StatelessWidget {
  final List<String> imagePaths;
  final int initialIndex;

  const ImageViewer(
      {Key? key, required this.imagePaths, required this.initialIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            itemCount: imagePaths.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(imagePaths[index]),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            scrollPhysics: BouncingScrollPhysics(),
            backgroundDecoration: BoxDecoration(color: Colors.black),
            pageController: PageController(initialPage: initialIndex),
          ),
          Positioned(
            top: 50,
            right: 16,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ubandarR()));
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left, color: Colors.white, size: 50),
                  onPressed: () {
                    if (initialIndex > 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageViewer(
                            imagePaths: imagePaths,
                            initialIndex: initialIndex - 1,
                          ),
                        ),
                      );
                    }
                  },
                ),
                IconButton(
                  icon:
                      Icon(Icons.chevron_right, color: Colors.white, size: 50),
                  onPressed: () {
                    if (initialIndex < imagePaths.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageViewer(
                            imagePaths: imagePaths,
                            initialIndex: initialIndex + 1,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
