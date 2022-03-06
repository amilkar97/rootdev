
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootdev/utils/color_transform.dart';
import 'package:rootdev/widgets/layout.dart';

class Metodologia extends StatefulWidget {
  const Metodologia({Key? key}) : super(key: key);

  @override
  _MetodologiaState createState() => _MetodologiaState();
}

class _MetodologiaState extends State<Metodologia> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  MyLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Forma de trabajo',style: GoogleFonts.andika(fontSize: 20.sp,fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                            FadeInUp(
                              duration: const Duration(milliseconds: 1000),
                              delay: const Duration(milliseconds: 500),
                              child: Text('Nuestra forma de trabajar se basa en algunos sencillos pasos.',
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Entrevista/Dialogo',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                              FadeInUp(
                                delay: const Duration(milliseconds: 700),
                                duration: const Duration(milliseconds: 1000),
                                child: Text('Para empezar el proyecto necesitamos conocer la idea con detalles y a profundidad, para asi poder ofrecerle una replica tecnologica de su idea, formaremos lluvia de ideas y muchas preguntas.',
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
                              Flexible(
                                child: Flash(duration: const Duration(milliseconds: 1000),child: Image.asset('assets/entrevista.png',width: 200,)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
              color: HexColor.fromHex('#FFC182'),
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
                            Flexible(child: Flash(duration: const Duration(milliseconds: 1000),child: Image.asset('assets/meet.jpg',width: 300,))),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Column(
                          children: [
                            FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Análisis de requerimientos',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                            FadeInUp(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 1000),
                              child: Text('En esta etapa se revisara el proyecto y los requisitos solicitados en la fase 1 para dar una cotización.',
                                style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  )
              ),
            ),
            Container(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
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
                            Text('Cotización',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Con base al analisis de requerimientos se proporciona una cotización',
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
                            Flexible(child: Image.asset('assets/abono.png',width: 100,)),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Container(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
              color: Colors.blue.withOpacity(0.2),
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
                            Flexible(child: Image.asset('assets/abono.png',width: 100,)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Column(
                          children: [
                            Text('Contrato',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Se establece el contrato para inicializar el proyecto.',
                              style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Container(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
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
                            Text('Sprints',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Una vez inicializado el proyecto se ira mostrando al cliente avances del mismo en pequeñas etapas o ciclos de tiempos',
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
                            Flexible(child: Image.asset('assets/sprints.png',width: 300,)),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Container(
              width: double.infinity,
              height: (width > 1100 ? 500 : (width > 768 ? 350 : 300)) * 1.5/1.w,
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
                            Flexible(child: Image.asset('assets/demo.png',width: 200,)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Column(
                          children: [
                            FadeInUp(duration: const Duration(milliseconds: 1000),child: Text('Demo',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),)),
                            FadeInUp(
                              delay: const Duration(milliseconds: 700),
                              duration: const Duration(milliseconds: 1000),
                              child: Text('Se le muestra al cliente una demo del proyecto con todos los requisitos solicitados',
                                style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
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
