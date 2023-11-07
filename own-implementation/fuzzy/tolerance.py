import skfuzzy as fuzz
import numpy as np

r = np.array([
    [1, 0.8, 0, 0.1, 0.2],
    [0.8, 1, 0.4, 0, 0.9],
    [0, 0.4 ,1., 0, 0,],
    [0.1, 0, 0, 1 , 0.5], 
    [0.2, 0.9, 0, 0.5, 1]
])

def is_reflexive(x):
    return np.all(np.diag(x) == 1.)

def is_symmetric(x):
    return np.all(x == x.T)

def is_transitive(r):

    n = r.shape[0]
    t = []
    for i in range(n):
        for j in range(n):
            if i == j: continue
            
            t.append(all([
                r[i, j] >= r[(i, k), (k, j)].min() for k in range(n)
            ]))

    return all(t)

def check_tolerance(r):
    return is_reflexive(r) and is_symmetric(r) and not is_transitive(r)

def check_equivalence(r):
    return is_reflexive(r) and is_symmetric(r) and is_transitive(r)

if check_tolerance(r):
    print("Given fuzzy relation is tolerance but not equivalence")

rc = r
for i in range(2, r.shape[0]):
    rc = fuzz.maxmin_composition(rc, r)
    if check_equivalence(rc):
        
        print(rc)
        print("The above relation satisfies equivalence after {0} composition".format(i))
        break
