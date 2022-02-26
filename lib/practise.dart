import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "My App",
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Assets/wolf.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Sangavy",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pacifico(
                        textStyle: TextStyle(fontSize: 50.0)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Title",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 15,
                        fontFamily: 'Shizuru'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 130),
                          child: Icon(Icons.facebook),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.mail),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
