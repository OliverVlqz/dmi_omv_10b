import 'package:flutter/material.dart';
// Importar los archivos main de cada ejercicio
import 'boton_resta/main.dart' as BotonResta;
import 'formulario/main.dart' as Formulario;
import 'historial_contador/main.dart' as HistorialContador;
import 'navegacion/main.dart' as Navegacion;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          ],
        ),
      ),
    );
  }

  void _showNotImplemented(BuildContext context, String ejercicio) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$ejercicio aún no implementado'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
