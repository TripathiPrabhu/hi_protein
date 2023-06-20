import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('DashBoard', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.black)),
  //   Text('Billing', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  //   Text('Inventory', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
  //   Text('My Orders', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.red, // Change Custom Drawer Icon Color
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.notifications_active_rounded,
              color: Colors.redAccent,
              size: 30,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white70),
              accountName: Text(
                "Prabhu Tripathi",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              accountEmail: Text(
                "prabhutripathi@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('My Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Insights'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const AboutListTile(
              // <-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              child: Text('Reports'),
              applicationIcon: Icon(
                Icons.local_play,
              ),
              applicationName: 'My Cool App',
              applicationVersion: '1.0.25',
              applicationLegalese: '© 2019 Company',
              aboutBoxChildren: [
                ///Content goes here...
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(Icons.dashboard),
                label: 'DashBoard',
                backgroundColor: Colors.red[400]),
            const BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner_outlined),
              label: 'Billing',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.inventory_2_outlined),
                label: 'My Inventory',
                backgroundColor: Colors.red[400]),
            const BottomNavigationBarItem(
              icon: Icon(Icons.library_books_rounded),
              label: 'My Orders',
              backgroundColor: Colors.redAccent,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigo,
          iconSize: 35,
          onTap: _onItemTapped,
          elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Prabhu',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.7),
              ),
            ),


    Expanded(
      child: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            width: MediaQuery
                .of(context)
                .size
                .width * 0.4,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.shutterstock.com/image-vector/inventory-control-illustration-concept-websites-260nw-2023590275.jpg',
                      ),),),
                ),
              ),
            ),
          ),


        );
      }
      ),
    ),

          ],
        ),
      ),
    );
  }
}
