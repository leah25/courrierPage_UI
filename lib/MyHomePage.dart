import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  nextPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Welcome to Courier Pro',
          style: TextStyle(
              color: Colors.brown, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.brown,
                size: 30.0,
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.brown.shade100,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Image.asset('images/c1.jpeg'),
                    SizedBox(
                      width: 10.0,
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            '\t Get your delivery.',
                            style: TextStyle(
                                color: Colors.purple.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'On time.',
                            style: TextStyle(
                                color: Colors.purple.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            '\tA better pickup',
                          ),
                          Text(
                            '&',
                          ),
                          Text(
                            'Delivery Service',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.brown.shade50,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.account_balance_wallet, size: 40),
                    color: Colors.brown,
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      ' Invite friends to Courier Pro to \n earn upto \$20 Courier Pro Cash',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown,
                    blurRadius: 3.0,
                    offset: Offset.zero,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown.shade100,
                    child: Center(
                        child: Icon(
                      Icons.person,
                      size: 40.0,
                      color: Colors.red[300],
                    )),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Send Packages',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' send packages to anywhere \n and anytime',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown,
                    blurRadius: 3.0,
                    offset: Offset.zero,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.brown.shade100,
                    child: Center(
                        child: Icon(
                      Icons.local_drink,
                      size: 40.0,
                      color: Colors.red[300],
                    )),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Food Deliver',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' order food and we will deliver\n it',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: currentIndex,
        onTap: nextPage,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(
                16)), //border radius doesn't work when the notch is enabled.
        elevation: 8,

        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.brown.shade100,
            icon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.brown,
            ),
            title: Text("Home"),
          ),
          BubbleBottomBarItem(
              backgroundColor: Colors.brown.shade100,
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              activeIcon: Icon(
                Icons.search,
                color: Colors.brown,
              ),
              title: Text("search")),
          BubbleBottomBarItem(
              backgroundColor: Colors.brown.shade100,
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
              activeIcon: Icon(
                Icons.lock,
                color: Colors.brown,
              ),
              title: Text("account")),
          BubbleBottomBarItem(
              backgroundColor: Colors.brown.shade100,
              icon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
              ),
              activeIcon: Icon(
                Icons.notifications,
                color: Colors.brown,
              ),
              title: Text("alerts")),
          BubbleBottomBarItem(
              backgroundColor: Colors.brown.shade100,
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.grey,
                ),
              ),
              activeIcon: Icon(
                Icons.account_balance_wallet,
                color: Colors.brown,
              ),
              title: Text("wallet")),
        ],
      ),
    );
  }
}
