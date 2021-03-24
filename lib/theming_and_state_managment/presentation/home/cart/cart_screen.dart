import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/home/products/products_screen.dart';
import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class CartScreen extends StatelessWidget {
  final VoidCallback onShopping;

  const CartScreen({Key key, this.onShopping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Shopping Cart')),
        ),
        body: _FullCart());
  }
}

class _FullCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.builder(
                itemCount: products.length,
                itemExtent: 230,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return _ShoppingCardProduct(product: products[index]);
                }),
          ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Theme.of(context).canvasColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'SubTotal',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: Theme.of(context).accentColor),
                              ),
                              Text('0.0 usd',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color: Theme.of(context).accentColor))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Delivery',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: Theme.of(context).accentColor),
                              ),
                              Text('Free',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color: Theme.of(context).accentColor))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).accentColor),
                              ),
                              Text('\$85.00 usd',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).accentColor))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    DeliveryButton(
                      text: 'Checkout',
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

class _ShoppingCardProduct extends StatelessWidget {
  final Product product;

  const _ShoppingCardProduct({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Theme.of(context).canvasColor,
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: ClipOval(
                                child: Image.asset(
                              product.image,
                              fit: BoxFit.cover,
                            )),
                          )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          Text(product.name),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            product.description,
                            style: Theme.of(context)
                                .textTheme
                                .overline
                                .copyWith(color: DeliveryColors.lightGrey),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: DeliveryColors.white,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Icon(
                                      Icons.remove,
                                      color: DeliveryColors.purple,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: DeliveryColors.purple,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Icon(Icons.add,
                                        color: DeliveryColors.white),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$${product.price}',
                                  style: TextStyle(color: DeliveryColors.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                  backgroundColor: DeliveryColors.pink,
                  child: Icon(
                    Icons.delete_outline,
                    color: DeliveryColors.white,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  final VoidCallback onShopping;

  const _EmptyCart({Key key, this.onShopping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/delivery/empty_cart.png',
          height: 90,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'There are not products',
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: DeliveryColors.purple,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Go shopping',
                style: TextStyle(color: DeliveryColors.white),
              ),
            ),
            onPressed: onShopping,
          ),
        )
      ],
    );
  }
}
