import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vector_math/vector_math_64.dart' hide Colors;

class SignInPage extends StatelessWidget {

  /// Normally the signin buttons should be contained in the SignInPage
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          /*SignInButtonBuilder(
            text: 'Get going with Email',
            icon: Icons.email,
            onPressed: () {
              
            },
            backgroundColor: Colors.blueGrey[700]!,
            width: 220.0,
          ),*/
          
          // SignInButton(
          //    Buttons.Google,
          //    onPressed: () {
              
          //    },
          // ),

          SignInButtonBuilder(
            elevation: 2.0,
            key: ValueKey("Google"),
            text: 'Sign in with Google',
            textColor: Colors.black,
            image: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                 image: AssetImage(
                   'assets/logos/google_light.png',
                   package: 'flutter_signin_button',
                 ),
                 height: 28.0,
               ),
            ),
            // image: ClipRRect(
            //   borderRadius: BorderRadius.circular(20.0),
            //   child: Transform(
            //     transform: new Matrix4.diagonal3(new Vector3(1.1, 1.1, 1.1)),
            //     alignment: FractionalOffset.center,
            //     child:  Image(
            //         image: AssetImage(
            //           'assets/logos/google_light.png',
            //           package: 'flutter_signin_button',
            //         ),
            //         //height: 48.0,
            //       ),
            //     )
            // ),
            backgroundColor: Color(0xFFFFFFFF),
            innerPadding: EdgeInsets.fromLTRB(8, 0, 7, 0),
            onPressed: (){},
            padding: EdgeInsets.all(0),
            //innerPadding: EdgeInsets.all(0),
            shape: null,
            height: 28.0,
          ),

          Divider(),

          SignInButtonBuilder(
            elevation: 2.0,
            key: ValueKey("Facebook"),
            mini: false,
            text: 'Sign in with Facebook',
            textColor: Colors.black,
            icon: FontAwesomeIcons.facebook,
            iconColor: Colors.blue,
            backgroundColor: Color(0xFFFFFFFF),
            innerPadding: EdgeInsets.fromLTRB(12, 0, 11, 5),
            onPressed: (){},
            padding: EdgeInsets.all(0),
            shape: null,
            height: 36,
          ),

          Divider(),

          SignInButtonBuilder(
            elevation: 2.0,
            key: ValueKey("Apple"),
            mini: false,
            text: 'Sign in with Apple',
            textColor: Colors.black,
            icon: FontAwesomeIcons.apple,
            iconColor: Colors.black,
            backgroundColor: Color(0xFFFFFFFF),
            innerPadding: EdgeInsets.fromLTRB(12, 0, 11, 5),
            onPressed: (){},
            padding: EdgeInsets.all(0),
            shape: null,
            height: 36,
          )

        ],
      ),
    );
  }
}