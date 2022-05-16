

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootdev/widgets/layout.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Inicio extends StatefulWidget {


  @override
  InicioState createState() => InicioState();
}

class InicioState extends State<Inicio>{
  late VideoPlayerController _controller;
  late VideoPlayerController _controller2;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/tablet-video.mp4')
       ..initialize().then((_) {
         setState(() {});
       });

     _controller2 = VideoPlayerController.asset('assets/store.mp4')
       ..initialize().then((_) {
         setState(() {});
       });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller..play()..setLooping(true)..setVolume(0);
      _controller2..play()..setLooping(true)..setVolume(0);
    });
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  MyLayout(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 75,horizontal: 20),
                child: Center(
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    alignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        width: width > 768 ? width /3 : width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Soluciones Multiplataforma',style: GoogleFonts.andika(fontSize: 45,fontWeight: FontWeight.bold), textAlign: width > 768 ? TextAlign.start : TextAlign.center,),
                              Text('Construimos tu necesidad en cualquier ambiente tecnológico (Aplicaciones móviles para Android y iOS, aplicaciones de escritorio y web).',
                                style: GoogleFonts.andika(fontSize: 25,),textAlign: TextAlign.justify,
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width > 768 ? width/2 : double.infinity*0.95,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(color: Colors.black.withOpacity(0.98),
                            height: (width > 768 ? 600 : 350) * 1.5/1.w,
                            width: 900.w,
                            child: Wrap(
                              direction: Axis.horizontal,
                              alignment: WrapAlignment.spaceEvenly,
                              runAlignment: WrapAlignment.spaceEvenly,
                              children: [
                                SizedBox(width: 200,height: 300,child: VideoPlayer(_controller2)),
                                const Image(image: AssetImage('assets/computer2.png',),width: 200,height: 300,),
                                SizedBox(width: 200,height: 300,child: VideoPlayer(_controller)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
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
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    runAlignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Column(
                          children: [
                            const Icon(Icons.fact_check_outlined,color: Colors.purple,size: 40,),
                            Text('Nuestra metodología',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Nuestra metodología se basa en desarrollar sistemas acordes a las necesidades de nuestros clientes, creando una experiencia de usuario unica ligada a las mejores prácticas de desarrollo.',
                              style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 50,height: 50,),
                      SizedBox(
                        width: (width > 768 ? width/3 : width),
                        child: Column(
                          children: [
                            const Icon(Icons.memory,color: Colors.cyan,size: 40,),
                            Text('Tecnología',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                            Text('Las tecnologias usadas en nuestros proyectos garatizan la escalabilidad y seguridad de su sistema.',
                              style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
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
              child: Container(
                color: Colors.blueGrey.withOpacity(0.2),
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                    child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      runAlignment: WrapAlignment.center,
                      children: [
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Column(
                            children: [
                              const Icon(Icons.design_services,color: Colors.orange,size: 40,),
                              Text('Diseño',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                              Text('Nuestros diseñadores crean e implementan diseños en nuestros sistemas formando una experiencia de usuario libre y única.',
                                style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 50,height: 50,),
                        SizedBox(
                          width: (width > 768 ? width/3 : width),
                          child: Column(
                            children: [
                              const Icon(Icons.support_agent,color: Colors.green,size: 40,),
                              Text('Creciendo junto a ti',style: GoogleFonts.andika(fontSize: 30,fontWeight: FontWeight.bold),),
                              Text('Como la prioridad de nuestro trabajo es la escabilidad, puedes hacer crecer tu sistema en cualquier momento.',
                                style: GoogleFonts.andika(fontSize: 20),textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                child: Image.asset('assets/logo-landscape.png',height: 200,),
              ),
            )
          ],
        ),
      ),
    );
  }

}
