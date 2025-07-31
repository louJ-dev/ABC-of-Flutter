import 'package:flutter/material.dart';
import 'package:learning_flutter/components/custom_text_field.dart';

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
    Size deviceSize = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Color(0xFFE4F3FF),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Stack(
          children: [
            Positioned(
              left: deviceSize.width * -0.03, // -17,
              top: deviceSize.height * -0.1, // -43,
              child: Container(
                width: deviceSize.width * 0.45, // 200
                height: deviceSize.width * 0.45, // 189
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
              left: deviceSize.width * 0.35, // 97.5,
              top: deviceSize.height * -0.2, // -79.26,
              child: Container(
                width: deviceSize.width * 0.9, // 398.58
                height: deviceSize.width * 0.9, // 408.51
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
              left: deviceSize.width * -0.09, // -45,
              bottom: deviceSize.height * -0.09, // 692,
              child: Container(
                width: deviceSize.width * 0.43, // 179.25,
                height: deviceSize.width * 0.43, // 189.95,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF004E89),
                ),
              ),
            ),

            Positioned(
              left: deviceSize.width * 0.32, // 115.35,
              bottom: deviceSize.height * 0.12, // 680.14,
              child: Container(
                width: deviceSize.width * 0.15, // 52.17,
                height: deviceSize.width * 0.15, // 52.17,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff1A659E),
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              child: DefaultTabController(
                length: 2,
                animationDuration: Duration.zero,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 48.5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedLabelStyle: TextStyle(
                              color: Color(0xFF004EB8).withValues(alpha: 0.6),
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                            ),
                            tabs: [
                              Tab(text: "Login"),
                              Tab(text: "Register"),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 40),

                      Expanded(
                        child: TabBarView(
                          children: [

                            // Login
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  CustomTextField(controller: _userControl, hintText: "Username", iconData: Icons.person_outline_sharp),

                                  SizedBox(height: 11),

                                  CustomTextField(controller: _passControl, hintText: "Password", iconData: Icons.lock_open_outlined, obscure: true),

                                  SizedBox(height: 34),

                                  ElevatedButton(
                                    onPressed: () => {},
                                    child: Text("Login"),
                                  ),
                                ],
                              ),
                            ),

                            // Register
                            SizedBox(
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  CustomTextField(controller: _userControl, hintText: "Username", iconData: Icons.person_outline_sharp),

                                  SizedBox(height: 11),

                                  CustomTextField(controller: _passControl, hintText: "Password", iconData: Icons.lock_open_outlined, obscure: true),

                                  SizedBox(height: 11),

                                  CustomTextField(controller: _userControl, hintText: "Email", iconData: Icons.person_outline_sharp),

                                  SizedBox(height: 34),

                                  ElevatedButton(
                                    onPressed: () => {},
                                    child: Text("Sign Up"),
                                  ),
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
          ],
        ),
      ),
    );
  }
}
