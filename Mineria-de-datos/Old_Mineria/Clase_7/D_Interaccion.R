#Funci�n que selecciona los mejores predictores de y 
step (Modelo_lineal_5, direction = "both", trace = 0) 
#Construcci�n del modelo con los mejores predictores 
Modelo_lineal_6 = lm(y~quilate+ 
                       claridad+profundidad+tabla+x+z, 
                     data=Ejemplo_2_RG) 