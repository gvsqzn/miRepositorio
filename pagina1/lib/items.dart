import 'package:flutter/material.dart';


  //AHORA LA PANTALLA DE DETALLES ES INDEPENDIENTE
//SE CREA UNA CLASE DETAILSCREENDATA, CON DOS ATRIBUTOS O PARÁMETROS
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
  

    
  );
}

//SE LE AGREGARON ATRIBUTOS PARA QUE SEA DINÁMICA


  

 




Widget llamadasItem(BuildContext context, String title) {

  return Card(
  child: new InkWell(
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



     child: ListTile(
      
              contentPadding: EdgeInsets.fromLTRB(30,100,10,10),
              title: Text('Desarrollo de aplicaciones moviles'),
              textColor: Color(0xff0060ab),
              subtitle:
                  Text('2023-2-S-SCL'),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
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








