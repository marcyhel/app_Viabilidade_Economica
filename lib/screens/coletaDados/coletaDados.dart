import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plan3/mobx/mob_dados/mob_dados.dart';
import 'package:plan3/screens/componentes/fade.dart';

class ColetaDados extends StatefulWidget {
  ColetaDados({Key? key}) : super(key: key);

  @override
  State<ColetaDados> createState() => _ColetaDadosState();
}

class _ColetaDadosState extends State<ColetaDados> {
  final Mob_dados mob = GetIt.I<Mob_dados>();
  bool _visible = false;
  bool _visible1 = false;
  bool _visible2 = false;

  int daley = 900;
  int velo = 500;
  void fadess() async {
    await Future.delayed(Duration(milliseconds: 300));
    setState(() {
      _visible = !_visible;
    });
    await Future.delayed(Duration(milliseconds: 300));
    setState(() {
      _visible1 = !_visible1;
    });
    await Future.delayed(Duration(milliseconds: 300));
    setState(() {
      _visible2 = !_visible2;
    });
  }

  @override
  void initState() {
    fadess();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -100,
              left: 0,
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/one.png'), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -150,
              left: 0,
              child: AnimatedOpacity(
                opacity: _visible1 ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('image/one.png'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: -200,
              left: 0,
              child: AnimatedOpacity(
                opacity: _visible2 ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('image/one.png'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            ListView(
              children: [
                Fade(
                  delay: daley + 100,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 200,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 300,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 400,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 500,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 600,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 700,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 800,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 900,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 1000,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 1100,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 1200,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 1300,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
                Fade(
                  delay: daley + 1400,
                  mili: velo,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Text("dd"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
