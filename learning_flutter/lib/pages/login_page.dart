import 'package:flutter/material.dart';

// Tried making this login screen I saw on google / pinterest, can't remember

// https://www.figma.com/design/pi7sDjr2Ek0KeXOM31Ve6B/Login---Signup-Screen--Community-?node-id=206-2&t=fqjEqKbgF5YX5ppo-0

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userControl = TextEditingController();
  final TextEditingController _passControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4F3FF),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: -17,
              top: -43,
              child: Container(
                width: 198,
                height: 189,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff004E89),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-1, 4),
                      blurRadius: 19,
                      color: Colors.black.withValues(alpha: 0.25),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 97.5,
              top: -79.26,
              child: Container(
                width: 398.58,
                height: 408.51,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1A659E),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-1, 4),
                      blurRadius: 19,
                      color: Colors.black.withValues(alpha: 0.25),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 366,
              child: DefaultTabController(
                length: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 48.5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 43),
                        child: SizedBox(
                          width: 150,
                          child: TabBar(
                            dividerHeight: 3,
                            indicatorColor: Color(0xFF004E89),
                            indicatorWeight: 2,
                            labelStyle: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold
                            ),
                            unselectedLabelStyle: TextStyle(
                              color: Color(0xFF004EB8).withValues(alpha: 0.6),
                              fontWeight: FontWeight.w500,
                              fontSize: 11
                            ),
                            tabs: [
                              Tab(text: "Login"),
                              Tab(text: "Register"),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 40,),

                      Expanded(
                        child: TabBarView(
                          children: [

                            // Login
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
                                    child: TextField(
                                      controller: _userControl,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(Icons.person_outline_rounded),
                                        fillColor: Colors.white,
                                        hintText: "Username",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 11),
                                  
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
                                    child: TextField(
                                      controller: _passControl,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(Icons.lock_open_rounded),
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 34),

                                  Container(
                                    width: 176,
                                    height: 33,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF004E89),
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  )
                                ],
                              ),
                            ),

                            // Register
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
                                    child: TextField(
                                      controller: _userControl,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(Icons.person_outline_rounded),
                                        fillColor: Colors.white,
                                        hintText: "Username",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 11),
                                  
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
                                    child: TextField(
                                      controller: _passControl,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(Icons.lock_open_rounded),
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 11),
                                  
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
                                    child: TextField(
                                      controller: _passControl,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(Icons.email_outlined),
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 34),

                                  Container(
                                    width: 176,
                                    height: 33,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF004E89),
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  )
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
              left: -45,
              top: 692,
              child: Transform.rotate(
                angle: 0.870,
                child: Container(
                  width: 179.25,
                  height: 189.95,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF004E89),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 115.35,
              top: 680.14,
              child: Container(
                width: 52.17,
                height: 52.17,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff1A659E),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
