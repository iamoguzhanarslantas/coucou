import 'package:coucou/routes/routes.dart';
import 'package:coucou/views/base_view.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        Future.delayed(
          const Duration(seconds: 1),
        ).then(
          (value) {
            Navigator.of(context).pushReplacementNamed(Routes.signInRoute);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_image, _text],
        ),
      ),
    );
  }

  Widget get _image => Image.asset('assets/images/logo.png');

  Widget get _text => TweenAnimationBuilder(
        tween: Tween<double>(begin: 13, end: 69),
        duration: const Duration(seconds: 1),
        builder: (_, double value, __) {
          return Wrap(
            children: [
              Text(
                'CouCou',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: value,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                'APP',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: value,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          );
        },
      );
}
