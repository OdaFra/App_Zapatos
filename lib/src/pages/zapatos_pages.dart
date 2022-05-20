import 'package:flutter/material.dart';

import 'package:app_zapatos/src/widgets/custom_widgets.dart';

class ZapatosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //ZapatoSizePage(),
          //CustomAppBaPage(texto: 'For you'),
          Column(
        children: [
          CustomAppBaPage(texto: 'For you'),
          const SizedBox(
            height: 25,
          ),
          ZapatoSizePage(),
        ],
      ),
    );
  }
}
