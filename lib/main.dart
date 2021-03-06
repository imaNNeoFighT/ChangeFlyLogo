import 'package:change_fly_logo/sample2/sample2page.dart';
import 'package:change_fly_logo/sample3/sample3page.dart';
import 'package:flutter/material.dart';
import 'changeflylogo.dart';
import 'package:change_fly_logo/sample1/sample1page.dart';

void main() => runApp(new MaterialApp(
  home: HomePage(),
));

class HomePage extends StatelessWidget {

  /*
  * All of the magic is inside the ChangeFlyLogo()
  * and  to read the animation related codes, go and read
  * changeflylogo.dart
  * */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ChangeFlyLogo(),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text("Click on logo to animate", style: TextStyle(color: Colors.purple, fontSize: 24.0, fontWeight: FontWeight.bold),),
              ),
            ),
            /*Here we have three buttons corresponds to each sample (three sample is exists)*/
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context) { return new Sample1Page();}));
                    }, child: Text('Sample 1', style: TextStyle(color: Colors.purple),),),
                    RaisedButton(onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context) { return new Sample2Page();}));
                    }, child: Text('Sample 2', style: TextStyle(color: Colors.purple),),),
                    RaisedButton(onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context) { return new Sample3Page();}));
                    }, child: Text('Sample 3', style: TextStyle(color: Colors.purple),),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}