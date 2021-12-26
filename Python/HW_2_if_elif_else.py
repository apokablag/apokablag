import random
# 1) Создать 2 переменных типа String с разными значениями
# 2) Создать 4 переменных типа Integer с разными значениями
# 3) Создать 3 переменных типа Float с разными значениями
str1 = 'Hello'
str2 = 'World'
int1 = 6
int2 = 100
int3 = 20
int4 = 5
fl1 = 2.5
fl2 = 3.3
fl3 = 5.2

# 4) Сделать скрипт используя функцию input().
#     1. Функция должна на вход принимать целое число.
#     2. Выводить должна "Вы вели число = (введённое число) которое (меньше/больше/равно) 30"

body1 = int(input('Введите целое число '))
print('Вы ввели целое число = ' + str(body1) + ' которое(меньше/больше/равно)30')

# 5) Сделать скрипт используя функцию input().
#     1. Функция должна на вход принимать целое число.
#     2. Внутри функции должно сгенерироваться рандомное целое число (import random)...(random.randint(1, 100))
#     3. Выводить должна "Вы вели число = (введённое число) которое (меньше/больше/равно) сгенерированному числу"

def numbers():
    body2 = int(input())
    body3 = random.randint(1, 100)
    if body2 > body3:
        print('Вы ввели целое число = ' + str(body2) + ' которое больше ' + str(body3))
    elif body2 < body3:
        print('Вы ввели целое число = ' + str(body2) + ' которое меньше ' + str(body3))
    else:
        print('Вы ввели целое число = ' + str(body2) + ' которое равно ' + str(body3))
numbers()

# 6) Сделать скрипт используя функцию input().
#     1. Функция должна на вход принимать целое число.
#     2. Внутри функции должно сгенерироваться рандомное 2 целых числа (import random)...(random.randint(1, 100))
#     3. Выводить должна "Вы вели число = (введённое число) которое (меньше/больше/равно и меньше/больше/равно) сгенерированному числу"
def finding():
    num = int(input())
    rand_num1 = random.randint(1,100)
    rand_num2 = random.randint(1,100)
    print(rand_num1, rand_num2)
    if num > rand_num1 and num > rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое больше ' + str(rand_num1) + ' и больше ' + str(rand_num2))
    elif num > rand_num1 and num < rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое больше ' + str(rand_num1) + ' и меньше ' + str(rand_num2))
    elif num > rand_num1 and num == rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое больше ' + str(rand_num1) + ' и равно ' + str(rand_num2))
    elif num < rand_num1 and num < rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое меньше ' + str(rand_num1) + ' и меньше ' + str(rand_num2))
    elif num < rand_num1 and num > rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое меньше ' + str(rand_num1) + ' и больше ' + str(rand_num2))
    elif num < rand_num1 and num == rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое меньше ' + str(rand_num1) + ' и равно ' + str(rand_num2))
    elif num == rand_num1 and num == rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое равно ' + str(rand_num1) + ' и равно ' + str(rand_num2))
    elif num == rand_num1 and num < rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое равно ' + str(rand_num1) + ' и меньше ' + str(rand_num2))
    elif num == rand_num1 and num > rand_num2:
        print('Вы ввели целое число = ' + str(num) + ' которое равно ' + str(rand_num1) + ' и больше ' + str(rand_num2))

finding()





