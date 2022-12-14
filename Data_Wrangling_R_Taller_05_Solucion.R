# 1
# La secuencia de Fibonacci es una sucesi?n definida por recurrencia. 
# Esto significa que para calcular un t?rmino de la sucesi?n se necesitan los t?rminos que le preceden. 
# A continuaci?n se presentan algunos elementos de la secuencia:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, . 
# Esta secuencia fue descrita por el matem?tico italiano Leonardo de Pisa (Fibonacci) 
# quien naci? en 1170 y muri? en 1240, mucho antes de ser conocida en occidente, 
# la sucesi?n de Fibonacci ya estaba descrita en la matem?tica india, en conexi?n con la prosodia s?nscrita. 
# La sucesi?n tiene m?ltiples aplicaciones en inform?tica y buena parte de la fascinaci?n que suscita se 
# debe a que su proporci?n se manifiesta tambi?n en la naturaleza, como en la disposici?n de las ramas en los ?rboles, 
# en la de las hojas en los tallos y en el crecimiento en espiral de las conchas de los caracoles, entre otros. 
# La siguiente funci?n en R, llamada fib, permite calcular un valores espec?ficos de la Secuencia de Fibonacci:
# Obtener el valor del t?rmino n?mero 25 de la secuencia.
# Expresar el resultado sin separador de miles (","). Por ejemplo, si el resultado es "25,748" solo debe debe ingresar el valor "25748".
fib <- function(n) {
        if (n == 1) {
                return(0)
        }
        if(n == 2) {
                return(1)
        }
        if(n > 2) {
                return( fib(n - 1) + fib(n - 2) )
        }
}

fib(25)

# 2
# Obtener la suma de los t?rminos 10 a 20 de la secuencia.
# Expresar el resultado sin separador de miles (","). Por ejemplo, si el resultado es "25,748" solo debe debe ingresar el valor "25748".
fib(10)+fib(11)+fib(12)+fib(13)+fib(14)+fib(15)+fib(16)+fib(17)+fib(18)+fib(19)+fib(20)

# 3
# Considerar la siguiente funci?n: f (x) = 1 + 2*x - x^2
# Utilizando la funci?n optimise en R, encontrar el valor de x en el intervalo de -1 a 3 donde la funci?n alcanza el valor m?ximo.
# Graficar la funci?n y comprobar visualmente el resultado.
# f = function (x) 1 + 2*x - x^2
optimise(f, interval = c(-1, 13), maximum = TRUE)
windows()
curve(expr = f,from = -1, to = 3)

# 4
# Usando la semilla 1234, generar 10,000 datos provenientes de una distribuci?n Normal con media 10 (mean) y desviaci?n est?ndar 1 (sd).
# Calcular el percentil 25 de este conjunto de datos.
# Expresar el resultado con tres cifras decimales. Por ejemplo, si el resultado es "37.416" solo debe debe ingresar el valor "37.416".
set.seed(1234)
x = rnorm(n = 10000, mean = 10, sd = 1)
quantile(x = x, probs = 0.25)