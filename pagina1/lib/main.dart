import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'items.dart';
import 'theme.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      home: const SplashScreen(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<String> _screenTitles = ["Tablero", "Bandeja de entrada"];
  final List<IconData> _screenIcons = [ Icons.speed, Icons.mail];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(int index) {
    setState(() {
      _currentPage = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
         
         
          
          /* POR CADA PANTALLA NUEVA O NAVEGACIÓN SE DEBE AGREGAR UN NUEVO CustomScrollVIew, EVIDENTEMENTE LOS MIEMBROS VIENEN DE ITEMS.DART
          Habría que crear nuevos items u objetos
          ESTE ES UN CUSTOMSCROLLVIEW NUEVO, CON EL TÍTULO COORDINADORES*/
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: const Icon(Icons.menu),
              
                title: const Text(
          'Tablero',
          style: TextStyle(
          
            fontSize: 16,
          ),
        ),
        
                actions: [
                  IconButton(
                  
                    icon: const Icon(Icons.add_box_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de búsqueda presionado!');
                      }
                    },
                  ),
             
                ],
                floating: false,
                pinned: false,
                expandedHeight: 20.0,
              ),    SliverAppBar(
            backgroundColor: Color(0xffffffff),
                title: const Text(
          'Cursos',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 24,
          ),
        ),
        
                actions: [
                  IconButton(
               
                    icon: const Icon(Icons.add_box_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de búsqueda presionado!');
                      }
                    },
                  ),
             
                ],
                floating: false,
                pinned: false,
                expandedHeight: 20.0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    
                    llamadasItem(context, ''), //acá conviene crear un nuevo elemento en items.dart
                    llamadasItem(context, ''),
                    llamadasItem(context, ''),
                  ],
                ),
              ),
            ],
          ),     

 

 
CustomScrollView(
            slivers: [
              SliverAppBar(
        leading: const Icon(Icons.menu),
        title: const Text(
          'Bandeja de entrada',
          style: TextStyle(
            fontSize: 16,
          ),
        ),    
        
              ),

              SliverAppBar(
            backgroundColor: Color(0xffffffff),
                title: const Text(
          'Todos los cursos',
          
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 24,
          ),
          
        ),

     
        
                
                floating: false,
                pinned: false,
                expandedHeight: 20.0,
              ),
          
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                   
                   mails(context, ''),
                    mails2(context, ''),
                    mails(context, ''),
                    mails2(context, ''),
                    mails(context, ''),
                    mails2(context, ''),
                    mails(context, ''),
                    mails2(context, ''),
                    
                  ],
                ),
              ),
              
  ],
),          



        ],





        onPageChanged: (index) {
          _navigateToPage(index);
        },
      ),
      /*SE HA MODIFICADO EL BOTTOM BAR, AL COMIENZO DEL CÓDIGO ESTÁN Los INDEX DE LAS PANTALLAS, SE PUEDE DEJAR NAVEGACIÓN MEDIANTE GESTO E ÍCONO
      HAY QUE REDEFINIR EL NOMBRE DE LAS PANTALLAS, RECUERDA QUE LOS ITEMS ESTÁN EN EN ARCHIVO ITEMS.DART
      AL NAVEGAR TE DARÁS CUENTA QUE REPITE LA ÚLTIMA NAVEGACIÓN, ESO ES PORQUE FALTA UN CustomScrollView, se agregó uno nuevo, coordinadores, más arriba*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _navigateToPage,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          _screenTitles.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(_screenIcons[index]),
            label: _screenTitles[index],
          ),
        ),
      ),
    );
  }
}
