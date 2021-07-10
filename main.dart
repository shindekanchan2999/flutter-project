import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "session 3",
          style: TextStyle(fontSize: 25.0),
        ),
        leading: Icon(Icons.three_k_plus),
        actions: [
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          // Container(
          //  height: 400,
          //width: 350,
          //color: Colors.green,
          //child: Text("welcomw userA")),
          ListTile(
            title: Text("log in"),
            trailing: Icon(Icons.login),
          ),
          Divider(
            thickness: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("log out"),
            trailing: Icon(Icons.logout),
          ),
          Divider(
            thickness: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("help"),
            trailing: Icon(Icons.help),
          ),
          Divider(
            thickness: 2,
            color: Colors.blue,
          ),
          ListTile(
            title: Text("support"),
            trailing: Icon(Icons.support),
          ),
        ],
      )),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              //child: Image.network(
              // "https://previews.123rf.com/images/fokaspokas/fokaspokas1808/fokaspokas180801043/106908845-one-of-main-domains-globe-and-net-paper-design-cutted-symbol-with-shadow.jpg",
            ),
            // Image.network("https://www.bing.com/images/search?view=detailV2&ccid=8bh6rITy&id=E9B6D9F712C6A67AD916CE3857002CA82A3A5098&thid=OIP.8bh6rITyk2dY3WJ2_EU7lgAAAA&mediaurl=https%3A%2F%2Fhiroboga.com%2Fwp-content%2Fuploads%2F2012%2F09%2Ffacebook-hiro-boga.png&exph=187&expw=246&q=facebook+logo&ck=C05DE69C18D99E5FD202B2EB93AFA51D&selectedindex=2&form=IRPRST&ajaxhist=0&ajaxserp=0&pivotparams=insightsToken%3Dccid_fap%252FAkjk*cp_03CE49CAA28B25C39241B888B6C26BCA*mid_8FE2BC03B84C57AD7115BA1973ED7E936A5CEDE3*simid_608017698207579620*thid_OIP.fap!_AkjkpqeKi1h!_g4s5PQHaEK&vt=0&sim=11&iss=VSI&ajaxhist=0&ajaxserp=0",),
            //),
            Row(
              children: [
                Icon(
                  Icons.cloud,
                  size: 150.0,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.home,
                  size: 150.0,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.search,
                  size: 150.0,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.lock,
                  size: 150.0,
                  color: Colors.blue,
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "submit",
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              "welcome to mob app dev session",
              style: TextStyle(color: Colors.yellow, fontSize: 30.0),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
