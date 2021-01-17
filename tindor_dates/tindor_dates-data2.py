# coding=utf-8
import hashlib
from gurobipy import *

import tindor
import get_meeting_points
import tindor_dates


# patented tindOR scoring algorithm, don't steal it!
def score(student1, student2):
    if student1 == student2:
        return 0
    return int(hashlib.sha1(student1.encode('utf-8')).hexdigest(), 16) % (10 ** 4) + int(
        hashlib.sha1(student2.encode('utf-8')).hexdigest(), 16) % (10 ** 4)


def meeting_time(student1, student2):
    if student1 == student2:
        return 0
    return score(student1, student2) / 10000



students, gender, preference, average_grade, course, premium, walking_speed = multidict({
    "Emma": ["w", ["m"], 1.0, "Business Administration", False, 4],
    "Hanna": ["d", ["m", "w", "d"], 2.7, "Business Administration and Engineering - Mechanical Engineering", True, 5],
    "Mia": ["w", ["m"], 2.0, "Mathematics", False, 5.6],
    "Lelli": ["w", ['m'], 1.3, "Business Administration", False, 5.5],
    "Sofia": ["w", ["w", "d"], 2.3, "Computer Science", False, 4.5],
    "Lina": ["w", ["m"], 2.3, "Linguistics and communication sciences", False, 5],
    "Mila": ["w", ["m"], 2.7, "Biology", True, 5],
    "Tanja": ["w", ["m"], 2.7, "Biology", True, 4.9],
    "Lea": ["w", ["m"], 2.0, "Computer Science", False, 5.1],
    "Marie": ["d", ["d"], 2.7, "Chemistry", False, 5.2],
    "Ella": ["w", ["m"], 2.4, "Applied Geosciences", False, 4.7],
    "Ben": ["m", ["m", "d"], 2.3, "Mathematics", False, 6],
    "Leon": ["m", ["w"], 1.0, "Business Administration", False, 4.8],
    "Paul": ["d", ["d", "m"], 3.7, "Computer Science", False, 5.5],
    "Jonas": ["m", ["w"], 3.3, "Business Administration and Engineering - Electrical Power Engineering", True, 4.5],
    "Felix": ["m", ["m"], 2.0, "Business Administration and Engineering - Civil Engineering", False, 4.8],
    "Noah": ["m", ["w"], 2.7, "CES", False, 5],
    "Marco": ["m", ["w"], 2.7, "CES", False, 5],
    "Finn": ["d", ["m", "w", "d"], 1.3, "Digital Media Communication", False, 4.9],
    "Luis": ["m", ["w"], 2.3, "Data Science", False, 5.2],
    "Elias": ["m", ["w", "m"], 1.3, "Biology", False, 5],
    "Lukas": ["m", ["w"], 2.7, "Mechanical Engineering", False, 4],
    "Günther": ["m", ["w", "d"], 1.7, "Mechanical Engineering", False, 5.5],
    "Frank": ["m", ["w"], 1.7, "Mechanical Engineering", True, 4.5],
})

n_matches = 2

max_same_course = 2

grade_difference = 2.5

# getting the matches for the given set of students
matches = tindor.solve(students, gender, preference, average_grade, course, premium, n_matches, max_same_course,
                       grade_difference, score)

meeting_points, opening_time, closing_time = multidict({
    "Leni liebt Kaffee": [0, 540],
    "Lulus Coffee": [0, 570],
    "Cafe Hase": [0, 570],
    "Extrablatt": [0, 780],
    "Sowiso": [60, 780],
    "Guinness House": [540, 780],
    "Die Kiste": [660, 780],
    "Aposto": [120, 780],
    "Lousberg": [0, 780],
    "Frankenberger Park": [0, 780],
    "Pennerrondell": [0, 780],
    "chair of Operations Research": [0, 540]
})

# getting the meeting points for the dates
meeting_point = get_meeting_points.solve(matches, meeting_points)

