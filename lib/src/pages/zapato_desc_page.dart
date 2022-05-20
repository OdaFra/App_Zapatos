import 'package:app_zapatos/src/widgets/zapato_size.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ZapatoDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const ZapatoSizePage(
          fullScreen: true,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                ZapatosDescripcionPage(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
