import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class RellDetals extends StatefulWidget {
  const RellDetals({super.key, required ReelsData});

  @override
  State<RellDetals> createState() => _RellDetalsState();
}

class _RellDetalsState extends State<RellDetals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text(
              'Hello - Follow',
              style: TextStyle(fontSize: 14, color: Colors.white54),
            ),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/236x/01/46/1e/01461ea823c46c1fe741baf57cab0506.jpg',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: ExpandableText(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
              style: TextStyle(fontSize: 12.5, color: Colors.white),
              expandText: 'show more',
              collapseText: 'show less',
              maxLines: 1,
              linkColor: Colors.blue,
            ),
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text(
              'Music list ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
            leading: Icon(
              Icons.music_note_rounded,
              size: 14,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 100),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
