import 'package:flutter/material.dart';
import 'package:amazon/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class Prduct
{
  String name;
  String category;
  String imgUrl;
  double price;
  String id;
  String description;
  bool favourite = false;
  bool cart = false;

  Prduct({
    required this.id,
    required this.name,
    required this.category,
    required this.imgUrl,
    required this.price,
    required this.description,
  });

}

List<Prduct> fav = [];
List<Prduct> cart = [];

List<Prduct> products = [
  Prduct(
      id: '1',
      name: "JBL TUNE 110",
      category: "Audio",
      imgUrl: "https://in.jbl.com/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw4a6e76c7/C150SI-black1-hero-1605x1605px.png",
      price: 63.3,
      description: "Introducing JBL TUNE110 in-ear headphones. They’re lightweight, comfortable and compact. Under the durable earpiece housing, a pair of 9mm drivers punch out some serious bass, reproducing the JBL Pure Bass sound you’ve experienced in concert halls, arenas and recording studios around the world. In addition, the single-button remote on a tangle-free flat cable lets you control music playback, as well as answer calls on the fly with a built-in microphone. Making the JBL TUNE110 your everyday companion for work, at home and on the road."
  ),
  Prduct(
      id: '2',
      name: "Samsung Galaxy A12",
      category: "SmartPhones",
      imgUrl: "https://purepng.com/public/uploads/large/samsung-galaxy-s10-prism-front-6bx.png",
      price: 500.0,
      description: '''Colour:Blue  |  Size:64 GB
General Information: Brand: Nokia Model number: 3.4 Operation system: Android 10 Weight: 180 grams Dimensions: 160.97 x 75.99 x 8.7 mm'''
  ),
  Prduct(
      id: '3',
      name: "MacBook pro",
      category: "Tech",
      imgUrl:  "https://www.mypinnacleview.com/wp-content/uploads/2017/07/macbook-pro-png.png",
      price: 1199.99,
      description: '''Mosiso High Quality Soft Touch Plastic Hard Case Series
Model: A1278
Macbook Air 11 Inch (A1465 / A1370)
Macbook Air 13 Inch (A1466 / A1369)'''
  ),
  Prduct(
      id: '4',
      name: "Blue yeti",
      category: "Audio",
      imgUrl: "https://static.bhphoto.com/images/images2500x2500/1574693242_1297189.jpg",
      price: 123.3,
      description: '''Tri-capsule array - 3 condenser capsules can record almost any situation
Multiple pattern selection - cardioid, bidirectional, omnidirectional & stereo
Gain control, mute button, zero-latency headphone output
Perfect for vocals, musical instruments, podcasting, voiceovers, interviews, field recordings, conference calls
Plug 'n play - Mac OS X (10.4.11 or higher) and PC (Windows 8.1, 8, 7, Vista, XP)
Color: Black Special Edition'''
  ),
  Prduct(
      id: '5',
      name: "Jacket",
      category: "Fashion",
      imgUrl: "https://images-na.ssl-images-amazon.com/images/I/61fTX5TjAEL._UX569_.jpg",
      price: 50.0,
      description:"The subtle high/low design and beautiful accoutrements will catch people’s eye whether you are on a date at Old Trafford or taking a painting class in Albert Square. Available in all our signature colours - this statement piece will be a part of your wardrobe for years to come…"

  ),
  Prduct(
      id: '6',
      name: "IMac Pro",
      category: "Tech",
      imgUrl:  "https://images-eu.ssl-images-amazon.com/images/G/31/img17/PC/sprocket/Tile-2-1._SS200_.jpg",
      price: 1200.0,
      description:'''Designed to fit MacBook Pro 13 Inch with Retina Display A1502 & A1425
Snap on design, easy on easy off
Fully access to all buttons and features
Plug your charger, cable or headset without removing the case
Super light-weight with smooth rubberized exterior texture to protect your MacBook from scrapes and scratches
Material: Polycarbonate'''
  ),
  Prduct(
      id: '7',
      name: "Books",
      category: "Books",
      imgUrl: "https://images-eu.ssl-images-amazon.com/images/I/51JKnkxCl7L._AC_SX184_.jpg",
      price: 5.7,
      description:'''Language: English
Format: Paperback | 400 pages
About the stories :A land in tumult, poverty and chaos. Most people suffer quietly. A few rebel. Some fight for a better world. Some for themselves. Some don't give a damn. Raavan. Fathered by one of the most illustrious sages of the time. Blessed by the Gods with talents beyond all. Cursed by fate to be tested to the extremes.'''
  ),
  Prduct(
      id: '8',
      name: "Sunglasses",
      category: "Fashion",
      imgUrl:  "https://images-na.ssl-images-amazon.com/images/I/710tUwxHq7L._UL1500_.jpg",
      price: 66.0,
      description:"Spider-Man Edith Glasses, Vintage Pilot Square Metal Frame for Male Female Sunglasses Classic Downey Iron Man Tony Stark Shadow"
  ),
];

class AmazonApp extends StatefulWidget {
  @override
  _AmazonAppState createState() => _AmazonAppState();
}
class _AmazonAppState extends State<AmazonApp>{


  @override
  Widget build (BuildContext context){

    return Scaffold(
      backgroundColor :  Color(0xFF10161D),
      appBar : AppBar(
        backgroundColor :  Color(0xFF222e3D),
        title:Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Text(
              "Amazon",
              style: TextStyle(
                color :Colors.white,
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                heightFactor: 0,
                widthFactor: 1.2,
                child: Image(image: AssetImage('assets/images/image.png'),height: 30.0,width: 150,)),
          ],
        ),
        centerTitle: true,
        actions: [
          MaterialButton (
            onPressed : ()
            {
            },
            child: Icon(Icons.shopping_cart, color : Colors.white,),
          )
        ],
      ),
      body : HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF10161d),
        selectedItemColor: Color(0xFFFF9900),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 20.0,

        items: [
          BottomNavigationBarItem(
            icon : Icon (Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon : Icon (Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon : Icon (Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}