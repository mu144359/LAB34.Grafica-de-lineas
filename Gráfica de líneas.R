####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)
#v2
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
#Grafica de lineas en R 



#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")
# Grafica de lineas en R


# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando ESPAÑA
gapminderES = gapminder[gapminder$country =="Spain",]

# como hacer grafica de líneas con ggplot2
ggplot(data = gapminderES,
       mapping = aes (x=year,
                      y=lifeExp))+
  geom_line()

# como modificar tipo de linea y color
ggplot(data = gapminderES,
       mapping = aes (x=year,
                      y=lifeExp))+
  geom_line(linetype="dashed",
            color="red")

# como modificar tamaño y hacer flecha
ggplot(data = gapminderES,
       mapping = aes (x=year,
                      y=lifeExp))+
  geom_line(linetype="dashed",
            color="red",
            arrow=arrow(),
            size=2)+
  geom_point(size=3)

# como agregar puntos

hispam_vec = c(  'Argentina', 'Brazil', 'Bolivia', 'Chile', 'Colombia',
  'Costa Rica', 'Cuba', 'Dominican Republic',
  'Ecuador', 'El Salvador', 'Guatemala', 'Honduras',
  'Mexico', 'Nicaragua', 'Panama', 'Paraguay',
  'Peru', 'Uruguay', 'Spain', 'Puerto Rico',
  'Venezuela' )

# gapminder paises de habla hispana


# crear un objeto df
gapminder_hisp = gapminder [gapminder$country %in% hispam_vec,]

# probando diferentes aestetics
ggplot(data = gapminder_hisp,
       mapping = aes (x=year,
                      y=lifeExp,
                      color=country))+
  geom_line()

#exportar dataframe
write.csv(gapminder_hisp,file = "gapminder_hisp.csv")
write.csv(gapminderES,file = "gapminderES.csv")
write.csv(gapminder,file = "gapminder.csv")
