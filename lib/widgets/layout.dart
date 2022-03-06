

import 'package:flutter/material.dart';
import 'package:rootdev/widgets/appbar.dart';
import 'package:rootdev/widgets/drawer_view.dart';
import 'package:rootdev/widgets/footer.dart';

class MyLayout extends StatelessWidget {
  final child;
  const MyLayout({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return  Scaffold(
      endDrawer: width < 768 ?  MyDrawer() : null,
      appBar: const MyAppBar(),
      bottomSheet: const Footer(),
      body: child,
    );
  }
}
