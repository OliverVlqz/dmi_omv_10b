import 'package:flutter/material.dart';
// Importar los archivos main de cada ejercicio
import 'boton_resta/main.dart' as BotonResta;
import 'formulario/main.dart' as Formulario;
import 'historial_contador/main.dart' as HistorialContador;
import 'navegacion/main.dart' as Navegacion;
import 'basic_widgets/main.dart' as BasicWidgets;
import 'row_column/main.dart' as RowColumn;
import 'snipets/main.dart' as Snippets;
import 'dashboard/main.dart' as Dashboard;
import 'firebase/main.dart' as Firebase;
import 'dio/main.dart' as Dio;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DMI OMV - Ejercicios Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicios de Flutter'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.remove, color: Colors.red),
                title: Text('Botón Resta'),
                subtitle: Text('Ejercicio de botón para restar números'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BotonResta.MyApp()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.assignment, color: Colors.green),
                title: Text('Formulario'),
                subtitle: Text('Ejercicio de formularios con validación'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Formulario.MyApp()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.history, color: Colors.orange),
                title: Text('Historial Contador'),
                subtitle: Text('Contador con historial de cambios'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistorialContador.MyApp(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.navigation, color: Colors.purple),
                title: Text('Navegación'),
                subtitle: Text('Ejercicio de navegación entre pantallas'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navegacion.MyApp()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.widgets, color: Colors.teal),
                title: Text('Widget Básicos'),
                subtitle: Text('Ejercicio de widgets fundamentales'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BasicWidgets.MyApp(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.grid_3x3, color: Colors.indigo),
                title: Text('Row & Column'),
                subtitle: Text('Ejercicio de filas y columnas'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RowColumn.MyApp()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.code, color: Colors.cyan),
                title: Text('Snippets'),
                subtitle: Text('Fragmentos de código y ejemplos'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Snippets.MyApp()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.dashboard, color: Colors.pink),
                title: Text('Dashboard'),
                subtitle: Text('Panel de control con componentes'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard.MyApp()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.cloud, color: Colors.amber),
                title: Text('Firebase'),
                subtitle: Text('Autenticación y base de datos Firebase'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Firebase.MyApp()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.cloud_download, color: Colors.blue),
                title: Text('DIO API'),
                subtitle: Text('Llamadas HTTP con la librería DIO'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dio.MyApp()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
