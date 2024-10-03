import 'package:flutter/material.dart';

class mobileBody extends StatefulWidget {
  const mobileBody({super.key});

  @override
  State<mobileBody> createState() => _mobileBodyState();
}

class _mobileBodyState extends State<mobileBody> {
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
                    style: TextStyle(color: Colors.white, fontSize: 50),
                    softWrap: true,
                  ),
                )
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
