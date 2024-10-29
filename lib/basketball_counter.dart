

import 'package:flutter/material.dart';

class BasketballCounter extends StatefulWidget {
  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
int TeamApoints = 0;

int TeamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
            const Center(
                child:
                Text(
                  'Points Counter',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),

      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Column(
                 children: [
                   const Text(
                       'Team A',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,
                       fontSize: 32,
                     ),
                   ),
                    Text(
                     '$TeamApoints',
                     style: TextStyle(
                       fontSize: 150,
                     ),
                   ),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                     ),
                       onPressed: (){
                        setState(() {
                           TeamApoints++;
                         });
                       },
                       child: const Text(
                           'Add 1 point',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 24,
                         ),

                       ),
                   ),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                     ),
                     onPressed: (){
                       setState(() {
                       TeamApoints +=2;
                     }
                     );},
                     child: const Text(
                       'Add 2 point',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 24,
                     ),
                   ),
                   ),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                     ),
                     onPressed: (){
                       setState(() {
                         TeamApoints += 3;
                       });
                     },
                     child: const Text(
                         'Add 3 point',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 24,
                       ),
                     ),
                   ),
                 ],
               ),
               const SizedBox(
                 height: 450,
                 child:  VerticalDivider(
                   color: Colors.purple,
                   width: 50,
                   thickness: 1,
                 ),
               ),
               Column(
                 children: [
                   const Text(
                     'Team B',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,
                       fontSize: 32,
                     ),
                   ),
                    Text(
                     '$TeamBpoints',
                     style: TextStyle(
                       fontSize: 150,
                     ),
                   ),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                     ),
                     onPressed: (){
                       setState(() {
                         TeamBpoints ++;
                       });
                     },
                     child: const Text(
                       'Add 1 point',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 24,
                       ),

                     ),
                   ),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                     ),
                     onPressed: (){
                       setState(() {
                         TeamBpoints += 2;
                       });
                     },
                     child: const Text(
                       'Add 2 point',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 24,
                       ),
                     ),
                   ),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.purple,
                     ),
                     onPressed: (){
                       setState(() {
                         TeamBpoints += 3;
                       });
                     },
                     child: const Text(
                       'Add 3 point',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 24,
                       ),
                     ),
                   ),
                 ],
               ),

             ],
           ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: (){
                setState(() {
                  TeamApoints =0;
                  TeamBpoints =0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
