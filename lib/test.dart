import 'package:flutter/material.dart';

/*
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          color: Colors.orange,
          height:  MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,


          child: LayoutBuilder(
            builder: (context, constrains){
              return Stack(
                children: [
                  Positioned(
                    top: 400,
                    child: Container(
                      color: Colors.red,
                      width: constrains.maxWidth,
                      height: constrains.maxHeight/2,
                    ),
                  ),
                ],
              );
            },
          ),
        ),




    );
  }
}
*/
import 'package:flutter/material.dart';

class ResponsiveStackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Stack Example'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width *2,
        height: MediaQuery.of(context).size.height *2,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Widget 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    'Widget 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    'Widget 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
