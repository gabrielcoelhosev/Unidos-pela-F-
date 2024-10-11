import 'package:flutter/material.dart';
import 'package:unidos_pela_fe/home_widget.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Entre em Contato',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Dancing'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Amanda',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              'Daniel',
              style: TextStyle(color: Colors.white),
            ),
          )
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
