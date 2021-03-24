import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/home/cart/cart_screen.dart';
import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/home/products/products_screen.dart';
import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/home/profile/profile_screen.dart';
import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: IndexedStack(
            index: currentIndex,
            children: <Widget>[
              ProductsScreen(),
              Text('CurrentIndex 2: $currentIndex'),
              CartScreen(
                onShopping: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
              ),
              Text('CurrentIndex 4: $currentIndex'),
              ProfileScreen(),
            ],
          )),
          _DeliveryNavigationBar(
              index: currentIndex,
              onIndexSelected: (index) {
                setState(() {
                  currentIndex = index;
                });
              })
        ],
      ),
    );
  }
}

class _DeliveryNavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelected;

  const _DeliveryNavigationBar({this.index, this.onIndexSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).bottomAppBarColor, width: 2),
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: (index == 0)
                          ? DeliveryColors.green
                          : DeliveryColors.lightGrey,
                    ),
                    onPressed: () => onIndexSelected(0),
                  ),
                ),
                Material(
                  child: IconButton(
                    icon: Icon(Icons.store,
                        color: (index == 1)
                            ? DeliveryColors.green
                            : DeliveryColors.lightGrey),
                    onPressed: () => onIndexSelected(1),
                  ),
                ),
                Material(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: DeliveryColors.purple,
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_basket,
                        color: (index == 2)
                            ? DeliveryColors.green
                            : DeliveryColors.white,
                      ),
                      onPressed: () => onIndexSelected(2),
                    ),
                  ),
                ),
                Material(
                  child: IconButton(
                    icon: Icon(Icons.favorite,
                        color: (index == 3)
                            ? DeliveryColors.green
                            : DeliveryColors.lightGrey),
                    onPressed: () => onIndexSelected(3),
                  ),
                ),
                Material(
                  child: InkWell(
                    onTap: () => onIndexSelected(4),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.amber,
                      child: Text('A'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
