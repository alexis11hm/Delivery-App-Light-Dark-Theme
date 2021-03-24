import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profile')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: DeliveryColors.green),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child:
                                    Image.asset('assets/delivery/profile.jpg')),
                            radius: 50,
                            backgroundColor: Theme.of(context).canvasColor),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 10,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: DeliveryColors.purple,
                        radius: 20,
                        child: Icon(
                          Icons.camera_alt,
                          color: DeliveryColors.white,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Username',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Card(
                    color: Theme.of(context).canvasColor,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'Personal Information',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Email Address',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: DeliveryColors.green),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'username_12345@gmail.com.mx',
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Dark Mode',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Switch(
                                value: false,
                                onChanged: (value) {},
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: DeliveryColors.purple,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Logut',
                        style: TextStyle(color: DeliveryColors.white),
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
