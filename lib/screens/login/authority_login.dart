import 'package:flutter/material.dart';
import '../../args_class.dart';
import '../launch/launch_screen.dart';
import 'loginform.dart';
import '../../constants.dart';
import '../components/loginsignupfooter.dart';
import '../components/customsigninappbar.dart';
import 'loginbody.dart';

class AuthorityLoginScreen extends StatelessWidget {
  static String routeName = '/authority_login';
  const AuthorityLoginScreen({
    super.key,
  });
  @override
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final arguments =
        ModalRoute.of(context)?.settings.arguments as LoginSignUpArguments;
    Size size = MediaQuery.of(context).size; // Available screen size
    return Scaffold(
      backgroundColor: isDark ? kGrey30 : kLGrey30,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: isDark ? kBackgroundColor : kLBackgroundColor,
        toolbarHeight: kHeaderHeight,
        elevation: 0,
        flexibleSpace: CustomSignInAppBar(
          herotag: arguments.herotag,
          size: size,
          fgcolor: arguments.fgcolor,
          title: arguments.title,
          icon: arguments.icon,
          press: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
            Navigator.of(context).pushNamedAndRemoveUntil(
                LaunchScreen.routeName, (Route<dynamic> route) => false);
          },
        ),
      ),
      body: SizedBox(
        height: size.height * 0.67,
        width: size.height * 0.95,
        child: LoginBody(
          formwidget: LoginForm(
            fgcolor: arguments.fgcolor,
            title: arguments.title,
            icon: arguments.icon,
            homeroute: AuthorityLoginScreen.routeName,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: isDark ? kBackgroundColor : kLBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              color: isDark ? kBlack15 : kLGrey50,
            ),
          ],
        ),
        height: 80,
        child: LoginSignUpFooter(
          size: size,
          msg: "Contact Support to register as an Admin.",
          btntext: "Support",
          fsize: 15,
          press: () {}, //Todo_Support
        ),
      ),
    );
  }
}
