#creaci?n de vectores seg?n argumentos
# tipo de argumento(longitud)
numeric(2)
character(4)
logical(3)

#Utilizaci?n de la funci?n Repeat y Break
repeat{
  if(x<13){
    print("hello")
    x <- x+1
  } else{
    print("stop")
    x=0
    break
  }
  
}

#utilizaci?n de la funci?n Next , para saltar a la siguiente instrucci?n
  for(x in 1:13){
    if(x<=10){
      x <- x+1
      print("skip")
      next
    }
    print("hello")
    x <- x+1
  }

#Funci?n que arroja los promedios de las columnas de una tabla de datos.
#removeNA instrucciona la omisi?n de valores de error NA de la tabla de datos.
columnmean <- function(y, removeNA=TRUE){
          nc <- ncol(y)
          means <- numeric(nc)
          for(i in 1:nc) {
                means[i] <- mean(y[,i], na.rm=removeNA)
          }
          means
}

f <-function(a,b){
  print(a)
  print(b)
  
}
