
import 'package:flutter/material.dart';

class UiComponen {
  Card cardKas() {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 4,
      color: const Color.fromRGBO(64, 75, 96, .9),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text("Jumping",
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text("Activations 9", style: TextStyle(color: Colors.white70)),
                Text("03-08-19", style: TextStyle(color: Colors.white70)),
              ],
            ),
            const Spacer(),
            const CircleAvatar(backgroundColor: Colors.white),
          ],
        ),
      ),
    );
  }

  SizedBox CategoryCard(){
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Card(
            margin: const EdgeInsets.all(12),
            elevation: 4,
            color: const Color.fromRGBO(64, 75, 96, .9),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Text("Jumping",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Activations 9",
                          style: TextStyle(color: Colors.white70)),
                      Text("03-08-19", style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(backgroundColor: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}