"""Ejercicio: Dado un número, imprime si es positivo o negativo"""
"""x=2
if x > 0:
    print ('positivo')
else:
    print ('negativo')
 Ejercicio: Dado un número, imprime si es par o impar
x =6
if x %2 ==0:
    print('par')
else:
    print('impar')"""
""" 3. Ejercicio: Dado tres números, encuentra y muestra el mayor de ellos.
a,b,c=5,7,9
mayor= max(a,b,c)
print (mayor)"""
"""Ejercicio: Imprime los números del 1 al 10 usando un bucle for
for x in range(1,11):
    print (x)"""
"""2. Ejercicio: Imprime los números pares del 1 al 20 usando un bucle while .
x=1
while x<=20:
    if x%2==0:
        print ('el numero',x ,'es par')
    x=x+1"""
"""3. Ejercicio: Usa un bucle para calcular la suma de los números del 1 al 100
suma=0
for x in range (1,101):
    suma += x
print(suma)"""
""" Ejercicio: Define una función que tome dos números y retorne su suma
def suma(a,b):
    return (a +b)
print(suma(8,9))"""
"""2. Ejercicio: Defineuna función que tome un número y retorne su factorial."""

"""def factorial(numero):
    if numero <= 0:
        return 1
    factorial = 1
    while numero > 0:
        factorial = factorial * numero
        numero -= 1
    return factorial
print (factorial(3))"""
"""1. Crea una función para verificar si un número es par o impar y devuelva “Elnúmero es par” o “El número es impar” según corresponda.

def par_impar(n):
    if n %2==0:
        print('este numero es par')
    else:
        print('este numero es impar')
print(par_impar(14))"""

"""1. Crea una función a la que pases un número como argumento, calcule el factorial de ese número y haga print del resultado."""
"""def factorial(numero):
    if numero <= 0:
        return 1
    factorial = 1
    while numero > 0:
        factorial = factorial * numero
        numero -= 1
    return factorial
print (factorial(3))
def contar_digitos(numero): 
  return len(str(numero))
num = int(input("Ingresa un número: "))
print("La cantidad de dígitos es:", contar_digitos(num))"""
"""1. Dada una lista de números, crea una función que devuelva el número máximo de la lista.

def max(lista):
    return max(lista)
lista=[2,4,9]
print(max(lista))


def encontrar_maximo(lista):
   maximo = lista[0] 
   for numero in lista:
      if numero > maximo: 
        maximo = numero 
        return maximo 
numeros = [5, 12, 3, 8, 9]
print("El número máximo es:", encontrar_maximo(numeros))
Crea una función que, dado un número, sume los dígitos de ese número y
devuelva el resultado."""
"""def par_impar(n):
    if n %2==0:
        print('este numero es par')
    else:
        print('este numero es impar')
print(par_impar(14))"""
"""numero = 0
resultado =1
for i in range(1, numero+1):
     resultado = resultado *i
print(resultado)
def mcm(a, b):
     if a == 0 or b == 0:
         return 0
     else:
         maximo = max(a, b)
         while True:
             if maximo % a == 0 and maximo % b == 0:
              return maximo+=1
num1 = int(input("Ingrese el primer número: ")) 
num2 = int(input("Ingrese el segundo número: ")) 
print("El MCM es:", mcm(num1, num2))
palabra = input("Ingresa una palabra: ")
def contar_letras(palabra): 
    contador = 0 
    for letra in palabra:
         if letra.isalpha(): 
             contador += 1 
         return contador
print("La cantidad de letras es:", contar_letras(palabra))
def valor_absoluto(lista):
     for i in range(len(lista)): 
        lista[i] = abs(lista[i]) 
        return lista 
numeros = [5, -12, 3, -8, 9]
print("Lista con valores absolutos:", valor_absoluto(numeros))

 Crea una función que, dado un número, verifique si un número es primo.
def es_primo(numero):
     if numero <= 1: 
        return False
     for i in range(2, numero):
          if numero % i == 0: 
            return False
            return True
num = int(input("Ingresa un número: ")) 
if es_primo(num):
     print("Es un número primo.") 
else: print("No es un número primo.")
 Dados dos números, crea una función para encontrar el máximo común divisor
(MCD) de esos dos números"""
def mcd(a, b): 
    while b:
         a, b = b, a % b
    return a 
num1 = int(input("Ingresa el primer número: ")) 
num2 = int(input("Ingresa el segundo número: "))
print("El MCD es:", mcd(num1, num2))

















