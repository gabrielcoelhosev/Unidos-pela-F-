import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:unidos_pela_fe/home_widget.dart';
import 'package:unidos_pela_fe/responsive/catolicor.dart';
import 'package:unidos_pela_fe/responsive/evangelicor.dart';
import 'package:unidos_pela_fe/responsive/ubandar.dart';
import 'package:url_launcher/url_launcher.dart';

class evangelicoM extends StatefulWidget {
  const evangelicoM({super.key});

  @override
  State<evangelicoM> createState() => _evangelicoMState();
}

class _evangelicoMState extends State<evangelicoM> {
  List<String> _photos = [
    'assets/imgs/evangelico1.jpg',
    'assets/imgs/evangelico2.jpg',
    'assets/imgs/evangelico3.jpg',
    'assets/imgs/evangelico4.jpg',
    'assets/imgs/evangelico5.jpg',
    'assets/imgs/evangelico6.jpg',
    'assets/imgs/evangelico7.jpg',
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: TextButton(
            onPressed: () {
              _voltar();
            },
            child: Text('Unidos pela Fé',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Dancing', fontSize: 30))),
        toolbarHeight: 70,
        actions: [
          PopupMenuButton<String>(
            color: Colors.black,
            icon: const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {
                          _voltar();
                        },
                        child: const Center(
                          child: Text(
                            'Home',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {
                          _catolico();
                        },
                        child: const Center(
                          child: Text(
                            'Católico',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {
                          _ubanda();
                        },
                        child: const Center(
                          child: Text(
                            'Ubanda',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            'Evangélico',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ))),
                PopupMenuItem(
                    child: Center(
                  child: TextButton.icon(
                      onPressed: () async {
                        final urlA = Uri.parse('http://wa.me/554984004220');
                        if (await canLaunchUrl(urlA)) {
                          await launchUrl(urlA);
                        } else {
                          throw 'Não foi possível abrir o link $urlA';
                        }
                      },
                      icon: const FaIcon(FontAwesomeIcons.whatsapp,
                          color: Colors.green),
                      label: const Text(
                        'Amanda',
                        style: TextStyle(color: Colors.white),
                      )),
                )),
                PopupMenuItem(
                    child: Center(
                  child: TextButton.icon(
                      onPressed: () async {
                        final urlD = Uri.parse('http://wa.me/554999791770');
                        if (await canLaunchUrl(urlD)) {
                          await launchUrl(urlD);
                        } else {
                          throw 'Não foi possível abrir o link $urlD';
                        }
                      },
                      icon: const FaIcon(FontAwesomeIcons.whatsapp,
                          color: Colors.green),
                      label: const Text(
                        'Daniel',
                        style: TextStyle(color: Colors.white),
                      )),
                )),
                PopupMenuItem(
                    child: Center(
                        child: TextButton.icon(
                  onPressed: () async {
                    final urlInsta =
                        Uri.parse('https://www.instagram.com/unidospelafepht/');
                    if (await canLaunchUrl(urlInsta)) {
                      await launchUrl(urlInsta);
                    } else {
                      throw 'Não foi possível abrir o link $urlInsta';
                    }
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Color(0xFFE1306C),
                  ),
                  label: const Text(
                    'Instagram',
                    style: TextStyle(color: Colors.white),
                  ),
                ))),
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Ubanda',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Dancing', fontSize: 30),
                ),
              ),
              const SizedBox(height: 30),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _photos.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => _openImageViewer(index),
                      child: Container(
                        height: 280,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(_photos[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  }),
              const SizedBox(height: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'Agende agora!',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Dancing',
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Center(
                      child: Text(
                        'Cada momento é um presente divino, e suas celebrações merecem ser eternizadas com respeito e profissionalismo.',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'RobotoCondensed'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Center(
                      child: Text(
                        'Entre em contato com nossa equipe e permita-nos transformar seus momentos sagrados em memórias eternas.',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'RobotoCondensed'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.whatsapp,
                              color: Colors.green, size: 13),
                          SizedBox(width: 10),
                          Text(
                            'Contato Amanda',
                            style: TextStyle(color: Colors.black, fontSize: 13),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(width: 40),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.whatsapp,
                            color: Colors.green, size: 13),
                        SizedBox(width: 10),
                        Text(
                          'Contato Daniel',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Copyright © Todos os direitos reservados Unidos pela Fé',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
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
}

class ImageViewer extends StatefulWidget {
  final List<String> imagePaths;
  final int initialIndex;

  const ImageViewer(
      {Key? key, required this.imagePaths, required this.initialIndex})
      : super(key: key);

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            itemCount: widget.imagePaths.length,
            pageController: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(widget.imagePaths[index]),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
          ),
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.imagePaths.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: _currentIndex == index ? 12 : 8,
                  height: _currentIndex == index ? 12 : 8,
                  decoration: BoxDecoration(
                    color: _currentIndex == index ? Colors.white : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
