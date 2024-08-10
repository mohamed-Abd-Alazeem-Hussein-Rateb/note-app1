import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.title, required this.description, required this.date, required this.color});
   final String title;
  final String description;
  final String date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                    children: [
                      Text(
                        title,
                        style:const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const  Icon(
                          Icons.delete,
                          size: 30,
                        ),
                    ),
                    ],
                  ),
                 const SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      date,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}