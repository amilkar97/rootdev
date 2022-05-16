import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rootdev/widgets/layout.dart';
class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return MyLayout(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  SelectableText('Contacto',style: GoogleFonts.andika(fontSize: 40,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 50,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          ListTile(leading: Icon(Icons.phone),title: Text('Teléfono'),subtitle: SelectableText('+507 62520706'),),
                          ListTile(leading: Icon(Icons.email),title: Text('Email'),subtitle: SelectableText(
                            'amilkar.saavedra97@gmail.com',
                            toolbarOptions: ToolbarOptions(copy: true, selectAll: true,),showCursor: true,enableInteractiveSelection: true,), )
                        ],
                      ),
                    ),
                  ),

                ],
            ),
          ),
        ),
      ),
    );
  }
}
