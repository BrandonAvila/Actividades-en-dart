// ignore_for_file: file_names

/*Si desea comrpobar las actividades usted debe entrar a la terminal(ctrl + Ñ) 
y entrar a la carpeta bin(Para ello use el comando cd bin)... Una vez dentro
dijite el comando "dart {Nombre del archivo}.dart" connesto el archivo empezara
a correr en la terminal y podra hacer uso de el. Gracias por su atencion.  */

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo movil multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Actividad 2 - Numeros decimales a binarios
Nombre del alumno: Avila Ramayao Brandon Jefte
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/

import 'dart:io';

void main() {
  int decimal;
  int binario;
  int i = 1;
  binario = 0;

  print("Ingrese el numero que desea convertir a binario: ");
  decimal = int.parse(stdin.readLineSync()!);
  //decimal value

  while (decimal > 0) {
    binario = binario + (decimal % 2) * i;
    decimal = (decimal / 2).floor();
    i = i * 10;
  }
  print("");
  print("El numero que ingreso, convertido en binario es: $binario");
}
