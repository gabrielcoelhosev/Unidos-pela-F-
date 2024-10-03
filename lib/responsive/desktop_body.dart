import 'package:flutter/material.dart';

class desktopBody extends StatefulWidget {
  const desktopBody({super.key});

  @override
  State<desktopBody> createState() => _desktopBodyState();
}

class _desktopBodyState extends State<desktopBody> {
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
                  height: 700,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/imgs/capa.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Text(
                    'Unidos pela Fé',
                    style: TextStyle(color: Colors.white, fontSize: 100),
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
