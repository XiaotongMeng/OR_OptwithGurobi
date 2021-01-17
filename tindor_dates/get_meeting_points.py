# coding=utf-8
import hashlib
from gurobipy import *

def score(student1, student2, meeting_point):
    if student1 == student2:
        return 0
    return int(hashlib.sha1((student1 + meeting_point).encode('utf-8')).hexdigest(), 16) % (10 ** 4) + int(
        hashlib.sha1((student2 + meeting_point).encode('utf-8')).hexdigest(), 16) % (10 ** 4)


def solve(matches, meeting_points):

    model = Model('meeting_points')

    points = {}
    for student in matches:
        for match in matches[student]:
            for meeting_point in meeting_points:
                points[student, match, meeting_point] = model.addVar(vtype=GRB.BINARY, obj=score(student, match, meeting_point))

    model.setParam( 'OutputFlag', False )
    model.ModelSense = GRB.MAXIMIZE

    model.update()

    #symetric
    for student in matches:
        for match in matches[student]:
            for meeting_point in meeting_points:
                model.addConstr(points[student, match, meeting_point] == points[match, student, meeting_point])

    # one meeting point per match
    for student in matches:
        for match in matches[student]:
            model.addConstr(quicksum(points[student, match, meeting_point] for meeting_point in meeting_points) == 1)

    # visit every meeting point maximum ones:
    for student in matches:
        for meeting_point in meeting_points:
            model.addConstr(quicksum(points[student, match, meeting_point] for match in matches[student]) <= 1)

    model.optimize()

    mp_result = {}
    for student in matches:
        for match in matches[student]:
            for meeting_point in meeting_points:
                if points[student, match, meeting_point].x > 0.5:
                    mp_result[student, match] = points[match, student] = meeting_point

    return mp_result
    