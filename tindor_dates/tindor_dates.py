# coding=utf-8
from gurobipy import *


def get_meeting_points_for_student(student, matches, meeting_point):
    """
    function is returning all meetings points that a student has to visit
    :param student: the student for whom we want to get the meeting points
    :param matches: all matches that are given by the algorithm
    :param meeting_point: the given tuples of the meeting point of two students
    :return: all meeting points for student that he need to visit
    """

    meeting_points_for_student = []

    for match in matches[student]:
        meeting_points_for_student.append(meeting_point[student, match])

    return meeting_points_for_student


def get_meeting_partner_from_meeting_point(student, mp, matches, meeting_point):
    """
    function is returning the meeting partner for a given student and a given meeting point
    :param student: the student for whom we want to get the meeting partner for mp
    :param mp: the meeting point fot that we want to get the partner for student
    :param matches: all matches that are given by the algorithm
    :param meeting_point: the given tuples of the meeting point of two students
    :return: the partner that student is meeting at mp
    """

    for match in matches[student]:
        if meeting_point[student, match] == mp:
            return match

    # if there is no partner at this point (so the dummy meeting point), return the student himself to getting a
    # meeting time of 0
    return student


def get_real_time(relative_time, offset=0):
    """
    function is transforming minutes in a better readable times sting with a optional offset
    :param relative_time: time in minutes
    :param offset: offset in hours
    :return: a better readable time string
    """
    hours = int(relative_time // 60)
    minutes = int(relative_time % 60)
    return f"{offset + hours}:{minutes if minutes > 9 else '0' + str(minutes)}"


def solve(students, matches, meeting_point, meeting_time, distance, walking_speed, opening_time,
          closing_time):
    """
    function is building and solving the mixed integer program
    :param students: a set of students that have been matched
    :param matches: all matches that are given by the algorithm
    :param meeting_point: the given tuples of the meeting point of two students
    :param meeting_time: the given meeting time of two matched students
    :param distance: walking distance between two meeting points
    :param walking_speed: walking speed of a student in km/h
    :param opening_time: the opening time of a meeting point given in minutes from 9:00 onwards
    :param closing_time: the closing time of meeting point given in minutes from 9:00 onwards
    :return: gurobi model
    """
    model = Model('tindor_dates')

    # student is travling directly from meeting_point_1 to meeting_point_2 or not
    travel = {}
    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)+['dummy']
        for meeting_point_1 in relevant_meeting_points:
            for meeting_point_2 in relevant_meeting_points:
                if meeting_point_1 != meeting_point_2:
                    partner = get_meeting_partner_from_meeting_point(student, meeting_point_2, matches, meeting_point)
                    time_spend = meeting_time(student, partner) * 60
                    travel[student, meeting_point_1, meeting_point_2] = model.addVar(vtype=GRB.BINARY,
                                                                                     name=f"travel_{student}_{meeting_point_1}_{meeting_point_2}")

    


    # time a student is starting date at meeting point
    time = {}
    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point) + ['dummy']
        for mp in  relevant_meeting_points:
            time[student, mp] = model.addVar(vtype=GRB.INTEGER, name=f"time_{student}_{mp}")

    # stress_time for each student
    stress_time = {}
    for student in students:
        stress_time[student] = model.addVar(vtype=GRB.INTEGER, obj=1, name=f"stress_time_{student}")

    
    
    ##############################################################
    # add visit(k,i), which indicating stuident k visit location i
    ##############################################################
    visit = {}
    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point) + ['dummy']
        for mp in  relevant_meeting_points:
              visit[student, mp]  = model.addVar(vtype = GRB.BINARY )
    
    
    model.update()


    #########################################################
    # adding constraints
    #########################################################

    # relative location  including dummy must be visited and start from dummy
    for student in students:
         model.addConstr( time[student,"dummy"] == 0 ) 
         relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point) +['dummy']
         for mp in relevant_meeting_points:
             model.addConstr(  visit[student, mp] ==1 )


     #partner at same mp starting date at same time  
    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)
        for mp in relevant_meeting_points:
            partner = get_meeting_partner_from_meeting_point(student,mp,matches,meeting_point)
            model.addConstr(time[student,mp] == time[partner,mp] )
        

    #stuident travel from mp1 to mp2 only if this student has visited the mp1 and mp2
    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)+['dummy']
        for meeting_point_1 in relevant_meeting_points:
              model.addConstr( quicksum( travel[student, meeting_point_1, meeting_point_2]  for meeting_point_2 in relevant_meeting_points if 
                  meeting_point_1 != meeting_point_2)  ==  visit[student,meeting_point_1])

   
   
    for student in students:
         relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)+['dummy']
         for meeting_point_2 in relevant_meeting_points:
              model.addConstr( quicksum( travel[student, meeting_point_1, meeting_point_2]  for meeting_point_1 in relevant_meeting_points if 
                  meeting_point_1 != meeting_point_2)  ==  visit[student,meeting_point_2])     


   
 

    # students pairs can only date there when the facility is available cosinfering opening hours, set up the time window
    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)
        for mp in relevant_meeting_points: 
            partner = get_meeting_partner_from_meeting_point(student, mp, matches, meeting_point)
            time_spend = meeting_time(student, partner)
            model.addConstr( opening_time[mp] <= time[student,mp] )
            model.addConstr( closing_time[mp] >= time[student,mp] + time_spend*60)
          


    #Big M is larger than the maximumtime, link variable for time and travel and elimate subtour
    M = 800
    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)
        for mp1 in relevant_meeting_points: 
            for mp2 in relevant_meeting_points: 
                if mp1!= mp2:
                    partner = get_meeting_partner_from_meeting_point(student, mp1, matches, meeting_point)
                    time_spend = meeting_time(student, partner)
                    time_walk = distance[mp1, mp2] / walking_speed[student]
                    model.addConstr(  time[student,mp1] + time_spend*60 + time_walk*60 <= time[student, mp2] + M*(1-travel[student, mp1,mp2]))
    
   
   
   
   #stress time is the time from 9:00 until the last date end , which means time stress is the maximum one among all time arrive + time spend, 
   # especailly larger than the end time of last date

    for student in students:
        relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)
        for mp in relevant_meeting_points:
            partner = get_meeting_partner_from_meeting_point(student, mp, matches, meeting_point)
            time_spend = meeting_time(student, partner)
            model.addConstr( stress_time[student] >= time[student, mp] + time_spend*60)
            model.addConstr( stress_time[student] <= 780 )

   
    # #start location, first date is the most earlier one 
    # for student in students:
    #     relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)
    #     for meeting_point_1 in  relevant_meeting_points:
    #           if travel[student, "dummy", meeting_point_1].x > 0.5:
    #               for meeting_point_2 in  relevant_meeting_points:
    #                   if meeting_point_1!= meeting_point_2:
    #                         partner = get_meeting_partner_from_meeting_point(student, meeting_point_1, matches, meeting_point)
    #                         time_spend = meeting_time(student, partner)
    #                         time_walk = distance[meeting_point_1, meeting_point_2] / walking_speed[student]
    #                         model.addConstr(time[student,meeting_point_1] + time_spend*60 + time_walk*60 <= time[student,meeting_point_2])
        
    
    #end location, last date is the latest one, and must be over at 10 p.m
    #stress_time is the time when tha last date is over, and it smaller than maximum time 780min
    # for student in students:
    #     relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)
    #     for meeting_point_1 in  relevant_meeting_points:
    #           if travel[student, meeting_point_1,"dummy"].x > 0.5:
    #                partner1 = get_meeting_partner_from_meeting_point(student, meeting_point_1, matches, meeting_point)
    #                time_spend1 = meeting_time(student, partner1)
    #                model.addConstr(time[student, meeting_point_1] + time_spend1 *60 == stress_time[student])
    #                model.addConstr(time[student, meeting_point_1] + time_spend1 *60 <= 780)
    #                model.addConstr(stress_time[student] <=780)
    #                for meeting_point_2 in  relevant_meeting_points+["dummy"]:
    #                     if meeting_point_1!= meeting_point_2:
    #                            partner2 = get_meeting_partner_from_meeting_point(student, meeting_point_2, matches, meeting_point)   
    #                            time_spend2 = meeting_time(student, partner2)
    #                            time_walk = distance[meeting_point_2, meeting_point_1] / walking_speed[student]
    #                            model.addConstr(time[student,meeting_point_2] + time_spend2*60 + time_walk*60 <= time[student,meeting_point_1])
                            


    



    # solve model
    model.write('model.lp')
    model.optimize()

    # print solution
    if model.status == GRB.OPTIMAL:
        print('\n objective: %g\n' % model.ObjVal)
        for student in students:
            relevant_meeting_points = get_meeting_points_for_student(student, matches, meeting_point)
            # start point
            for mp in relevant_meeting_points:
                if travel[student, "dummy", mp].x > 0.5:
                    partner = get_meeting_partner_from_meeting_point(student, mp, matches, meeting_point)
                    time_spend = meeting_time(student, partner)
                    print(
                        f"{student} is starting at {mp}, starting date at {get_real_time(time[student, mp].x, 9)} and spending there {get_real_time(time_spend * 60)} hours with {partner}")

            # dates between
            for meeting_point_1 in relevant_meeting_points:
                for meeting_point_2 in relevant_meeting_points:
                    if meeting_point_1 != meeting_point_2:
                        if travel[student, meeting_point_1, meeting_point_2].x > 0.5:
                            partner = get_meeting_partner_from_meeting_point(student, meeting_point_2, matches,
                                                                             meeting_point)
                            time_spend = meeting_time(student, partner)
                            time_walk = distance[meeting_point_1, meeting_point_2] / walking_speed[student]
                            print(
                                f"{student} is moving from {meeting_point_1} to {meeting_point_2} in {get_real_time(time_walk * 60)} hours")
                            print(
                                f"{student} meets at {meeting_point_2} {partner}, starting date at {get_real_time(time[student, meeting_point_2].x, 9)} and spending there {get_real_time(time_spend * 60)} hours")

            # end point
            for mp in relevant_meeting_points:
                if travel[student, mp, "dummy"].x > 0.5:
                    print(f"{student} is ending at {mp}")
    return model
