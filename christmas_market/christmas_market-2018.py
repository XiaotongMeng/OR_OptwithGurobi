# coding=utf-8

from gurobipy import *

import christmas_market

stands, temperature, amount, alcohol_content, sugar, calorific_value, price, cup_type = multidict({
    'Huette 16': [75.4, 248, 10.3, 136, 222.36, 3.00, 'ceramic'],
    'Hanswurst': [69.0, 230, 0.9, 118, 192.71, 3.00, 'ceramic'],
    'Hexenhof': [68.1, 220, 9.8, 64, 149.63, 3.00, 'ceramic'],
    'Oecher Gluehweintreff': [68.5, 234, 8.0, 91, 160.40, 3.00, 'plastic'],
    'Wolke 7': [75.1, 218, 8.8, 101, 177.26, 3.00, 'glass'],
    'Ratskeller': [72.5, 210, 8.2, 88, 160.37, 3.00, 'glass'],
    'Extrablatt': [74.0, 220, 9.0, 96, 192.08, 3.00, 'ceramic'],
    'Karls Icebar': [61.8, 212, 10.3, 99, 192.75, 3.00, 'ceramic'],
    'Goldener Schwan': [68.1, 210, 7.5, 76, 143.24, 3.50, 'ceramic'],
    'Goldenes Einhorn': [70.8, 200, 8.6, 91, 167.50, 3.00, 'ceramic'],
    'Barrique': [72.0, 202, 12.4, 78, 200.14, 3.00, 'ceramic'],
    'Sausalitos': [71.8, 218, 7.9, 100, 166.31, 1.99, 'ceramic'],
    'Kiosk Markt': [68.6, 190, 9.0, 100, 178.76, 1.50, 'styrofoam'],
    'Koenig City': [64.1, 195, 9.6, 122, 202.19, 3.50, 'ceramic'],
    'Zumfeld Gastronomie': [62.0, 212, 8.8, 96, 172.88, 3.00, 'ceramic']
})

persons, budget, min_wine_total, environment = multidict({
    'Lucian': [50, 10, False],
    'Paul': [30, 5, True],
    'Tim': [20, 4, False],
    'Heiko': [10, 3, True],
    'Anna': [20, 5, False],
    'Laura': [10, 3, True],
    'Kevin': [15, 6, True]
})

max_wine_per_stand = {(p, s): 3 for p in persons for s in stands}
max_wine_per_stand['Lucian', 'Extrablatt'] = 0
max_wine_per_stand['Kevin', 'Extrablatt'] = 0
max_wine_per_stand['Lucian', 'Huette 16'] = 5
max_wine_per_stand['Anna', 'Wolke 7'] = 4
max_wine_per_stand['Paul', 'Barrique'] = 2

christmas_market.solve(stands,
                       temperature,
                       amount,
                       alcohol_content,
                       sugar,
                       calorific_value,
                       price,
                       cup_type,
                       persons,
                       budget,
                       min_wine_total,
                       environment,
                       max_wine_per_stand)
