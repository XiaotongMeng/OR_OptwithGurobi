from gurobipy import *

def solve(items, bins, conflicts, capacity, weight):
  # Model
  model = Model("Binpacking with conflicts")

  # Decision variable x_i_j indicates whether Item i is packed into Bin j (value 1) or not (value 0).
  x = {}
  for i in items:
    for j in bins:
      # TODO: Adjust additional attributes (lb, ub, vtype, obj). Do NOT change the name!
      x[i,j] = model.addVar(vtype= GRB.BINARY,name="x_%s_%s" % (i,j))

  # Decision variable y_j indicates whether Bin j is used (value = 1) or not (value = 0).
  y = {}
  for j in bins:
    # TODO: Adjust additional attributes (lb, ub, vtype, obj). Do NOT change the name!
    y[j] = model.addVar(vtype= GRB.BINARY, obj = 1, name="y_%s" % (j))

  # TODO: Add potential additional variables.


  # Update the model to make variables known. From now on, no variables should be added.
  model.update()

  # TODO: Add the linear constraints of the model. Nonlinearities in the model, e.g.,
  # multiplication of two decision variables, results in a score of 0!

  for i in items:
    model.addConstr(quicksum(x[i,j] for j in bins) == 1)

  for j in bins:
    model.addConstr(quicksum( weight[i] * x[i,j]  for i in items) <= capacity)

  for  i in items:
    for j in bins:
        model.addConstr(x[i,j] <= y[j])  

  
  for j in bins:
   for c in conflicts:
       model.addConstr(x[c[0],j]+ x[c[1],j] <= 1)


  model.modelSense = GRB.MINIMIZE

  # Solve
  model.optimize()

  # Return the model: Do not change/remove this line - it is crucial for our scoring method
  # and removal may lead to a score of 0!
  return model

