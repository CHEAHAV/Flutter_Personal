import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(title: Text("DESKTOP APP"), centerTitle: true,
      backgroundColor: Colors.deepPurple[500],),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            //first column
            Expanded(
              child: Column(
                children: [
                  //youtube video
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: AspectRatio(
                      aspectRatio: 21 / 9,
                      child: Container(height: 250, color: Colors.deepPurple[400]),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(padding: EdgeInsets.all(8),
                        child: Container(
                          color: Colors.deepPurple[300],
                          height: 120,
                        ),);
                      },
                    ),
                  ),
                ],
              ),
            ),
            //second column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                color: Colors.deepPurple[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
