import 'package:flutter/material.dart';

class ZapatoSizePage extends StatelessWidget {
  final bool fullScreen;

  const ZapatoSizePage({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fullScreen ? 5 : 25,
        vertical: fullScreen ? 25 : 0,
      ),
      child: Container(
        width: double.infinity,
        height: fullScreen ? 400 : 430,
        decoration: BoxDecoration(
            color: const Color(0xffFFCF53), //Colors.indigo,
            borderRadius: (!fullScreen)
                ? BorderRadius.circular(50)
                : const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
        child: Column(
          children: [
            _ZapatosConSombras(),
            if (!fullScreen) _ZapatosTallas(),
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
          color: numero == 9 ? Color(0xffF1a23a) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (numero == 9)
              const BoxShadow(
                color: Color(0xffF1a23a),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
          ]),
      child: Text(
        numero.toString().replaceAll('.0', ''),
        style: TextStyle(
          color: numero == 9 ? Colors.white : Color(0xffF1a23a),
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
