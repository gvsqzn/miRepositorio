import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Theme config for FlexColorScheme version 7.3.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
theme: FlexThemeData.light(
  scheme: FlexScheme.money,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
darkTheme: FlexThemeData.dark(
  scheme: FlexScheme.money,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,

      home: const HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            if (kDebugMode) {
              print('Icono de menú presionado!');
            }
          },
        ),
        title: const Text('Vásquez'),
        actions: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(right: 0.0), // Añadir margen a la derecha
            child: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                if (kDebugMode) {
                  print('Búsqueda presionada!');
                }
              },
            ),
          ),
          const SizedBox(
              width: 10), // Añadir un espacio entre los íconos, 10 pixeles
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
                backgroundImage:
                AssetImage('assets/guitarra.jpg')),
            title: const Text('Guitarra'),
            subtitle: const Text('Instrumento de cuerdas'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 1 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
               backgroundImage:
                AssetImage('assets/bajo.jpeg')),
            title: const Text('Bajo'),
            subtitle: const Text('Subtítulo del Item 2'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 2 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage:
                AssetImage('assets/piano.jpeg')),
            title: const Text('Piano'),
            subtitle: const Text('Subtítulo del Item 3'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 3 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
               backgroundImage:
                AssetImage('assets/bateria.jpeg')),
            title: const Text('Batería'),
            subtitle: const Text('Subtítulo del Item 4'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 4 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                child: Text('5'), backgroundColor: Color.fromARGB(255, 252, 0, 244)),
            title: const Text('Sintetizador'),
            subtitle: const Text('Subtítulo del Item 5'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 5 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                child: Text('6'), backgroundColor: Color.fromARGB(255, 0, 213, 255)),
            title: const Text('Micrófono'),
            subtitle: const Text('Subtítulo del Item 6'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 6 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                child: Text('7'), backgroundColor: Color.fromARGB(255, 225, 255, 0)),
            title: const Text('Violín'),
            subtitle: const Text('Subtítulo del Item 7'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 7 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                child: Text('8'), backgroundColor: Color.fromARGB(255, 0, 252, 8)),
            title: const Text('Contrabajo'),
            subtitle: const Text('Subtítulo del Item 8'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
          // Agregar los ListTiles restants aquí...
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor, // Color primario
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                if (kDebugMode) {
                  print('Botón Home presionado!');
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                if (kDebugMode) {
                  print('Botón vídeo presionado!');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

