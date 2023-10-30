import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(//Acá comienza el Appbar
          backgroundColor: const Color(0xFF023047), //color de fondo, a mano, luego se puede integrar a flex_color
          leading: const Icon(Icons.menu), //ubicación del ícono de navegación
          title: const Text('Refuerzo'), //título de la app
          actions: [//iconos búsqueda y more_vert
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Acción para el ícono de búsqueda
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Acción para el ícono "more_vert"
              },
            ),
          ],
        ),// Acá termina el AppBar





        body: SingleChildScrollView( //Permite eventualemnte desplazarse a un punto x en el scroll.

          child: Column( //será una columna vertical, navegamos verticalmente

            children: [

              const Divider(//para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


              Row( //una fila que tiene dos columnas, separadas por una línea, alto 48 píxeles
                children: [
                  Expanded(//cada expanded es una columna al interior del container, se construye el container en su interior
                    flex: 1, //primera división de la superficier, ROW
                    child: Container(// acá se construye, el contenido de esa superficie previamente formateada.
                      height: 64.0, //con alto de 48 pixeles
                      color: const Color(0xFFFB6900), // Color en formato hexadecimal
                    ),
                  ),


                  const SizedBox(width: 4.0), //separador vertical


                  Expanded(
                    flex: 6, //segunda división de la superficie, ROW
                    child: Container(
                      height: 64.0,
                      color: const Color(0xFFFB6900), // Color en formato hexadecimal
                    ),
                  ),
                ],
              ),



              const Divider( //Nuevo separador horizontal
                height: 4.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),


                            Container(//superficie azul, de acá en adelante todo será un container
                color: const Color(0xFFFB6900), // Color en formato hexadecimal
                height: 350.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),



              const Divider(//para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


              Container(//cuadrado grande solo
                color: const Color(0xFFFB6900), // Color en formato hexadecimal
                height: 64.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),

              const Divider(//para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

              Row( //una fila que tiene dos columnas, separadas por una línea, alto 48 píxeles
                children: [
                  Expanded(//cada expanded es una columna al interior del container, se construye el container en su interior
                    flex: 1, //primera división de la superficier, ROW
                    child: Container(// acá se construye, el contenido de esa superficie previamente formateada.
                      height: 64.0, //con alto de 48 pixeles
                      color: const Color(0xFFFB6900), // Color en formato hexadecimal
                    ),
                  ),


                  const SizedBox(width: 4.0), //separador vertical


                  Expanded(
                    flex: 1, //segunda división de la superficie, ROW
                    child: Container(
                      height: 64.0,
                      color: const Color(0xFFFB6900), // Color en formato hexadecimal
                    ),
                  ),
                ],
              ),


              const Divider(//para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

              Container(//cuadrado grande solo
                color: const Color(0xFFFB6900), // Color en formato hexadecimal
                height: 128.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),

             const Divider(//para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

              //Nueva declaración de fila, tendrá 4 subdivisiones
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color(0xFFE9DDFF), // Color en formato hexadecimal
                    ),
                  ),


                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color(0xFFE9DDFF), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color(0xFFFB6900), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0),//separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color(0xFFFB6900), // Color en formato hexadecimal
                    ),
                  ),
                ],
              ),


            


              
                ],
           
          ),
        ), // Se cierra el body



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF023047), //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), // Icono blanco
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.white), // Icono blanco
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), // Icono blanco
              label: 'Search',
            ),
          ],
          selectedItemColor: Colors.white, // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(255, 103, 102, 102), // Color de íconos no seleccionados


        ),
      ),//Se cierra SCaffold
    );//Se cierra MaterialApp
  }//Se cierra el Widget Build contexts
}// se cierra la clase


