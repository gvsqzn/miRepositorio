import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


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

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool _isChatsTabActive = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      _isChatsTabActive = _tabController.index == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Whatsapp',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {
              if (kDebugMode) {
                print('Icono de persona presionado!');
              }
            },
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print('Icono de persona presionado!');
              }
            },
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              if (kDebugMode) {
                print('Icono de persona presionado!');
              }
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _buildTab('Grupos', 0),
            _buildTabWithNumberAndColor('Chats', 5, _isChatsTabActive), // Agregar el círculo
            _buildTab('Novedades', 2),
            _buildTab('Llamadas', 3),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: MyTheme.lightTheme().colorScheme.secondary,
          labelStyle: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.archive_outlined,
                    color: MyTheme.lightTheme().colorScheme.primary,
                    size: 24,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Archivados',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
               children: <Widget>[
      const Center(
        child: Text('Pestaña de Grupos'),
      ),
      ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: MyTheme.lightTheme().colorScheme.primary,
            ),
            title: const Text('Beethoven'),
            trailing: const Icon(Icons.more_vert),
          );
        },
      ),
      const Center(
        child: Text('Pestaña de Novedades'),
      ),
      const Center(
        child: Text('Pestaña de Llamadas'),
      ),
    ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    return Tab(
      child: Text(title),
    );
  }

  Widget _buildTabWithNumberAndColor(String title, int number, bool isActive) {
    final circleColor = isActive
        ? Colors.white
        : MyTheme.lightTheme().colorScheme.tertiary;

    return Tab(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(title, style: const TextStyle(fontSize: 14)),
          ),
          const SizedBox(width: 4),
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: MyTheme.lightTheme().colorScheme.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}