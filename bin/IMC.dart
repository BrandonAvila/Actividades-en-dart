// ignore_for_file: file_names

/*Si desea comrpobar las actividades usted debe entrar a la terminal(ctrl + Ñ) 
y entrar a la carpeta bin(Para ello use el comando cd bin)... Una vez dentro
dijite el comando "dart {Nombre del archivo}.dart" connesto el archivo empezara
a correr en la terminal y podra hacer uso de el. Gracias por su atencion.  */

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo movil multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Actividad 2 - IMC
Nombre del alumno: Avila Ramayao Brandon Jefte
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/

import 'dart:io';

void main() {
  stdout.write('Dijite su peso en Kg (Ejemplo: 84.5): ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Dijite su altura en metros (Ejemplo: 1.77): ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print('Su IMC es:' + imc.toStringAsFixed(2));

  if (imc < 16) {
    print('Desnutricion severa');
  } else if (imc < 17) {
    print('Desnutricion moderada');
  } else if (imc < 18.5) {
    print('Bajo peso');
  } else if (imc < 25) {
    print('Peso normal');
  } else if (imc < 30) {
    print('Sobrepeso');
  } else if (imc < 35) {
    print('Obesidad – Grado I');
  } else if (imc < 40) {
    print('Obesidad – Grado II');
  } else {
    print('Obesidad – Grado III');
  }
}
