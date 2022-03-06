

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootdev/widgets/layout.dart';

class Servicios extends StatefulWidget {
  const Servicios({Key? key}) : super(key: key);

  @override
  _ServiciosState createState() => _ServiciosState();
}

class _ServiciosState extends State<Servicios> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  MyLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: (width > 768 ? 300 : 100) * 3/1.w ,
              child: Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: (width > 768 ? width/2 : width),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Nuestros Servicios',style: GoogleFonts.andika(fontSize: 20.sp,fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                            FadeInUp(
                              duration: const Duration(milliseconds: 1000),
                              delay: const Duration(milliseconds: 500),
                              child: Text('Construimos tu necesidad en cualquier ambiente tecnologico (Aplicaciones móviles para Android y iOS, aplicaciones de escritorio y web).',
                                style: GoogleFonts.andika(fontSize: 25),textAlign: TextAlign.justify,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
              child: Container(
                color: Colors.blueGrey.withOpacity(0.2),
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      runAlignment: WrapAlignment.center,
                      children: [
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Column(
                            children: [
                              FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Aplicaciones móviles',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                              FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 1000),
                                child: Text('Desarrollamos tu idea móvil tanto para Android como iOS y la construimos en aplicaciones móviles seguras, ligeras ademas de un diseño encantador.',
                                  style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(child: Flash(duration: const Duration(milliseconds: 1000),child: Image.asset('assets/android-logo.png',width: 200,))),
                              Flexible(child: Flash(duration: const Duration(milliseconds: 1000),delay: const Duration(milliseconds: 200),child: Image.asset('assets/ios-logo.png',width: 200,))),
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
              child: Container(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      runAlignment: WrapAlignment.center,
                      children: [
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(child: Flash(duration: const Duration(milliseconds: 1000),child: Image.asset('assets/browsers.png',width: 300,))),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Column(
                            children: [
                              FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Aplicaciones Web',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                              FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 1000),
                                child: Text('Tu servicio tambien puede estar replicado en la web, para que tengas un mayor control de administracion o preferencias de usuario.',
                                  style: GoogleFonts.andika(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
              child: Container(
                color: Colors.blueGrey.withOpacity(0.2),
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      runAlignment: WrapAlignment.center,
                      children: [
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Column(
                            children: [
                              FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Aplicaciones de escritorio',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                              FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 1000),
                                child: Text('Te ofrecemos aplicaciones de escritorio tanto para entornos de sistemas operativos Windows, Mac y Linux.',
                                  style: GoogleFonts.andika(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(child: Flash(duration: const Duration(milliseconds: 1000),child: Image.asset('assets/windows-logo.png',width: 100,))),
                              Flexible(child: Flash(duration: const Duration(milliseconds: 1000),delay: const Duration(milliseconds: 100),child: Image.asset('assets/mac-os-logo.png',width: 200,))),
                              Flexible(child: Flash(duration: const Duration(milliseconds: 1000),child: Image.asset('assets/linux-logo.png',width: 100,))),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
              child: Container(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      runAlignment: WrapAlignment.center,
                      children: [
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Column(
                            children: [
                              Pulse(duration: const Duration(milliseconds: 500),child: Icon(Icons.design_services,color: Colors.orange,size: 20.sp,)),
                              FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Diseños',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Experiencia de usuario',style: GoogleFonts.andika(fontSize: 20),),),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Interfaz de usuario',style: GoogleFonts.andika(fontSize: 20)),),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Animaciones',style: GoogleFonts.andika(fontSize: 20)),),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Column(
                            children: [
                              Pulse(duration: const Duration(milliseconds: 500),child: Icon(Icons.memory,color: Colors.cyan,size: 20.sp,)),
                              FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Performance',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Notificaciones',style: GoogleFonts.andika(fontSize: 20)),),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Automatización',style: GoogleFonts.andika(fontSize: 20)),),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Escalabilidad',style: GoogleFonts.andika(fontSize: 20)),),
                            ],
                          ),
                        ),

                      ],
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            )
          ],
        ),
      ),
    );
  }
}
