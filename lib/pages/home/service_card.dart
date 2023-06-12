import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1,
            ],
            colors: [
              Color(0xff274059),
              Color(0xff274059),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Teste",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/atendimento.png',
            height: 180.0,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}