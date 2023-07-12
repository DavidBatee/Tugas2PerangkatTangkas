import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({super.key, required String username});
  @override
  _MyHomeWidgetState createState() => _MyHomeWidgetState();
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //mengubah menambahkan stateless / stateful dengan logika if else tipe data widget body
    Widget _body() {
      if (_selectedIndex == 0) {
        return MyHomeList();
      } else if (_selectedIndex == 1) {
        return Wishlist();
      } else if (_selectedIndex == 2) {
        return HistoryCheck();
      } else {
        return ProfileInfo();
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: _body(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 8, 45, 230),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.blue[300]!,
              hoverColor: Colors.blue[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: const Color.fromARGB(255, 38, 145, 234),
              color: Colors.white60,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Wish',
                ),
                GButton(
                  icon: LineIcons.history,
                  text: 'History',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

//home menu
class MyHomeList extends StatefulWidget {
  const MyHomeList({super.key});

  @override
  State<MyHomeList> createState() => _MyHomeListState();
}

class _MyHomeListState extends State<MyHomeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome back\nYusra'),
        leading: Container(
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/ellipse_1_profile.jpg'),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 17, horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Accesoris',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InputChip(
                        label: Text(
                          'All',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Color.fromARGB(255, 25, 25, 210),
                        side: BorderSide(color: Colors.black),
                        onSelected: (bool value) {},
                      ),
                      InputChip(
                        label: Text('PC'),
                        side: BorderSide(color: Colors.black),
                        onSelected: (bool value) {},
                      ),
                      InputChip(
                        label: Text('Laptop'),
                        side: BorderSide(color: Colors.black),
                        onSelected: (bool value) {},
                      ),
                      InputChip(
                        label: Text('Handphone'),
                        side: BorderSide(color: Colors.black),
                        onSelected: (bool value) {},
                      ),
                      InputChip(
                        label: Text('Mobil'),
                        side: BorderSide(color: Colors.black),
                        onSelected: (bool value) {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      color: Colors.white,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 35,
                                            child: Image.asset(
                                              'assets/holder_handphone.jpg',
                                              width: 80,
                                            ),
                                          ),
                                          const Positioned(
                                            top: 77,
                                            right: 79,
                                            child: Text(
                                              'Holder \nHandphone',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 114,
                                            right: 95,
                                            child: Text(
                                              'Rp.65.000',
                                              style: TextStyle(
                                                color: Colors.orange[800],
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 133.5,
                                              right: 140,
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.yellow[700],
                                                size: 14,
                                              )),
                                          const Positioned(
                                            top: 132,
                                            right: 70,
                                            child: Text(
                                              '4.5 | 5k sold',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                      width: 160,
                                      height: 160,
                                      color: Colors.white,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 10,
                                            left: 40,
                                            child: Image.asset(
                                              'assets/aluminium_laptop_stand.jpg',
                                              width: 65,
                                            ),
                                          ),
                                          const Positioned(
                                            top: 77,
                                            right: 70,
                                            child: Text(
                                              'Aluminium \nLaptop Stand',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 114,
                                            right: 88,
                                            child: Text(
                                              'Rp.124.800',
                                              style: TextStyle(
                                                color: Colors.orange[800],
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 133.5,
                                              right: 140,
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.yellow[700],
                                                size: 14,
                                              )),
                                          const Positioned(
                                            top: 132,
                                            right: 70,
                                            child: Text(
                                              '4.7 | 3k sold',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                      width: 160,
                                      height: 170,
                                      color: Colors.white,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 30,
                                            child: Image.asset(
                                              'assets/bitfenix_spectre_pro_fan.jpg',
                                              width: 90,
                                            ),
                                          ),
                                          const Positioned(
                                            top: 87,
                                            right: 49,
                                            child: Text(
                                              'BitFenix Spectre \nPro Fan',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 127,
                                            right: 88,
                                            child: Text(
                                              'Rp.287.607',
                                              style: TextStyle(
                                                color: Colors.orange[800],
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 146,
                                              right: 140,
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.yellow[700],
                                                size: 14,
                                              )),
                                          const Positioned(
                                            top: 145,
                                            right: 63,
                                            child: Text(
                                              '4.7 | 1.5k sold',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                      width: 160,
                                      height: 170,
                                      color: Colors.white,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 30,
                                            child: Image.asset(
                                              'assets/boneka_emotikon_goyang.jpg',
                                              width: 90,
                                            ),
                                          ),
                                          const Positioned(
                                            top: 87,
                                            right: 40,
                                            child: Text(
                                              'Boneka Emotikon \nGoyang',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 127,
                                            right: 95,
                                            child: Text(
                                              'Rp.10.000',
                                              style: TextStyle(
                                                color: Colors.orange[800],
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 146,
                                              right: 140,
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.yellow[700],
                                                size: 14,
                                              )),
                                          const Positioned(
                                            top: 145,
                                            right: 63,
                                            child: Text(
                                              '4.7 | 1.5k sold',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

//wishlist
class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 17, horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search Wishlist',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          width: 20,
                          height: 150,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 30,
                                left: 10,
                                child: Image.asset(
                                  'assets/tas_selempang_eiger.jpg',
                                  width: 120,
                                ),
                              ),
                              Positioned(
                                  top: 20,
                                  right: 30,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )),
                              Positioned(
                                top: 17,
                                right: 80,
                                child: Text(
                                  'Tas Selempang\nEiger',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 63,
                                right: 130,
                                child: Text(
                                  'Rp.65.000',
                                  style: TextStyle(
                                    color: Colors.orange[800],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 83.5,
                                  right: 177,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                    size: 17,
                                  )),
                              Positioned(
                                top: 82,
                                right: 95,
                                child: Text(
                                  '4.6 | 8k sold',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                right: 20,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(180, 35),
                                    ),
                                    onPressed: () {},
                                    child: Text('Notify Me')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          width: 20,
                          height: 150,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 50,
                                left: 10,
                                child: Image.asset(
                                  'assets/keyboard_mechanical.jpg',
                                  width: 120,
                                ),
                              ),
                              Positioned(
                                  top: 20,
                                  right: 30,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )),
                              Positioned(
                                top: 17,
                                right: 107,
                                child: Text(
                                  'Keyboard\nMechanical',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 63,
                                right: 124,
                                child: Text(
                                  'Rp.425.000',
                                  style: TextStyle(
                                    color: Colors.orange[800],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 83.5,
                                  right: 177,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow[700],
                                    size: 17,
                                  )),
                              Positioned(
                                top: 82,
                                right: 95,
                                child: Text(
                                  '4.8 | 3k sold',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                right: 20,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(180, 35),
                                    ),
                                    onPressed: () {},
                                    child: Text('Notify Me')),
                              ),
                            ],
                          ),
                        ),
                      ),
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

//History
class HistoryCheck extends StatefulWidget {
  const HistoryCheck({super.key});

  @override
  State<HistoryCheck> createState() => _HistoryCheckState();
}

class _HistoryCheckState extends State<HistoryCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selesai'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          width: 20,
                          height: 150,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 40,
                                left: 10,
                                child: Image.asset(
                                  'assets/mouse_gaming.jpg',
                                  width: 80,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Harsa Store',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Positioned(
                                top: 40,
                                right: 50,
                                child: Text(
                                  'Mouse gaming',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 65,
                                right: 150,
                                child: Text(
                                  'Black',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 65,
                                right: 50,
                                child: Text(
                                  'x1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                right: 65,
                                child: Text(
                                  'Total Pesanan : ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                right: 100,
                                child: Text(
                                  'Rp.153.200',
                                  style: TextStyle(
                                    color: Colors.orange[800],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 112,
                                right: 265,
                                child: Text(
                                  '1 Produk',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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

//Profile info
class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/ellipse_1_profile.jpg'),
                    Text(
                      "Yusra",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Divider(),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(250, 50),
                        ),
                        label: Text(
                          'Voucher',
                        ),
                        icon: Icon(Icons.discount_outlined),
                        onPressed: () {}),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 50),
                      ),
                      label: Text('Wishlist'),
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Wishlist()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 50),
                      ),
                      label: Text('Address'),
                      icon: Icon(Icons.location_on),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 50),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Log Out'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
