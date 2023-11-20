import 'package:flutter/material.dart';

class DetailScreenData {
  final String itemName;
  final String description;

  DetailScreenData(this.itemName, this.description);
}

Widget buildDetailScreen(BuildContext context, DetailScreenData data) {
  return Scaffold(
    appBar: AppBar(
      title: Text(data.itemName),
    ),


    body: ListView(
        children:
        
         <Widget>[
          Column(
            
            children: <Widget>[ 
              Container(color: const Color(0xff0060ab),
              height: 80.0,
              child: Text('',
              
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),),
              width: double.infinity,),

Container(color: const Color(0xff0060ab),
              height: 150.0,
              child: Text('Desarrollo de aplicaciones móviles',
              
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),),
              width: double.infinity,),

              ListTile( 
                leading: Icon(Icons.volume_mute, color:Color(0xff0060ab),),
                title: const Text('Anuncios',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                
              ),
              const Divider(
              
                color: Color.fromARGB(255, 255, 255, 255),
           
              ),
            ],
          ),

           Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.share, color:Color(0xff0060ab),),
                title: const Text('Modulos',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),

          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.folder, color:Color(0xff0060ab),),
                title: const Text('Archivos',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),

          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.edit_document, color:Color(0xff0060ab),),
                title: const Text('Tareas',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),

          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.forum, color:Color(0xff0060ab),),
                title: const Text('Foros de discusion',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),

          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.video_camera_back, color:Color(0xff0060ab),),
                title: const Text('Zoom',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),
        ],
        
      ),
      
  );
}

Widget llamadasItem(BuildContext context, String title) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => buildDetailScreen(
              context,
              DetailScreenData(title, 'Descripción de $title'),
            ),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 150,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(30, 10, 10, 10),
            title: Text(
              'Desarrollo de aplicaciones móviles',
              style: TextStyle(color: Color(0xff0060ab)),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('2023-2-S-SCL'),
              ],
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ],
      ),
    ),
  );
}

Widget mails(BuildContext context, String title) {
 return Card(
   child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/trinidad.jpg'),
                      ),
                      title: const Text('TRINIDAD ALVARADO LA...'),
                      subtitle: const Text('Correcion'),
                      subtitleTextStyle: TextStyle(
                        fontSize: 10,
                      ),
                      trailing: const Text(
                        '7 oct 2023',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                    ),
);
}

Widget mails2(BuildContext context, String title) {
  return Card(
  child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/profe.jpg'),
                      ),
                      title: const Text('FERNANDA PAZ FONTEC...'),
                      subtitle: const Text('Retroalimentacion semana 10'),
                      subtitleTextStyle: TextStyle(
                        fontSize: 10,
                      ),
                      trailing: const Text(
                        '16 oct 2023',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 8,
                        ),
                      ),
                    ),
);

}
