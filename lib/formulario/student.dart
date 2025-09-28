
import 'package:dmi_omv_10b/formulario/person.dart';

class Student extends Person{

  String studentId;

  Student(this.studentId, String name, int age) : super(name: name, age: age);
} 