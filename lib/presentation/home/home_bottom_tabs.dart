import 'package:dijipol/presentation/home/account/account_screen.dart';
import 'package:dijipol/presentation/home/account/account_screen2.dart';
import 'package:dijipol/presentation/home/offers/offers_screen.dart';
import 'package:dijipol/presentation/home/policies/policy_screen.dart';
import 'package:dijipol/presentation/home/policies/policy_screen2.dart';
import 'package:dijipol/presentation/home/support/support_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './start/start_screen.dart';

class HomeBottomTabs extends StatefulWidget {
  static const String routeName = '/home-bottom-tabs';
  @override
  _HomeBottomTabsState createState() => _HomeBottomTabsState();
}

class _HomeBottomTabsState extends State<HomeBottomTabs> {
  final Map<String, Widget> routes = <String, Widget>{
    StartScreen.routeName: StartScreen((_) {}),
    // PolicyScreen.routeName: PolicyScreen(),
    PolicyScreen2.routeName: PolicyScreen2(),
    OffersScreen.routeName: OffersScreen(),
    // AccountScreen.routeName: AccountScreen(),
    AccountScreen2.routeName: AccountScreen2(),
    SupportScreen.routeName: SupportScreen(),
  };

  static const List<String> routeLabels = <String>[
    'Dijipol',
    'My Policies',
    'Teklif Al',
    'My Account',
    'Support',
  ];

  List<Widget Function(bool isActive, int size, Color activeColor)> routeIcons =
      <Widget Function(bool isActive, int size, Color activeColor)>[
    (bool isActive, int size, Color activeColor) => Icon(
          Icons.home_outlined,
          color: isActive ? Colors.white : activeColor,
        ),
    (bool isActive, int size, Color activeColor) => Icon(
          CupertinoIcons.umbrella,
          color: isActive ? Colors.white : activeColor,
        ),
    (bool isActive, int size, Color activeColor) => Container(
          padding: isActive ? EdgeInsets.zero : const EdgeInsets.all(1),
          color: Colors.white,
          child: Image.asset(
            'lib/assets/images/logo${isActive ? '-white' : ''}.png',
            height: 22,
            width: 22,
          ),
        ),
    (bool isActive, int size, Color activeColor) => Icon(
          Icons.person_outline,
          color: isActive ? Colors.white : activeColor,
        ),
    (bool isActive, int size, Color activeColor) => Icon(
          Icons.phone_in_talk_outlined,
          color: isActive ? Colors.white : activeColor,
        ),
  ];

  String? selectedRoute;

  @override
  void initState() {
    routes[StartScreen.routeName] = StartScreen(_onItemTapped);
    selectedRoute = routes.keys.elementAt(0);
    super.initState();
  }

  void _onItemTapped(String route) {
    // if (route == OffersScreen.routeName) {
    //   return;
    // }
    setState(() {
      selectedRoute = route;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: routes[selectedRoute],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Row(
              children: List<Widget>.generate(
                routes.length,
                (int index) => Expanded(
                  child: TabBarIcon(
                    icon: routeIcons[index],
                    isActive: routes.keys.elementAt(index) == selectedRoute,
                    onTap: () => _onItemTapped(routes.keys.elementAt(index)),
                    badgeVisible: false,
                    width: width,
                    text: routeLabels[index],
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

class TabBarIcon extends StatelessWidget {
  const TabBarIcon({
    required this.icon,
    required this.isActive,
    required this.onTap,
    required this.badgeVisible,
    required this.width,
    required this.text,
  });

  final Widget Function(bool isActive, int size, Color activeColor) icon;
  final bool isActive;
  final void Function() onTap;
  final bool badgeVisible;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isActive ? Theme.of(context).primaryColor : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        highlightColor: Colors.transparent,
        child: Container(
          color: Colors.transparent,
          height: 64,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              icon(isActive, 25, Theme.of(context).primaryColor),
              // Icon(
              //   icon,
              //   size: 25,
              //   color: isActive ? Colors.white : Theme.of(context).primaryColor,
              // ),
              Text(
                text,
                style: TextStyle(
                  color:
                      isActive ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
