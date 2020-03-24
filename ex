def quad_equation(a, b, c):
    if c == 0 and b == 0:  # ax^2=0
        print("0")
    elif b == 0:  # ax^2+c=0
        if -c > 0:
            c = -c / a
            x1 = c**0.5
            x2 = -x1
            print('%.5f' % x1, '%.5f' % x2)
        else:
            print ("Нет действительных корней")
    elif c == 0:  # ax^2+b=0
        x1 = 0
        x2 = -b / a
        print(x1, '%.5f' % x2)
    else:  # ax^2+bx+c=0
        D = b**2 + (-4*a*c)
        D1 = D**0.5
        if D < 0 :
            print("Нет действительных корней")
        elif D == 0:
            x = -b/(2*a)
            print(x)
        else:
            x1 = (-b + D1)/(2*a)
            x2 = (-b - D1)/(2*a)
            print('%.5f' % x1, '%.5f' % x2)


a, b, c = list(map(float, input('Введите числа a, b, c: ').split()))
quad_equation(a, b, c)
