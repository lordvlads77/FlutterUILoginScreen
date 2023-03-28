import 'package:flutter/material.dart';
import 'styles.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _remember = false;

    /*Gesture Detector e InkWell
    Opciones que se tienen para cubrir un widget entero
     y darle click
     */

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        final FocusScopeNode focus = FocusScope.of(context);
        if(!focus.hasPrimaryFocus && focus.hasFocus){
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF73AEF5),
                    Color(0xFF61A4F1),
                    Color(0xFF478DE0),
                    Color(0xFF398AE5),
                  ],
                  stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9
                  ],
                )
              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 120,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset('img/80x73Mobile.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2)
                              ),
                            ],
                          ),
                          height: 60,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: 14
                              ),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.white,
                              ),
                              hintText: 'Write your email',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2)
                              ),
                            ],
                          ),
                          height: 60,
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans'
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  top: 14
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ),
                              hintText: 'Type your Password',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                          onPressed: () => print('Forgot Password Button Pressed'),
                          padding: EdgeInsets.only(right: 0),
                          child: Text(
                            'Forgot Password?',
                            style: lLoginStyle,
                          ),
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        children: [
                          Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Colors.white
                              ),
                              child: Checkbox(
                                  value: _remember,
                                  checkColor: Colors.indigo,
                                  activeColor: Colors.white,
                                  onChanged: (value) {
                                    setState(() {
                                      _remember = value!;
                                    });
                                  },
                              ),
                          ),
                          Text(
                            'Remember Me',
                            style: lLoginStyle,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                                return Colors.white;
                            })
                          ),
                          onPressed: () => print('Login Button Pressed'),
                          child: Text('LOGIN',
                            style: TextStyle(
                              color: Color(0xFF527DAA),
                              letterSpacing: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                      ),
                    ),
                    Column(
                      children: [
                        Text('- OR -',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Sign in with',
                          style: lSignStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('img/facebook.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
