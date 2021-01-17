from gurobipy import *


def courses(students, course):
    courses_list = []
    for student in students:
        if course[student] not in courses_list:
            courses_list.append(course[student])

    return courses_list


def solve(students, gender, preference, average_grade, course, premium, n_matches, max_same_course, grade_difference,
          score):
    model = Model("tindor")

    model.setParam( 'OutputFlag', False )
    model.modelSense = GRB.MAXIMIZE

    x = {}
    for student1 in students:
        for student2 in students:
            if student1 != student2:
                x[student1, student2] = model.addVar(vtype=GRB.BINARY, obj=score(student1, student2),
                                                     name="x#" + student1 + "#" + student2)

    model.update()

    # amount of matching and tindor premium
    for student1 in students:
        model.addConstr(
            quicksum(x[student1, student2] for student2 in students if student2 != student1) == n_matches + n_matches *
            premium[student1], name="amount_matches#" + student1)

    # only a certain amount of matches per course
    for student1 in students:
        for c in courses(students, course):
            model.addConstr(quicksum((course[student2] == c) * x[student1, student2] for student2 in students if
                                     student1 != student2) <= max_same_course, name="max_same_course#" + student1)

    # elite level
    for student1 in students:
        for student2 in students:
            if student1 != student2:
                if abs(average_grade[student1] - average_grade[student2]) > grade_difference:
                    model.addConstr(x[student1, student2] == 0)

    for student1 in students:
        for student2 in students:
            if student1 != student2:
                # symmetric matching
                model.addConstr(x[student1, student2] == x[student2, student1],
                                name="symmetric_matching#" + student1 + "#" + student2)
                # only when preferences are given
                if not gender[student1] in preference[student2]:
                    model.addConstr(x[student1, student2] == 0,
                                    name="not_matching_preferences#" + student1 + "#" + student2)
    # optimize
    model.optimize()

    matches = {}
    # print solution
    if model.status == GRB.OPTIMAL:
        for student1 in students:
            matches[student1] = []
            for student2 in students:
                if student1 != student2:
                    if x[student1, student2].x > 0.5:
                        matches[student1].append(student2)
                        # print('%s (%g) hat ein Match mit %s (%g)' % (
                        # student1, average_grade[student1], student2, average_grade[student2]))
    else:
        print('Keine Optimalloesung gefunden. Status: %i' % (model.status))

    return matches
