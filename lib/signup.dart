import 'package:flutter/material.dart';
import 'styles.dart';
import 'registrado.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool _remember = false;
  var c_correo = TextEditingController();
  var c_password = TextEditingController();
  var c_username = TextEditingController();
  var c_fullname = TextEditingController();
  var c_birthday = TextEditingController();

  String correo = '';
  String password = '';
  String username = '';
  String fullname = '';
  String birthday = '';

  registrarse(correo, password, username, fullname, birthday) {
    if(correo == '' || password == '' || username == ''|| fullname == ''|| birthday == ''){
      mostrar_alerta('Debes de llenar todos los datos');
    }
    else{
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context){
            return new Registrado();
          }
      ));
    }
  }

  mostrar_alerta(mensaje){

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('REMEMBAS'),
            //content: Text(mensaje),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(mensaje)
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('Aceptar'),
              ),
            ],
          );
        }
    );

  }

  /*void ingresar(String correo, String password){

  }*/

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    'Register',
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
                          controller: c_correo,
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
                    height: 10,
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
                          controller: c_password,
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
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
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
                          controller: c_username,
                          keyboardType: TextInputType.text,
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
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            hintText: 'Write your username',
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
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
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
                          controller: c_fullname,
                          keyboardType: TextInputType.text,
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
                              Icons.abc_outlined,
                              color: Colors.white,
                            ),
                            hintText: 'Write your Fullname',
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
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birthday',
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
                          controller: c_birthday,
                          keyboardType: TextInputType.datetime,
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
                              Icons.date_range_outlined,
                              color: Colors.white,
                            ),
                            hintText: 'Input your birthday',
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
                          'Terms and Conditions',
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
                      onPressed: (){
                        correo = c_correo.text;
                        password = c_password.text;
                        username = c_username.text;
                        fullname = c_fullname.text;
                        birthday = c_birthday.text;

                        registrarse(correo, password, username, fullname, birthday);
                      },
                      child: Text('SIGN UP',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
