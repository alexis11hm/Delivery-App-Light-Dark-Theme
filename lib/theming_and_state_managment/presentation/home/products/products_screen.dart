import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/theme.dart';
import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Porducts')),
        ),
        body: GridView.builder(
            padding: EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return _ItemProduct(product: product);
            }));
  }
}

class _ItemProduct extends StatelessWidget {
  final Product product;

  const _ItemProduct({this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
                    Text(
                      '\$${product.price}',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ],
                ),
              ),
              DeliveryButton(
                padding: EdgeInsets.symmetric(vertical: 4),
                text: 'Add',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  Product(
      {@required this.name,
      @required this.description,
      @required this.price,
      @required this.image});

  final String name;
  final String description;
  final double price;
  final String image;
}

final products = <Product>[
  Product(
      name: 'Whopper Crispy',
      description:
          'Delicious 100% grilled beef burger alternative with cheese flakes, crunchy onion',
      image: 'assets/delivery/burger1.png',
      price: 20),
  Product(
      name: 'XT Cheese Bacon',
      description:
          'Delicious 100% grilled beef burger alternative with cheese flakes, crunchy onion',
      image: 'assets/delivery/burger2.png',
      price: 58),
  Product(
      name: 'XT Steakhouse',
      description:
          'Delicious 100% grilled beef burger alternative with cheese flakes, crunchy onion',
      image: 'assets/delivery/burger3.png',
      price: 78),
  Product(
      name: 'Megastacker',
      description:
          'Delicious 100% grilled beef burger alternative with cheese flakes, crunchy onion',
      image: 'assets/delivery/burger4.png',
      price: 36),
];
