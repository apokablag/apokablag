Задача №1
Обменник. Создать скрипт который будет запускаться из консоли 1 раз из консоли, выдавать результат и зарываться.
    1. На вход обменнику вводишь количество денег int.
    2. На выходе в консоль выводится отввет в таком виде:
                "Ты ввёл int (Валюта)"
                "конвертированная сумма в USD = int"
    3. Валюту пользователя определите сами.

def converter():
    money = int(input())
    usd = money / 2.55
    print('Ты ввел', money, 'рублей')
    print('конвертированная сумма в USD=', usd)
converter()

Задача №2
Обменник. Создать скрипт который будет запускаться из консоли 1 раз из консоли, выдавать результат и зарываться.
    1. На вход обменнику вводишь количество денег int.
    2. На выходе в консоль выводится отввет в таком виде:
                "Ты ввёл int (Валюта)"
                "Конвертированная сумма в USD = int"
                "Конвертированная сумма в EUR = int"
                "Конвертированная сумма в CHF = int"
                "Конвертированная сумма в GBP = int"
                "Конвертированная сумма в CNY = int"
    3. Валюту пользователя определите сами.

def calculate():
    byn = int(input('Введите количество BYN: '))
    usd = byn / 2.55
    euro = byn / 2.88
    chf = byn / 5
    gbp = byn / 3.3
    cny = byn / 3.8

    print("Ты ввёл BYN =", byn)
    print("Конвертированная сумма в USD =", usd)
    print("Конвертированная сумма в EUR =", euro)
    print("Конвертированная сумма в CHF =", chf)
    print("Конвертированная сумма в GBP =", gbp)
    print("Конвертированная сумма в CNY =", cny)
calculate()


Задача 3:

def converter():
    while True:
        byn = input('Введите количество BYN: ')

        if byn.isalpha():
            print('Необходиммо вводить число')
        elif len(byn) == 0:
            print('Вы ничего не ввели')
        elif int(byn) <= 0:
            print('Введите корректные значения, больше нуля')
        else:
            usd = int(byn) / 2.55
            euro = int(byn) / 2.88
            chf = int(byn) / 5
            gbp = int(byn) / 3.3
            cny = int(byn) / 3.8

            print("Ты ввёл BYN =", byn)
            print("Конвертированная сумма в USD =", usd)
            print("Конвертированная сумма в EUR =", euro)
            print("Конвертированная сумма в CHF =", chf)
            print("Конвертированная сумма в GBP =", gbp)
            print("Конвертированная сумма в CNY =", cny)
            break
converter()

Задача №4
Обменник. Скрипт запускается в консоли и работает постоянно. Остановится нажатием ctrl+c.
    1. Скрипт сначала выводит "Выберите валюту из ['USD','EUR','CHF','GBP','CNY']"
    2. Пользователь вводит один из 5 вариантов ['USD','EUR','CHF','GBP','CNY']
    3. Потом Скрипт выводит "Введите сумму"
    4. Пользователь вводит сумму int
    5. Скрипт выводит:
            "Вы ввели сумму int и валюту "Валюта" "
            "конвертированная сумма в "Валюта" = int"
    6. Скипт должен выдать сообщение
                "Введите положительное число." Если число меньше 0.
                "Вы ввели не число. Введите число." Если введены буквы.
                "Вы ввели пустое поле. Введите число." Если введено пустое значение.
    7. После сообщеня об ошибке, скрипт должен автоматом вернуться к шагу 1.
    8. Валюту пользователя определите сами.

def counter():
    while True:
        choice = input("Выберите валюту из ['USD','EUR','CHF','GBP','CNY']: ")
        if choice == 'USD' or choice == 'usd':
            value = input("Введите сумму BYN: ")
            if value.isalpha():
                print("Вы ввели не число. Введите число.")
            elif len(value) == 0:
                print("Вы ввели пустое поле. Введите число.")
            elif int(value) <= 0:
                print("Введите положительное число." )
            else:
                usd = int(value) / 2.55
                print("Ты ввёл BYN =", value, " и валюту ", choice.upper())
                print("Конвертированная сумма в " + choice.upper() + " = " + str(usd))

        if choice == 'EUR' or choice == 'eur':
            value = input("Введите сумму BYN: ")
            if value.isalpha():
                print("Вы ввели не число. Введите число.")
            elif len(value) == 0:
                print("Вы ввели пустое поле. Введите число.")
            elif int(value) <= 0:
                print("Введите положительное число." )
            else:
                eur = int(value) / 2.88
                print("Ты ввёл BYN =", value, " и валюту ", choice.upper())
                print("Конвертированная сумма в " + choice.upper() + " = " + str(eur))

        if choice == 'chf' or choice == 'CHF':
            value = input("Введите сумму BYN: ")
            if value.isalpha():
                print("Вы ввели не число. Введите число.")
            elif len(value) == 0:
                print("Вы ввели пустое поле. Введите число.")
            elif int(value) <= 0:
                print("Введите положительное число." )
            else:
                chf = int(value) / 5
                print("Ты ввёл BYN =", value, " и валюту ", choice.upper())
                print("Конвертированная сумма в " + choice.upper() + " = " + str(chf))

        if choice == 'gbp' or choice == 'GBP':
            value = input("Введите сумму BYN: ")
            if value.isalpha():
                print("Вы ввели не число. Введите число.")
            elif len(value) == 0:
                print("Вы ввели пустое поле. Введите число.")
            elif int(value) <= 0:
                print("Введите положительное число." )
            else:
                gbp = int(value) / 3.3
                print("Ты ввёл BYN =", value, " и валюту ", choice.upper())
                print("Конвертированная сумма в " + choice.upper() + " = " + str(gbp))

        if choice == 'cny' or choice == 'CNY':
            value = input("Введите сумму BYN: ")
            if value.isalpha():
                print("Вы ввели не число. Введите число.")
            elif len(value) == 0:
                print("Вы ввели пустое поле. Введите число.")
            elif int(value) <= 0:
                print("Введите положительное число.")
            else:
                cny = int(value) / 3.8
                print("Ты ввёл BYN =", value, " и валюту ", choice.upper())
                print("Конвертированная сумма в " + choice.upper() + " = " + str(cny))

counter()

2 вариант

list = ['USD','EUR','CHF','GBP','CNY']

choice = input("Выберите валюту из ['USD','EUR','CHF','GBP','CNY']: ")
for i in list:
    if i == choice or i == choice.upper():
        byn = input("Введите сумму BYN: ")
        if byn.isalpha():
            print("Вы ввели не число. Введите число.")
        elif len(byn) == 0:
            print("Вы ввели пустое поле. Введите число.")
        elif int(byn) <= 0:
            print("Введите положительное число." )

def change(byn):
    usd = int(byn) / 2.5
    eur = int(byn) / 2.88
    chf = int(byn) / 5
    gbp = int(byn) / 3.3
    cny = int(byn) / 3.8
    print(usd)
    print(eur)
    print(chf)
    print(gbp)
    print(cny)
change(byn)

