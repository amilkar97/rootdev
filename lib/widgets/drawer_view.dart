

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootdev/utils/color_transform.dart';

class MyDrawer extends StatelessWidget {

  MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          RawMaterialButton(
            onPressed: () => Get.toNamed('/'),
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            highlightColor: Colors.white,
            splashColor: Colors.white,
            elevation: 0,
            focusElevation: 0,
            disabledElevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Text('Inicio',style: GoogleFonts.andikaNewBasic(fontSize: 20),),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          RawMaterialButton(
            onPressed: () => Get.toNamed('/services'),
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            highlightColor: Colors.white,
            splashColor: Colors.white,
            elevation: 0,
            focusElevation: 0,
            disabledElevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Text('Nuestros Servicios',style: GoogleFonts.andikaNewBasic(fontSize: 20),),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          RawMaterialButton(
            onPressed: () => Get.toNamed('/methodology'),
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            highlightColor: Colors.white,
            splashColor: Colors.white,
            elevation: 0,
            focusElevation: 0,
            disabledElevation: 0,
            hoverElevation: 0,
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
                child: RawMaterialButton(
                  onPressed: () => Get.toNamed('/contact'),
                  fillColor: HexColor.fromHex('#003366'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Contáctanos',style: GoogleFonts.andikaNewBasic(fontSize: 15,color: Colors.white),),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}

