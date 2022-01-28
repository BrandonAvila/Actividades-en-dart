// ignore_for_file: file_names

/*Si desea comrpobar las actividades usted debe entrar a la terminal(ctrl + Ñ) 
y entrar a la carpeta bin(Para ello use el comando cd bin)... Una vez dentro
dijite el comando "dart {Nombre del archivo}.dart" connesto el archivo empezara
a correr en la terminal y podra hacer uso de el. Gracias por su atencion.  */

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo movil multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Actividad 2 - Palindromos
Nombre del alumno: Avila Ramayao Brandon Jefte
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/

import 'dart:io';

void main() {

  String oracion;
  String espaciodefrase;
  String min;
  int count;

  print("Escriba la palabra o oracion que desea comprobar: ");
  oracion = stdin.readLineSync()!;

  count = oracion.split(' ').length;

  espaciodefrase = oracion.trim().replaceAll(" ", "");

  min = espaciodefrase.toLowerCase();

  String reversa = min.split('').reversed.join('');

  if (min == reversa) {
    print('Es un Palíndromo');
  } else {
    print('No es un Palíndromo');
  }

  print('Total de palabras: $count');
}
