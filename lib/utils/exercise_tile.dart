import 'package:flutter/material.dart';

class Exercise_tile extends StatelessWidget{
  final icon;
  final color;
  final String exerciseName;
  final int  NumberOfExercise;
  Exercise_tile(
      {
        Key? key,
        required this.icon,
        required this.color,
        required this.exerciseName,
        required this.NumberOfExercise
      }):super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(bottom: 12.0),
     child: Container(
       padding: EdgeInsets.all(16),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(16),
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children:  [
           Row(
               mainAxisAlignment:
               MainAxisAlignment.spaceBetween,
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(12),
                   child: Container(
                     padding: EdgeInsets.all(16),
                     color: color,
                     child: Icon(
                       icon,
                       color: Colors.white,
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 12,
                 ),
                 Column(
                   crossAxisAlignment:
                   CrossAxisAlignment.start,
                   children: [
                     // title
                     Text(
                       exerciseName,
                       style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold),
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     // subtitle
                     Text(
                       '$NumberOfExercise Exercises',
                       style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.bold,
                           color: Colors.grey),
                     )
                   ],
                 ),
               ]),
           Icon(Icons.more_horiz),
         ],
       ),
     ),
   );
  }

}