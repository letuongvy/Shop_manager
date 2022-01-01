import 'package:flutter/material.dart';
import 'package:shop_manager/screen/Style.dart';
import 'package:shop_manager/screen/home_page.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
class loginPage extends StatefulWidget {

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:   [
                    Text("Login", style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfpro',
                    ),),
                    Text("Please log in to your account", style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "User"
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Password"
                      ),
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: openHomePage,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          gradient: gradientStyle,
                        ),
                        child: Center(
                          child: Text("LOGIN", style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'sfpro'
                          ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
  void openHomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
  }
}
