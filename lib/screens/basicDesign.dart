import 'package:disenos/screens/scrollDesign.dart';
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Image(
              image: AssetImage('assets/landscape.jpg'),
            ),
            // Titulo
            Title(),
            // Button Section
            ButtonSection(),
            // Descripcion
            Summary()
          ]
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward),
          onPressed: () {

            final route = MaterialPageRoute(
              builder: ( context ) {
                return ScrollScreen();
              });

            Navigator.push(context, route );
          }),
    );
  }
}




class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45 ))
            ]
          ),
          Expanded(child: Container()),

          Icon( Icons.star, color: Colors.red ),
          Text('41')
        ]
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            titleIcon: 'Call',
            iconName: Icons.call,
          ),
          CustomButton(
            titleIcon: 'Route',
            iconName: Icons.route,
          ),
          CustomButton(
            titleIcon: 'Share',
            iconName: Icons.share,
          ),
          // Descripcion

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  String titleIcon;
  IconData iconName;

  CustomButton({
    Key? key,
    required this.titleIcon,
    required this.iconName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.iconName, color: Colors.blue,),
        Text( this.titleIcon , style: TextStyle( color: Colors.blue),),
      ],
    );
  }
}

class Summary extends StatelessWidget {
  const Summary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text('Eiusmod reprehenderit sit nostrud maMollit adipisicing cupidatat commodo est exercitation consequat fugiat cillum id minim minim. Ullamco fugiat non esse voluptate elit sit sit quis. Dolor exercitation duis ea in non aute pariatur labore officia. Sit esse ea in consectetur. Eu nostrud consequat consectetur fugiat magna laboris nulla tempor laboris. Et voluptate aliquip in cupidatat non velit.gna labore sunt culpa non eiusmod consequat ipsum enim. Commodo magna ullamco nostrud ullamco. Non ullamco eiusmod aute adipisicing. Sunt quis consequat minim dolor sint duis nulla officia aliquip ad id consectetur ea adipisicing.'));
  }
}

