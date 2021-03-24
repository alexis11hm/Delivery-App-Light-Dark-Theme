import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/login/login_screen.dart';
import 'package:delivery_app_theming_dark_light/theming_and_state_managment/presentation/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: deliveryGradients)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: DeliveryColors.white,
              radius: 45,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/delivery/logo_delivery.png'),
              ),
            ),
            SizedBox(height: 10),
            Text('Delivery App',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3.copyWith(
                    fontWeight: FontWeight.bold, color: DeliveryColors.white))
          ],
        ),
      ),
    );
  }
}
