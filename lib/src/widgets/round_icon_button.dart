import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final VoidCallback onPressed;

  RoundIconButton.large({this.icon, this.iconColor, this.onPressed})
    : size = 60.0;

  RoundIconButton.small({this.icon, this.iconColor, this.onPressed})
    : size = 50.0;
  
  RoundIconButton({this.icon, this.iconColor, this.onPressed, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        //Se pone para tener la sombra
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0x11000000),
            blurRadius: 10.0
          )
        ]
      ),
      child: RawMaterialButton(
        shape: CircleBorder(),
        child: Icon(icon, color: iconColor),
        onPressed: onPressed,
      ),
    );
  }
}