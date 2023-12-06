import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Set the background color of the screen to black
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.black, // Set the background color of the text area to black
            padding: EdgeInsets.only(left: 20.0), // Adjust the padding as needed
            child: Text(
              'Reimagine.\nDeliver. Repeat.',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