# distance matrix from one location to another
distance = {(i, j): 0 for i in meeting_points + ["dummy"] for j in meeting_points + ["dummy"]}
distance["Leni liebt Kaffee", "Lulus Kaffee"] = 0.4
distance["Leni liebt Kaffee", "Cafe Hase"] = 1.8
distance["Leni liebt Kaffee", "Extrablatt"] = 0.24
distance["Leni liebt Kaffee", "Sowiso"] = 0.85
distance["Leni liebt Kaffee", "Guinness House"] = 0.4
distance["Leni liebt Kaffee", "Die Kiste"] = 0.11
distance["Leni liebt Kaffee", "Aposto"] = 0.45
distance["Leni liebt Kaffee", "Lousberg"] = 1.8
distance["Leni liebt Kaffee", "Frankenberger Park"] = 1.9
distance["Leni liebt Kaffee", "Pennerrondell"] = 0.85
distance["Leni liebt Kaffee", "chair of Operations Research"] = 2.7

distance["Lulus Coffee", "Leni liebt Kaffee"] = 0.4
distance["Lulus Coffee", "Cafe Hase"] = 2.1
distance["Lulus Coffee", "Extrablatt"] = 0.29
distance["Lulus Coffee", "Sowiso"] = 0.75
distance["Lulus Coffee", "Guinness House"] = 0.35
distance["Lulus Coffee", "Die Kiste"] = 0.35
distance["Lulus Coffee", "Aposto"] = 0.75
distance["Lulus Coffee", "Lousberg"] = 1.5
distance["Lulus Coffee", "Frankenberger Park"] = 2.1
distance["Lulus Coffee", "Pennerrondell"] = 0.85
distance["Lulus Coffee", "chair of Operations Research"] = 2.6

distance["Cafe Hase", "Leni liebt Kaffee"] = 1.8
distance["Cafe Hase", "Lulus Coffee"] = 2.1
distance["Cafe Hase", "Extrablatt"] = 2.1
distance["Cafe Hase", "Sowiso"] = 2.7
distance["Cafe Hase", "Guinness House"] = 2.3
distance["Cafe Hase", "Die Kiste"] = 2
distance["Cafe Hase", "Aposto"] = 1.7
distance["Cafe Hase", "Lousberg"] = 3.4
distance["Cafe Hase", "Frankenberger Park"] = 0.29
distance["Cafe Hase", "Pennerrondell"] = 2.6
distance["Cafe Hase", "chair of Operations Research"] = 4.6

distance["Extrablatt", "Leni liebt Kaffee"] = 0.24
distance["Extrablatt", "Lulus Coffee"] = 0.29
distance["Extrablatt", "Cafe Hase"] = 2.1
distance["Extrablatt", "Sowiso"] = 0.6
distance["Extrablatt", "Guinness House"] = 0.19
distance["Extrablatt", "Die Kiste"] = 0.24
distance["Extrablatt", "Aposto"] = 0.7
distance["Extrablatt", "Lousberg"] = 1.5
distance["Extrablatt", "Frankenberger Park"] = 2.1
distance["Extrablatt", "Pennerrondell"] = 0.65
distance["Extrablatt", "chair of Operations Research"] = 2.5

distance["Sowiso", "Leni liebt Kaffee"] = 0.24
distance["Sowiso", "Lulus Coffee"] = 0.85
distance["Sowiso", "Cafe Hase"] = 2.7
distance["Sowiso", "Extrablatt"] = 0.6
distance["Sowiso", "Guinness House"] = 0.5
distance["Sowiso", "Die Kiste"] = 0.85
distance["Sowiso", "Aposto"] = 1.3
distance["Sowiso", "Lousberg"] = 1.0
distance["Sowiso", "Frankenberger Park"] = 2.7
distance["Sowiso", "Pennerrondell"] = 0.18
distance["Sowiso", "chair of Operations Research"] = 2.0

distance["Guinness House", "Leni liebt Kaffee"] = 0.4
distance["Guinness House", "Lulus Coffee"] = 0.35
distance["Guinness House", "Cafe Hase"] = 2.3
distance["Guinness House", "Extrablatt"] = 0.19
distance["Guinness House", "Sowiso"] = 0.5
distance["Guinness House", "Die Kiste"] = 0.4
distance["Guinness House", "Aposto"] = 0.85
distance["Guinness House", "Lousberg"] = 1.4
distance["Guinness House", "Frankenberger Park"] = 2.3
distance["Guinness House", "Pennerrondell"] = 0.55
distance["Guinness House", "chair of Operations Research"] = 2.4

