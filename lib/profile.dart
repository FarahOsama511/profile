import 'package:flutter/material.dart';
import 'package:profile/List.dart';
import 'package:profile/buildwallet.dart';
import 'package:profile/details.dart';

class Profile extends StatefulWidget {
  @override
  _profilestate createState() => _profilestate();
}

class _profilestate extends State<Profile> {
  late Cards card;
  List<Cards> items = [
    Cards(
      title: "Your Favourite",
      icon: Icons.favorite,
      description: 'This is your favorite items list.',
    ),
    Cards(
      title: "Payment",
      icon: Icons.payment,
      description: 'Manage your payment methods and history.',
    ),
    Cards(
      title: "Tell your Friends",
      icon: Icons.send,
      description: 'Share this app with your friends.',
    ),
    Cards(
      title: "Promotions",
      icon: Icons.local_offer,
      description: 'Check out the latest promotions.',
    ),
    Cards(
      title: "Settings",
      icon: Icons.settings,
      description: 'Adjust your account settings.',
    ),
    Cards(
      title: "Log Out",
      icon: Icons.logout,
      description: 'Sign out from your account.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: .5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                  radius: 40,
                ),
                title: Text(
                  "Farah Osama",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Since 2024",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Row(
                  children: [
                    buildWalletSpentCard('Wallet', 'PKR 125'),
                    buildWalletSpentCard('Spent', 'PKR 2K+'),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: items[index],
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      card: items[index],
                                    )));
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home "),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "notification"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "person"),
          ]),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            setState(() {
              items.add(Cards(
                title: "New item",
                icon: Icons.info,
                description: "Description for the new item",
              ));
            });
            print(items);
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
