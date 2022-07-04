import 'dart:ui';

import 'package:disenos/screens/basicDesign.dart';
import 'package:disenos/screens/scrollDesign.dart';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              titleCard: 'Basic Design',
              icon: Icon(Icons.bakery_dining_sharp, size: 35, color: Colors.white,),
              colorIcon: Colors.deepOrange,
              onPressed: (){
                
              final route = MaterialPageRoute(
                builder: ( context ) {
                  return BasicDesignScreen();
                });

              Navigator.push(context, route );
              },
            ),
            _SingleCard(
              titleCard: 'Scroll Design',
              icon: Icon(Icons.screen_lock_landscape, size: 35, color: Colors.white),
              colorIcon: Colors.orangeAccent,
              onPressed: (){
                
              final route = MaterialPageRoute(
                builder: ( context ) {
                  return ScrollScreen();
                });

              Navigator.push(context, route );
              },
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              titleCard: 'General',
              icon: Icon(Icons.grid_4x4, size: 35, color: Colors.white,),
              colorIcon: Colors.blue,
              onPressed: (){},
            ),
            _SingleCard(
              titleCard: 'Transport',
              icon: Icon(Icons.car_rental, size: 35, color: Colors.white),
              colorIcon: Colors.pinkAccent,
              onPressed: (){},
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              titleCard: 'Shopping',
              icon: Icon(Icons.shop, size: 35, color: Colors.white),
              colorIcon: Colors.purple,
              onPressed: (){},
            ),
            _SingleCard(
              titleCard: 'Bill',
              icon: Icon(Icons.cloud, size: 35, color: Colors.white),
              colorIcon: Colors.purpleAccent,
              onPressed: (){},
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              titleCard: 'Entertainment',
              icon: Icon(Icons.movie, size: 35, color: Colors.white),
              colorIcon: Colors.red,
              onPressed: (){},
            ),
            _SingleCard(
              titleCard: 'Grocery',
              icon: Icon(Icons.food_bank_outlined, size: 35, color: Colors.white),
              colorIcon: Colors.green,
              onPressed: (){},
            ),
          ]
        ),
         TableRow(
          children: [
            _SingleCard(
              titleCard: 'Music',
              icon: Icon(Icons.music_note, size: 35, color: Colors.white),
              colorIcon: Color.fromARGB(255, 59, 99, 117),
              onPressed: (){},
            ),
            _SingleCard(
              titleCard: 'Files',
              icon: Icon(Icons.folder_open_rounded, size: 35, color: Colors.white),
              colorIcon: Color.fromARGB(255, 3, 160, 8),
              onPressed: (){},
            ),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final String titleCard;
  final Icon icon;
  final Color colorIcon;
  final VoidCallback onPressed;

  _SingleCard({ 
    required this.titleCard,
    required this.icon,
    required this.colorIcon,
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: this.colorIcon,
              child: this.icon,
              radius: 30,
            ),
            SizedBox( height: 10),
            Text( this.titleCard , style: TextStyle(color: this.colorIcon, fontSize: 18),)
          ],
        ),
        onTap: this.onPressed,
      );
  }
}


class _SingleCardBackground extends StatelessWidget {

  final Widget child;
  final VoidCallback onTap;

  _SingleCardBackground({
    required this.child,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur( 
              sigmaX: 5, 
              sigmaY: 5
            ),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)
              ),
              child: this.child
            ),
          ),
        ),
      ),
    );
    
  }
}