import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileCardState();
}

class ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0x11000000),
            blurRadius: 5.0,
            spreadRadius: 2.0
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Material(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.network('https://instagram.faep9-1.fna.fbcdn.net/vp/a4469a5e6f4617e425210ad220326e12/5BE233CD/t51.2885-15/e35/36653594_243045059636517_8492191835106574336_n.jpg', 
              fit: BoxFit.cover),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.5)
                    ]
                  )
                ),
                padding: EdgeInsets.all(24.0),
                child: Row(

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}