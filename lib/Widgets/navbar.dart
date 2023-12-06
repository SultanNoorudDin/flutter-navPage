import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  bool _showSearchBar = false;

  void _toggleSearchBar() {
    setState(() {
      _showSearchBar = !_showSearchBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Stack(
          children: <Widget>[
            // Main content of the screen (below the navbar)
            Container(
              color: Colors.black, // Replace with your content background color
              child: const Center(
                child: Text(
                  '',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            // Positioned Navbar at the top of the screen
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 80, // Height of the navbar
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0), // Add horizontal padding
                color: const Color.fromARGB(255, 38, 38, 38),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  titleSpacing: 0,
                  iconTheme: const IconThemeData(color: Colors.white),
                  title: _showSearchBar
                      ? TextField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: const TextStyle(color: Colors.white70),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: _toggleSearchBar,
                              icon: const Icon(Icons.close),
                              color: Colors.white,
                            ),
                          ),
                        )
                      : Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                // Implement logo button action
                              },
                              icon: const Icon(Icons.person),
                            ),
                            const Spacer(),
                            const SizedBox(width: 16),
                            TextButton(
                              onPressed: () {
                                // Implement 'Company' action
                              },
                              child: const Text(
                                'Company',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Implement 'Services' action
                              },
                              child: const Text(
                                'Services',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Implement 'Industries' action
                              },
                              child: const Text(
                                'Industries',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Implement 'Insights' action
                              },
                              child: const Text(
                                'Insights',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Implement 'Careers' action
                              },
                              child: const Text(
                                'Careers',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Implement 'Contact' action
                              },
                              child: const Text(
                                'Contact',
                                style: TextStyle(
                                  // Adjust minimum size
                                  backgroundColor: Colors.white,
                                  color: Colors.black,
                                  
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: _toggleSearchBar,
                              icon: const Icon(Icons.search),
                            ),
                          ],
                        ),
                ),
              ),
            ),
            // Positioned heading below the navbar
            const Positioned(
              top: 80, // Adjust the position as needed
              left: 40,
              child: Column(
                children: [
                  Text(
                    'Reimagine.\nDeliver. Repeat.',
                    style: TextStyle(
                      fontSize: 60, // Adjust the size as needed
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10), // Add space between statements
                  Text(
                    'Global digital partner helping businesses transform,\ncreate new products and scale teams.',
                    style: TextStyle(
                      fontSize: 20, // Change to desired size
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
