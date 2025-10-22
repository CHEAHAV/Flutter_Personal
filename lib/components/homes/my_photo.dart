import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

class MyPhoto extends StatelessWidget {
  const MyPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropShadow(
            offset: Offset.zero,
            blurRadius: 15.0,
            spread: 0.1,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: 450,
                  height: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Image(
                    image: AssetImage('assets/images/reachana.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
