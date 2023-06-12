import 'package:carousel_slider/carousel_slider.dart';
import 'package:ceres_all/pages/home/service_card.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  /*
  final _listCard = [
    {
      'title': 'Chamados',
      'image': 'assests/icons/icon1.png',
      'description': 'Abertura e acompanhamento de chamados',
    },
    {
      'title': 'Reunião',
      'image': 'assests/icons/icon1.png',
      'description': 'Abertura e acompanhamento de chamados',
    },
    {
      'title': 'Cantina',
      'image': 'assests/icons/icon1.png',
      'description': 'Abertura e acompanhamento de chamados',
    },
    {
      'title': 'Tarefas',
      'image': 'assests/icons/icon1.png',
      'description': 'Abertura e acompanhamento de chamados',
    }
  ];
  */

  int _currentIndex = 0;
  List cardList = [
    const Item1(
      key: Key('Chamados'),
    ),
    const Item2(
      key: Key('Reserva'),
    ),
    const Item3(
      key: Key('Cantina'),
    ),
    const Item4(
      key: Key('Solicitações'),
    ),
    const ServiceCard(key: Key('Teste')),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      bottomNavigationBar: Material(
        color: const Color(0xff274059),
        shadowColor: Colors.black87.withOpacity(0.5),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff274059),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2 - 140,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87.withOpacity(0.7),
                    blurRadius: 20,
                    spreadRadius: 10,
                  ),
                ],
                color: const Color(0xff274059),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Container(
                          height: 105,
                          width: 105,
                          decoration: BoxDecoration(
                              color: const Color(0xff274059),
                              borderRadius: BorderRadius.circular(52.5),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.redAccent,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/photos/marcos.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    '@marcos.damasceno',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 35),
                    child: Text(
                      'Marcos Damasceno',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xff274059),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff274059),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.photo_camera,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Camêra',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xff274059),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff274059),
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.photo_camera,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Camêra',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xff274059),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff274059),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.photo_camera,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Camêra',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xff274059),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff274059),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.photo_camera,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Camêra',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                CarouselSlider(
                  items: cardList.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 3,
                          color: Colors.white,
                          //color: const Color(0xff274059),
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                  options: CarouselOptions(
                    height: 300.0,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 10),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 10000,
                    ),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({required Key key}) : super(key: key);

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
          const Text("Chamados",
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

class Item2 extends StatelessWidget {
  const Item2({required Key key}) : super(key: key);

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
          const Text("Reserva de Salas",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/reserva.png',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xff274059),
              Color(0xff274059),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Cantina",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/cantina.png',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xff274059),
              Color(0xff274059),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Solicitações",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/icons/smartphone.png',
            height: 180.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

/*
class Item1 extends StatelessWidget {
  const Item1({required Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Chamados",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Chamados",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({required Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Reserva de Sala",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Reserva de Sala",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}
*/