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
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Descripción: ${data.description}'),
        ],
      ),
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
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => buildDetailScreen(
              context,
              DetailScreenData('TRINIDAD ALVARADO LA...', 'Corrección'),
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
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/trinidad.jpg'),
            ),
            title: Text('TRINIDAD ALVARADO LA...'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Corrección'),
              ],
            ),
            trailing: Text(
              '7 oct 2023',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 8,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget mails2(BuildContext context, String title) {
  return Card(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => buildDetailScreen(
              context,
              DetailScreenData('FERNANDA PAZ FONTEC...', 'Retroalimentación semana 10'),
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
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profe.jpg'),
            ),
            title: Text('FERNANDA PAZ FONTEC...'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Retroalimentación semana 10'),
              ],
            ),
            trailing: Text(
              '16 oct 2023',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 8,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void main() {
  runApp(MaterialApp(
    home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: [
            llamadasItem(
              context,
              'Desarrollo de aplicaciones móviles',
            ),
            mails(context, 'TRINIDAD ALVARADO LA...'),
            mails2(context, 'FERNANDA PAZ FONTEC...'),
          ],
        ),
      ),
    ),
  ));
}

