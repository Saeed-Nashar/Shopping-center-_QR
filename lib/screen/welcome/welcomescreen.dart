import 'package:flutter/material.dart';
import 'package:flutter_app/screen/welcome/signuporsignin.dart';




class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(right:25),
                child: Image.asset("assets/icons/10.jpeg",),
              ),
              Spacer(flex: 1),
              Text(
                "مرحبا بكم في تطبيقنا",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "تطبيق بريق الإعلان هو طريقة سهلة للتسوق في أي مكان.",
                textAlign: TextAlign.center,
                style:/* TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color!
                        .withOpacity(0.64),
                  ),*/
                Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(),
              ),


              Spacer(flex: 3),
              FittedBox(
                child: TextButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninOrSignupScreen(),
                          ),
                        ),
                    child: Row(
                      children: [
                        Text(
                          "تخطي",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color!
                                    .withOpacity(0.8),
                              ),
                        ),
                        SizedBox(width: 20 / 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .color!
                              .withOpacity(0.8),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
