import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bubble Bottom Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bubble Bottom Bar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ), //border radius doesn't work when the notch is enabled.
        elevation: 8,
        tilesPadding: EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        items: const <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            showBadge: true,
            badge: Text("5"),
            badgeColor: Colors.deepPurpleAccent,
            backgroundColor: Colors.red,
            icon: Icon(
              Icons.dashboard,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.dashboard,
              color: Colors.red,
            ),
            title: Text("Home"),
          ),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.deck,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.batch_prediction_outlined,
                color: Colors.deepPurple,
              ),
              title: Text("Logs")),

          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.menu,
                color: Colors.green,
              ),
              title: Text("Menu"))
        ],
      ),
      body: Mydesine(),
    );
  }
}

class Mydesine extends StatelessWidget {
  const Mydesine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: const [Colors.black, Colors.tealAccent,Colors.teal, Colors.teal]),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 340,
                    left: 30,
                    child: Text("About!",
                        style: TextStyle(
                            fontSize: 25, fontFamily: 'Quicksand-SemiBold',
                        ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Column(
                    children: [
                   ListTile(
                        leading: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(image: AssetImage('image/0x0.jpeg'),)),
                     title: Text("Alia ▲M▲Z●N"),
                     subtitle: Text("2 YEAR Intership\n⭐⭐⭐⭐⭐️"),
                   ),
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: AssetImage('image/ZyNFUfo0_400x400.jpeg'),)),
                        title: Text("Alia TCS"),
                        subtitle: Text("5 Month Intership\n⭐⭐⭐⭐️"),
                      ),

                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: AssetImage('image/10639145.jpeg'),)),
                        title: Text("Apple Alia"),
                        subtitle: Text("1 YEAR Job\n⭐⭐⭐⭐⭐️"),
                      ),
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: AssetImage('image/microsoft.jpeg'),)),
                        title: Text("Microsoft Alia"),
                        subtitle: Text("7 Month Job\n⭐⭐⭐️"),
                      ),
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: AssetImage('image/download (1).jpeg'),)),
                        title: Text("ProgrammerMamit"),
                        subtitle: Text("Full Time\n⭐⭐⭐⭐⭐⭐️"),
                      ),

                    ],
                  ),
                ),
                Positioned(
                    top: 300,
                    left: 200,
                    height: 160,
                    child: Image(
                      image: AssetImage('image/casual-life-3d-likes.png '),
                    )),
               Padding(
                 padding: const EdgeInsets.only(top: 450,left: 190),
                 child: Container(
                    height: 110,
                    width: 210,
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.follow_the_signs,size: 30,),
                        title: Text("Follow ✅"),
                        subtitle: Text("4M Follower"),
                      ),
                      elevation: 10,
                      shadowColor: Colors.yellowAccent,
                      margin: EdgeInsets.all(20),
                    ),
                  ),
               ),
                Padding(
                  padding: const EdgeInsets.only(top: 550,left: 190),
                  child: Container(
                    height: 110,
                    width: 210,
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.favorite,size: 30,),
                        title: Text("UnFollow"),
                        subtitle: Text("Alia"),
                      ),
                      elevation: 10,
                      shadowColor: Colors.yellowAccent,
                      margin: EdgeInsets.all(20),
                    ),
                  ),
                ),

              ],
            )),
        Container(
          height: 280,
          decoration: BoxDecoration(
// color: Colors.red
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: const [Colors.red, Colors.yellowAccent],
            ),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(90)),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 10, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.menu),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  child: Text(
                    "Welcome Alia 👤",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Quicksand-SemiBold',
                        fontWeight: FontWeight.w900),
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 110),
                child: Positioned(
                    child: ListTile(
                  leading: Icon(Icons.details),
                  title: Text("Software Developer"),
                  subtitle: Text("C,C++,Java,Dart"),
                  trailing: Icon(Icons.info),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
            top: 180,
            left: 10,
            height: 160,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage('image/sss.jpeg'),
                )))
      ],
    );
  }
}
