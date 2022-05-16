import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 75,horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Nuestros Servicios',style: GoogleFonts.andika(fontSize: 40,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                              Text('Construimos tu necesidad en cualquier ambiente tecnologico (Aplicaciones móviles para Android y iOS, aplicaciones de escritorio y web).',
                                style: GoogleFonts.andika(fontSize: 25),textAlign: TextAlign.justify,
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey.withOpacity(0.2),
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
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
                            Text('Aplicaciones móviles',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Desarrollamos tu idea móvil tanto para Android como iOS y la construimos en aplicaciones móviles seguras, ligeras ademas de un diseño encantador.',
                              style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(child: Image.asset('assets/android-logo.png',width: 200,)),
                            Flexible(child: Image.asset('assets/ios-logo.png',width: 200,)),
                          ],
                        ),
                      )
                    ],
                  )
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
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
                            Flexible(child: Image.asset('assets/browsers.png',width: 300,)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Column(
                          children: [
                            Text('Aplicaciones Web',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Tu servicio tambien puede estar replicado en la web, para que tengas un mayor control de administracion o preferencias de usuario.',
                              style: GoogleFonts.andika(fontSize: 20),
                            ),
                          ],
                        ),
                      ),

                    ],
                  )
              ),
            ),
            Container(
              color: Colors.blueGrey.withOpacity(0.2),
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
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
                            Text('Aplicaciones de escritorio',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Te ofrecemos aplicaciones de escritorio tanto para entornos de sistemas operativos Windows, Mac y Linux.',
                              style: GoogleFonts.andika(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/windows-logo.png',width: 100,),
                            Image.asset('assets/mac-os-logo.png',width: 200,),
                            Flexible(child: Image.asset('assets/linux-logo.png',width: 100,)),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      runAlignment: WrapAlignment.spaceEvenly,
                      runSpacing: 100,
                      spacing: 100,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Column(
                            children: [
                              const Icon(Icons.design_services,color: Colors.orange,size: 40),
                              Text('Diseños',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Experiencia de usuario',style: GoogleFonts.andika(fontSize: 20),),),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Interfaz de usuario',style: GoogleFonts.andika(fontSize: 20)),),
                              ListTile(leading: const Icon(Icons.check_circle,color: Colors.green,),title: Text('Animaciones',style: GoogleFonts.andika(fontSize: 20)),),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Column(
                            children: [
                              const Icon(Icons.memory,color: Colors.cyan,size: 40,),
                              Text('Performance',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
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

          ],
        ),
      ),
    );
  }
}
