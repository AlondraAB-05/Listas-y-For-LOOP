ListaDeNumeros <- list(2,5,6,2,1,5,6,10,11,20,15)

ListaDeNumeros[5]


##Ejercicio 1.  ¿Qué pasa si reemplazamos el 5 por un 0?
##¿Qué pasa si en vez de poner un número positivo, 
##menor igual al largo de la lista, colocamos un número mayor 
##a la cantidad de elementos de la lista o un número negativo? 

#Colocando el 0, no muestra nada en la lista, resultado list()
ListaDeNumeros[0]

#Colocando un numero mayor a la cantidad enlistada, arroja un NULL
ListaDeNumeros[16]

#Colocando un numero negativo enlista todos los números de la variable a excepcion del que está 
#en la posicion negativa, -6, elimina al de la posición 6, si el número es mas grande que el de 
#los números contenidos en la lista, hace la lista de todos.
ListaDeNumeros[-6]




##Ejercicio 2. A continuación se le presenta la función unlist, 
##la cual se puede usar de la siguiente manera: unlist(listaDeNumeros[5]) 
##¿Qué diferencia existe entre usar o no el unlist, y cómo cree usted 
##que le podría ayudar esta función?, pista: experimente usando 
##el condicional if, use estos como ejemplo: 

ListaDeNumeros[5]

class(ListaDeNumeros)

ListaDeNumeros1<- unlist(ListaDeNumeros)

class(ListaDeNumeros1)

unlist(ListaDeNumeros1[5])

if(ListaDeNumeros1[5]+1>0){
  print("Si se cumple")
}

if(unlist(ListaDeNumeros1[5]+1>0)) {
  print("Si se cumple")
}

#Tuve que cambiar la clase de la variable que estaba usando, para que pasara de ser list
#a numeric y así poder correr el if.




##Ejercicio 3.  ¿Qué pasa cuando realizamos la siguiente acción: listaDeNumeros[5] <- 12?  

ListaDeNumeros[5]<-12
print(ListaDeNumeros)

#Se sustituye el número original de la lista por el 12




##Ejercicio 4.  Existe una función llamada length, esta se usa de la siguiente manera: 
##length(nombre_variable), ¿por qué debería ser cambiado nombre_variable para que 
##funcione con el ejemplo que estamos trabajando (listaDeNumeros)? ¿qué da como resultado? 

##Previo a revisar lo referente a FOR-LOOP, se revisará lo que es una secuencia, 
##una secuencia es la creación ordenada de números, que puede ser de mayor a menor como de menor a mayor. 

length(ListaDeNumeros)
length(ListaDeNumeros1)




?????????????????????????????????????????????
##Ejercicio 5.  Para generar secuencias se tiene un valor inicial y un valor final, 
##donde ambos valores son enteros, para el ejemplo, y la sintaxis en R es la siguiente:  

##valorInicial : valorFinal  
6:10
1:10
list(1:10)

?????
##¿Que sucede cuando valorInicial <- 5 y valorFinal <- 20, si ahora los invertimos, 
##valorInicial <- 20 y valorFinal <- 5, y si ahora usamos el length visto en el ejercicio 3, 
##length(listaDeNumeros), en vez de valorInicial o valorFinal?¿Que pasa si ambos números son iguales? 
5:20 ## Por qué aparece contacting Delphi???
20:5
 
length(ListaDeNumeros)
11:11 
#Sólo aparece el numero 11
1:11 
#Lista de numeros del 1 al 11

 ##Ya habiendo visto algunas operaciones que se pueden usar con las listas y la 
 ##generación de secuencias ahora veremos FOR-LOOP. 

##Un for-loop o for es un bucle que recorre estructuras o iteraciones de elementos, 
##donde se establece una condición, este termina cuando se cumple la condición. 
##Tener en cuenta que que la condición siempre debe ir asociada a una secuencia, 
##esto se representa del siguiente modo: 

##En este caso sólo nos concentramos en las iteraciones construidas con secuencias, 
##para esto la sintaxis en R será la siguiente: 

##for(i in 1 : 100){
  ##print(paste("cuento ",i," misisipis")) 
##} 

for (x in ListaDeNumeros[1:11]) {
  print(paste("El número es", x , "y después"))
}




##Ejercicio 6.  Ejecute el ejemplo anterior y comente ¿Cuál es la condición establecida en el for, 
##según el resultado que muestra la  consola? 

