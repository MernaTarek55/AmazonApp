import 'package:flutter/material.dart';

import 'main.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget Items(Prduct product){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ()
        {

        },
        child: Container(
          height: 400,
          width: 190.0,
          decoration: BoxDecoration(
            color : Colors.white,
            borderRadius: BorderRadius.circular(8.0),

          ),
          child : Column(
            children: [
              Image(
                image:NetworkImage(product.imgUrl),
                width : 170.0,
                height: 160.0,
                alignment: Alignment.center,
              ),
              Text(
                product.name ,
                style: TextStyle(fontSize: 19.0),
              ),
              Text(
                product.category ,
                style: TextStyle(fontSize: 17.0 , color : Colors.grey),
              ),
              Text(
                "${product.price}£" ,
                style: TextStyle(fontSize: 19.0 , color : Color(0xFFFF9900,)),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children:
                [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: ()
                    {


                    },
                    icon: Icon(product.cart ? Icons.remove_shopping_cart : Icons.add_shopping_cart),
                  ),
                  Spacer(),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: ()
                    {


                    },
                    icon: Icon(product.favourite ? Icons.favorite : Icons.favorite_border_outlined),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column (
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 38 , vertical : 20.0),
              child: TextField(
                controller: TextEditingController(),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "New Items",
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 295.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Items(products[0]),
                  Items(products[1]),
                  Items(products[2]),
                  Items(products[3]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Recommended for you",
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 295.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Items(products[4]),
                  Items(products[5]),
                  Items(products[6]),
                  Items(products[7]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