distance["Die Kiste", "Leni liebt Kaffee"] = 0.11
distance["Die Kiste", "Lulus Coffee"] = 0.35
distance["Die Kiste", "Cafe Hase"] = 2.0
distance["Die Kiste", "Extrablatt"] = 0.24
distance["Die Kiste", "Sowiso"] = 0.85
distance["Die Kiste", "Guinness House"] = 0.4
distance["Die Kiste", "Aposto"] = 0.55
distance["Die Kiste", "Lousberg"] = 1.8
distance["Die Kiste", "Frankenberger Park"] = 2.0
distance["Die Kiste", "Pennerrondell"] = 0.85
distance["Die Kiste", "chair of Operations Research"] = 2.7

distance["Aposto", "Leni liebt Kaffee"] = 0.45
distance["Aposto", "Lulus Coffee"] = 0.75
distance["Aposto", "Cafe Hase"] = 1.7
distance["Aposto", "Extrablatt"] = 0.70
distance["Aposto", "Sowiso"] = 1.2
distance["Aposto", "Guinness House"] = 0.85
distance["Aposto", "Die Kiste"] = 0.55
distance["Aposto", "Lousberg"] = 2.2
distance["Aposto", "Frankenberger Park"] = 1.6
distance["Aposto", "Pennerrondell"] = 1.3
distance["Aposto", "chair of Operations Research"] = 3.0

distance["Lousberg", "Leni liebt Kaffee"] = 1.8
distance["Lousberg", "Lulus Coffee"] = 1.5
distance["Lousberg", "Cafe Hase"] = 3.4
distance["Lousberg", "Extrablatt"] = 1.5
distance["Lousberg", "Sowiso"] = 1.0
distance["Lousberg", "Guinness House"] = 1.4
distance["Lousberg", "Die Kiste"] = 1.8
distance["Lousberg", "Aposto"] = 2.2
distance["Lousberg", "Frankenberger Park"] = 3.4
distance["Lousberg", "Pennerrondell"] = 1.1
distance["Lousberg", "chair of Operations Research"] = 2.5

distance["Frankenberger Park", "Leni liebt Kaffee"] = 1.8
distance["Frankenberger Park", "Lulus Coffee"] = 2.1
distance["Frankenberger Park", "Cafe Hase"] = 0.29
distance["Frankenberger Park", "Extrablatt"] = 2.1
distance["Frankenberger Park", "Sowiso"] = 2.7
distance["Frankenberger Park", "Guinness House"] = 2.3
distance["Frankenberger Park", "Die Kiste"] = 2.0
distance["Frankenberger Park", "Aposto"] = 1.6
distance["Frankenberger Park", "Lousberg"] = 3.4
distance["Frankenberger Park", "Pennerrondell"] = 2.6
distance["Frankenberger Park", "chair of Operations Research"] = 4.6

distance["Pennerrondell", "Leni liebt Kaffee"] = 0.85
distance["Pennerrondell", "Lulus Coffee"] = 0.85
distance["Pennerrondell", "Cafe Hase"] = 2.6
distance["Pennerrondell", "Extrablatt"] = 0.65
distance["Pennerrondell", "Sowiso"] = 0.18
distance["Pennerrondell", "Guinness House"] = 0.55
distance["Pennerrondell", "Die Kiste"] = 0.85
distance["Pennerrondell", "Aposto"] = 1.3
distance["Pennerrondell", "Lousberg"] = 1.1
distance["Pennerrondell", "Frankenberger Park"] = 2.6
distance["Pennerrondell", "chair of Operations Research"] = 2.0

distance["chair of Operations Research", "Leni liebt Kaffee"] = 2.7
distance["chair of Operations Research", "Lulus Coffee"] = 2.6
distance["chair of Operations Research", "Cafe Hase"] = 4.6
distance["chair of Operations Research", "Extrablatt"] = 2.5
distance["chair of Operations Research", "Sowiso"] = 1.9
distance["chair of Operations Research", "Guinness House"] = 2.4
distance["chair of Operations Research", "Die Kiste"] = 2.7
distance["chair of Operations Research", "Aposto"] = 3.0
distance["chair of Operations Research", "Lousberg"] = 2.5
distance["chair of Operations Research", "Frankenberger Park"] = 4.6
distance["chair of Operations Research", "Pennerrondell"] = 2.0

tindor_dates.solve(students, matches, meeting_point, meeting_time, distance, walking_speed,
                   opening_time,
                   closing_time)
