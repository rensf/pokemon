import 'package:flutter/material.dart';
import 'package:pokemon/util/util.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Pokemon"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 8),
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: 180,
                  height: 85,
                  decoration: BoxDecoration(
                      color: HexColor("#ff0000"),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100))),
                ),
              ),
              Positioned(
                child: Container(
                  width: 180,
                  height: 0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4),
                  ),
                ),
                top: 85,
              ),
              Positioned(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 6),
                      shape: BoxShape.circle,
                      color: Colors.white),
                ),
                top: 65,
                left: 62,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
