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
          children: [
            _ZapatosConSombras(),
            _ZapatosTallas(),
          ],
        ),
      ),
    );
  }
}

class _ZapatosTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _TallaZapatosCaja(7),
          _TallaZapatosCaja(7.5),
          _TallaZapatosCaja(8),
          _TallaZapatosCaja(8.5),
          _TallaZapatosCaja(9),
          _TallaZapatosCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatosCaja extends StatelessWidget {
  final double numero;

  const _TallaZapatosCaja(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(),
          ]),
      child: Text(
        '${numero.toString().replaceAll('.0', '')}',
        style: const TextStyle(
          color: Color(0xffF1a23a),
          fontSize: 16,
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
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _ZapatosSombra(),
          ),
          const Image(
            image: AssetImage('assets/imgs/azul.png'),
          ),
        ],
      ),
    );
  }
}

class _ZapatosSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(color: Color(0xFFEAA14E), blurRadius: 40),
          ],
        ),
      ),
    );
  }
}
