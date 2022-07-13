import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child : ListView(
          children: [
        Card(






                child: Text("About The App \n \n This application was developed through research done by: \n - S Moyo \n - R Mudziwapasi \n - M. Maphosa \n - A.B. Dube \n - B. Sibanda \n - F.N. Jomane \n The Research was done at Lupane State University \n The Research was supported by the Research Council of Zimbabwe",),








          ),
        ]
        ),
      ),
    );
  }

  


}