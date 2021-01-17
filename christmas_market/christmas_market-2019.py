# coding=utf-8

from gurobipy import *

import christmas_market

stands, temperature, amount, alcohol_content, sugar, calorific_value, price, cup_type = multidict({
    'Ratskeller': [63.0, 210, 9.24, 107.7, 197, 3.50, 'glass'],
    'Wolke 7': [73.7, 213, 9.13, 111.4, 202, 3.50, 'glass'],
    'Kiosk Markt': [61.5, 190, 9.61, 108.8, 183, 2.00, 'styrofoam'],
    'Extrablatt': [69.0, 222, 9.47, 107.0, 191, 3.00, 'ceramic'],
    'Goldener Schwan': [71.3, 192, 9.25, 102.9, 177, 3.50, 'ceramic'],
    'Dorn Delikatesse': [61.2, 216, 8.90, 11.4, 202, 3.50, 'ceramic'],
    'Barrique': [77.5, 180, 13.62, 77, 191, 3.50, 'ceramic'],
    'Oecher Gluehweintreff': [68.54, 200, 9.57, 97.4, 183, 3.50, 'plastic'],
    'Hexenhof': [67.5, 200, 9.34, 66.8, 157, 3.50, 'ceramic'],
    'Hanswurst': [70.4, 226, 9.31, 10.3, 215, 3.50, 'ceramic'],
    'Huette 16': [72.2, 216, 10.81, 124.2, 235, 3.50, 'ceramic'],
    'RWTH': [61.3, 224, 8.11, 107.2, 195, 2.00, 'glass'],
})

persons, budget, min_wine_total, environment = multidict({
    'Lucian': [50, 10, False],
    'Paul': [30, 5, True],
    'Tim': [20, 4, False],
    'Heiko': [10, 3, True],
    'Anna': [20, 5, False],
    'Laura': [10, 3, True],
    'Kevin': [15, 4, True]
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
