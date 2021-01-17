# coding=utf-8

from gurobipy import *

def solve(stands,
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
          max_wine_per_stand):
    model = Model("Christmas ")

    model.modelSense = GRB.MAXIMIZE

    # variable x : number of cups person s  consumed at stand s
    # obj: amount[s]*alcohol_content[s]/price[s], which means alcohol(% of ml) per price for each person s at each stand s, 
    # but according to the muster solution, here we have to use alcohol_content[s]/price[s] instead, which means alcohol(% of cups) per price
    # ub: maximal cups of wine person p wants to consume at stand s
    x = {}
    for p in persons:
        for s in stands:
            x[p, s] = model.addVar( ub= max_wine_per_stand[p,s], obj = alcohol_content[s]/price[s], \
                                    vtype= GRB.INTEGER,name="x_%s_%s" % (p, s))
 
    
    # TODO: Add potential additional variables.

    model.update()

    # TODO: Add all contraints

    
    for p in persons:
         model.addConstr(quicksum(x[p,s]*price[s] for s in stands) <= budget[p])   # person p has a budge[p] over all possible stands
         model.addConstr(quicksum(x[p,s] for s in stands) >= min_wine_total[p])    # minimal numbers of cups of hot wine in total person p want consume 


    for p in persons:
         if environment[p] == True:                                                 #person p, who is environmentlly friendly 
            for s in stands:
                if (cup_type[s] == "plastic") or (cup_type[s] == "styrofoam"):       #stands s , which is not environmentlly friendly 
                     model.addConstr( x[p,s] == 0)                                  # those persons will not buy any cups of wine at those stands


    model.optimize()

    # print solution
    if model.status == GRB.OPTIMAL:
        print('\n objective: %g\n' % model.ObjVal)
        for p in persons:
            for s in stands:
                if x[p, s].x >= 1:
                    print('%s drinks %i cups at %s' % (p, x[p, s].x, s))

    return model