#Que cada vez que se encuentre x en la lista, se colocará un texto antes y otro despues

  


##Ejercicio 7. Adapte el código anterior para que  imprima los elementos de la lista que se creó anteriormente.

for (x in ListaDeNumeros) {
  print(x)
}




##Ejercicio 8. Usando los condicionales vistas en clases, adapte el código anterior para que muestre si un número es par o impar. 

class(ListaDeNumeros1)

for (x in 1:length(ListaDeNumeros1)) {
    if (ListaDeNumeros1[x] %% 2 == 0) {
      print(paste("El numero es par"))
    } else {
      print(paste("El numero es impar"))
    }
  }




??????????????????????????????????????????????????????
##Ejercicio 9. Como vimos en clases anteriores  el uso de condicionales es útil para tomar 
##decisiones respecto a ciertas opciones que se presentan, para practicar esta metodología 
##se le pida que resuelva el siguiente ejercicio. 

##Suponga que existe un sistema de plebiscitos (resultado SI o NO) con las siguientes reglas: 
  ##- El padrón electoral consiste de total personas (número entero). 
  ##- Hay dos opciones de voto: SI o NO. La cantidad de votos se representan
  ##con las variables votosSI y votosNO (números enteros).
  ##- Considerando que el quórum corresponde al 50% + 1 del padrón electoral: 

##??? Si hay menos votos que el quórum, pero una de las opciones (SI o NO) tiene 
##una votación mayor o igual al 30%, gana dicha opción. Si no, no hay quórum y gana la opción NO. 
##??? Si hay suficientes votos para el quórum, gana la opción con más votos. 
##En caso de empate, gana la opción SI. 

  ##- Suponga que no hay votos blancos o nulos. Implemente una función que reciba los parámetros total, 
  ##votosSI y votosNO, y devuelva un String con la opción ganadora ('SI' o 'NO'). No olvide seguir todos 
  ##los pasos de la receta de diseño.


# PadronElectoral <- ()
# Quorum <- if (VotosSI > PadronElectoral / 2 + 1) {
# print("Gana Votos a Favor") {
# }else if ( VotosSI >= PadronElectoral * 0.3 || VotosNO >= PadronElectoral * 0.3){
# print()
# }
# } else {
# "Gana Votos "
# }
# }
# } 

Resultados <- function(VotosSI,VotosNO,)

PadronElectoral <- 10

VotosSI <- 7
VotosNO <- 3

if (VotosSI > PadronElectoral / 2 + 1) {
  print( "Hay Quorum")
} else if (VotosSI >= PadronElectoral * 0.3 || VotosNO >= PadronElectoral * 0.3) {
    print( "Gana Votos", )
  }
} 

PadronElectoral * 0.5
if(PadronElectoral < 5){
  print("Poquitos")
} else {
  print("Muchotes")
}


if (VotosSI > 50 % + 1) {
  
}




##Ejercicio 10. Una función es un grupo de instrucciones que toma valores de entradas para generar un 
##resultado. Por ejemplo, si se crea una función que sume dos elementos, a y b, de la siguiente manera: 

##Suma<-function(a,b){      
   ##a+b 
##} 

##Y luego de esto ejecute lo siguiente en R: Suma(3,4) 

##¿Qué resultado genera? Pruébelo con operaciones resta,multiplicación, división

Suma <- function(a,b) {
  a+b
} 

Suma(3,4)


Resta <- function(a,b) {
  a-b
}

Resta(3,4)


Multiplicacion <- function(a,b) {
  a * b
}

Multiplicacion(3,4)


Division <- function(a,b) {
  a/b
}

Division(3,4)




##Ejercicio 11.  Cree dos funciones, una que genere la diferencia entre las áreas de dos 
##rectángulos(área sombreada figura 1) y otra de las áreas de un círculo (área sombreada figura 2), 
##como muestran las siguientes figuras: 

DifAreaRect <- function(RectanguloA,RectanguloB) {
  RectanguloA - RectanguloB
}

DifAreaRect(548,125)


DifAreaCirculo <- function(Circulo1, Circulo2) {
  Circulo1 - Circulo2
}

DifAreaCirculo(236,36)




##Ejercicio 12.  Ejecute el siguiente código y diga cuales son las ventajas y 
##desventajas de hacer un loop con lista o rango 

##for( i in listaDeNumeros){   
   ##print(i) 
##} 

for (i in ListaDeNumeros) {
  print(i)
}






