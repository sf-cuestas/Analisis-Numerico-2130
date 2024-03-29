#QUIXERAMOBIM

library(pracma)
library(readxl)


#Se realiza la lectura del archivo xls con los datos originales, se indica en que hoja se leen los datos.
# Se guradan los datos en datosTemperatura
datosTemperatura = read_excel("C:/Kamigueen/Octavo semestre/An�lisis numerico/Parcial3/Reto clima/datosClima.xls", 
                              sheet = "quixeramobim")

tamHoja = length(datosTemperatura$`Temp. Interna (�C)`)
#Se almacena en el eje x los datos asociados al tiempo, ya que cada dato se toma cada hora.  
x = seq(1,length(datosTemperatura$`Temp. Interna (�C)`),1)
# Como variable a graficar se toma la temperatura interna.
y = datosTemperatura$`Temp. Interna (�C)`

plot(x,y, type = "line", main = "Datos iniciales", ylab = "Temperaturas internas", xlab = "Horas transcurridas")