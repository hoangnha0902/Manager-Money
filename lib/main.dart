import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:manager_money_wedding/main_screen.dart';
import 'package:manager_money_wedding/screen/main/main_screen.dart';
import 'package:manager_money_wedding/screen/splash/plash_screen.dart';
import 'package:manager_money_wedding/screen/wedding_create/wedding_create_view.dart';

const SPLASH_ROUTE = '/';
const MAIN_ROUTE = '/main';
const WEDDING_CREATE_ROUTE = '/wedding_create';

//void main() => runApp(MainApp());
void main() => runApp(MyApp());

class AnimatedLogo extends AnimatedWidget {
  // Make the Tweens static because they don't change.
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1.0);
  static final _sizeTween = Tween<double>(begin: 0.0, end: 300.0);

  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.forward();
  }

  Widget build(BuildContext context) {
    return AnimatedLogo(animation: animation);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manager Money Wedding',
      home: SplashScreen(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case SPLASH_ROUTE:
            return SlideRightRoute(widget: SplashScreen());
            break;
          case MAIN_ROUTE:
            return SlideRightRoute(widget: MainScreen());
            break;
          case WEDDING_CREATE_ROUTE:
            return SlideRightRoute(widget: WeddingCreateScreen());
            break;
        }
      },
    );
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;

  SlideRightRoute({this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return new SlideTransition(
            position: new Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        });
}
