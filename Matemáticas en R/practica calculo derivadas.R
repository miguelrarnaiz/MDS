####################################EJERCICIOS DERIVADAS############################

###Librerías necesarias###
require(mosaicCalc)
require(mosaic)



#########################

#1)
a=mosaicCalc::D(3*x^2-2*x+4 ~x)
a
#Evaluación de la función en puntos
a(0)
a(-6)
a(-4)
a(-3)
a(-2)
a(0)
a(2)
a(3)
a(4)
a(6)

#Evaluación de la gráfica:

plotFun(a(x)~x, x.lim=range(0,10)) #Dibujar el gráfico incluyendo rango
#B) A positive sloping line

##############################################################

#2)
b1= (5* exp(.2*x) ~x)
b=mosaicCalc::D(5* exp(.2*x) ~x)
b
#Evaluación de la función en puntos
b(-5)
b(-2)
b(-1)
b(0)
b(1)
b(2)
b(5)
#Evaluación de la gráfica:

plotFun(b1, x.lim=range(0,10))
plotFun(b(x)~x, x.lim=range(0,10))
#B)Same exponential shape, but different initial values.

##############################################################

#3)
c=mosaicCalc::D(exp(-(x^2)) ~x)
c
plotFun(c(x)~x, x.lim=range(-2,2))
#C)A positive wave followed by a negative wave.

##############################################################

#4)
d=mosaicCalc::D(fred^2~ginger)
#Es 0 siempre

##############################################################

#5)
e=mosaicCalc::D(cos(2*t) ~t)
e
e2=mosaicCalc::D(e(t)~t) #segunda derivada
e2
e3=mosaicCalc::D(e2(t)~t) #tercera derivada
e3
#La tercera derivada es 8*sin(2*t)
e4=mosaicCalc::D(e3(t)~t) #cuarta derivada
e4
#La cuarta derivada es 16*cos(2*t)

##############################################################

#6)
f=mosaicCalc::D(cos(2*x^2)-x ~x+x+x+x)
f
curve(f,0,5)
#C) A cosine whose amplitude increasesand whose perioddecreases as t gets bigger.

#La cuarta derivada es una expresión con senos, cosenos, cuadrados, sumas y productos.

##############################################################

#7)

g=function(x,y) x*sin(y)

gx=mosaicCalc::D(g(x,y)~x) #Derivada respecto X
gx

gy=mosaicCalc::D(g(x,y)~y) #Derivada respecto Y
gy

gxx=mosaicCalc::D(gx(x,y)~x) #Segunda derivada respecto X
gxx

gyy=mosaicCalc::D(gy(x,y)~y) #Segunda derivada respecto Y
gyy

gxy=mosaicCalc::D(gx(x,y)~y) #Segunda derivada respecto de X e Y
gxy

gyx=mosaicCalc::D(gy(x,y)~x) #Segunda derivada respecto de Y y X
gyx


#¿Son las derivadas respecto de X e Y  idénticas?
gx(0,3)
gy(0,3)
#No son idénticas ya que arrojan diferentes al introducir el mismo valor.


#¿Son las segundas derivadas respecto X dos veces y respecto Y dos veces idénticas?
gxx(10,10)
gyy(10,10)
#No son la misma función ya ofrecen resultados diferentes.


#¿Son la misma función la segunda derivada de Y respecto de X o la de X respecto de la de Y?
#Sí, da igual en que orden hagas la derivación, que dan la misma función como resultado final.