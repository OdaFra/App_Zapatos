import 'package:flutter/material.dart';

class ZapatoSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53), //Colors.indigo,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [_ZapatosConSombras()],
        ),
      ),
    );
  }
}

class _ZapatosConSombras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: const [
          Image(
            image: AssetImage('assets/imgs/azul.png'),
          ),
        ],
      ),
    );
  }
}
