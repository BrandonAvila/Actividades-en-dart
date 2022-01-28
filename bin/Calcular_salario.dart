// ignore_for_file: file_names

/*Si desea comrpobar las actividades usted debe entrar a la terminal(ctrl + Ñ) 
y entrar a la carpeta bin(Para ello use el comando cd bin)... Una vez dentro
dijite el comando "dart {Nombre del archivo}.dart" connesto el archivo empezara
a correr en la terminal y podra hacer uso de el. Gracias por su atencion.  */

/*Nombre de la escuela: Universidad Tecnologica Metropolitana
Asignatura: Desarrollo movil multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Actividad 2 - Calcular salario
Nombre del alumno: Avila Ramayao Brandon Jefte
Cuatrimestre: 5
Grupo: B
Parcial: 1
*/

import 'dart:io';

void main() {
  int actas;
  int horast;
  int salario;
  int horasextra;
  int extrasalario;
  actas = 0;
  String parar;
  parar = "Y";

  while (actas < 2 && parar.toUpperCase() == "Y") {
    print("¿Cuantas horas trabajaste a la semana?");
    horast = int.parse(stdin.readLineSync()!);
    while (horast <= 0) {
      print(
          "No se aceptan valores negativos o iguales a 0. Ingresa de nuevo las horas trabajadas.");
      print("");
      print("¿Cuantas horas trabajaste a la semana?");
      horast = int.parse(stdin.readLineSync()!);
    }

    if (horast < 27) {
      actas = actas + 1;
      salario = horast * 120;
      print(
          "Las horas que ha trabajado son insuficientes, el minimo es de 27hrs. "
          "Por lo tanto usted se le ha levantrado un acta administrativa, hasta ahora usted tiene: $actas acta/s. "
          "Si llegase a acumular 2 actas sera despedido");
      print("");
      print(
          "Aun asi, se le pagaran sus horas trabajadas, se le pagara un total de: $salario");
    } else if (horast <= 40) {
      salario = horast * 120;
      print(
          "En esta semana has trabajado $horast horas, por lo tanto tu salario final es de: $salario pesos");
      print("");
    } else {
      horasextra = horast - 40;
      extrasalario = horasextra * 175;
      salario = horast * 120;
      print(
          "En esta semana has trabajado $horast horas,pero tambien $horasextra horas, por lo tanto tu salario final es de: ${salario + extrasalario} pesos");
      print("");
    }
    if (actas < 2) {
      print("¿Desea consultar otra semana? (si = y/no = n)");
      parar = stdin.readLineSync()!;
    } else {
      print(
          "Usted ha sido despedido. Acumulo mas de 1 acta administrativas.(Actas que acumulo: $actas)");
    }
  }
}