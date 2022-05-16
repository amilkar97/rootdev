
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootdev/utils/Color_Transform.dart';

class MyAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    ValueNotifier<double> elevationValue = ValueNotifier(0);

    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: MouseRegion(cursor: SystemMouseCursors.click,child: GestureDetector(onTap: () => Get.toNamed('/'),child: Image.asset('assets/logo-landscape.png')))),
      leadingWidth: 250,
      toolbarHeight: 100,
      actions: [
        if(width > 768 )...[
          RawMaterialButton(
            onPressed: () => Get.toNamed('/'),
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: HexColor.fromHex('#003366').withOpacity(0.2),padding: EdgeInsets.symmetric(vertical: 10),
            highlightColor: Colors.white,
            splashColor: Colors.white,
            elevation: 0,
            focusElevation: 0,
            disabledElevation: 0,
            hoverElevation: 5,
            highlightElevation: 0,
            child: Center(
              child: Text('Inicio',style: GoogleFonts.andikaNewBasic(fontSize: 20),),
            ),
          ),
          const SizedBox(width: 20,),
          RawMaterialButton(
            onPressed: () => Get.toNamed('/services'),
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: HexColor.fromHex('#003366').withOpacity(0.2),
            highlightColor: Colors.white,
            splashColor: Colors.white,
            elevation: 0,
            focusElevation: 0,
            disabledElevation: 0,
            hoverElevation: 2,
            highlightElevation: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Text('Nuestros Servicios',style: GoogleFonts.andikaNewBasic(fontSize: 20),),
              ),
            ),
          ),
          const SizedBox(width: 20,),
          RawMaterialButton(
            onPressed: () => Get.toNamed('/methodology'),
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: HexColor.fromHex('#003366').withOpacity(0.2),
            highlightColor: Colors.white,
            splashColor: Colors.white,
            elevation: 0,
            focusElevation: 0,
            disabledElevation: 0,
            hoverElevation: 2,
            highlightElevation: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Text('Metodología',style: GoogleFonts.andikaNewBasic(fontSize: 20),),
              ),
            ),
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (event) {
                    elevationValue.value = 10;
                  },
                  onExit: (event) => elevationValue.value = 0,
                  child: ValueListenableBuilder(
                    valueListenable: elevationValue,
                    builder: (context, value, child) => GestureDetector(
                      onTap: () => Get.toNamed('/contact'),
                      child: Card(
                        color: HexColor.fromHex('#003366'),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        elevation: elevationValue.value,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Contáctanos',style: GoogleFonts.andikaNewBasic(fontSize: 15,color: Colors.white),),
                        ),
                      ),
                    ),

                  ),
                )
            ),
          ),
        ]

      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
