import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          //image: AssetImage('assets/images/wall-grad015.jpg'),
          //image: AssetImage('../assets/images/img-0004.jpg'),
          //image: AssetImage('assets/images/img-wall002.jpg'),
          //image: AssetImage('assets/images/img-wall006.jpg'),
          //image: AssetImage('assets/images/img-wall007.jpg'),
          image: AssetImage('assets/images/img-wall003.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        //backgroundColor: Colors.transparent,
        backgroundColor: const Color(0x7f373737),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Form(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                              ),
                            ),
                            labelText: 'Usuário',
                            hintText: 'nome.sobrenome@ceresinvestimentos.com',
                            hintStyle: TextStyle(
                              color: Colors.white60,
                            ),
                            labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                              ),
                            ),
                            labelText: 'Senha',
                            hintText: 'senha',
                            hintStyle: TextStyle(
                              color: Colors.white60,
                            ),
                            labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        'Lembrar sua senha?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MaterialButton(
                        onPressed: () {},
                        color: const Color(0xffFF2D55),
                        elevation: 0,
                        minWidth: 350,
                        height: 60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.transparent,
                        elevation: 0,
                        minWidth: 350,
                        height: 60,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(
                              color: Colors.white,
                            )),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                            Text(
                              'Entrar com Facebook',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.transparent,
                        elevation: 0,
                        minWidth: 350,
                        height: 60,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(
                              color: Colors.white,
                            )),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            Text(
                              'Entrar com Outlook',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Center(
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: 'Ainda não tem uma conta?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: '  ',
                            ),
                            TextSpan(
                                text: 'Cadastre-se',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ))
                          ]),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
