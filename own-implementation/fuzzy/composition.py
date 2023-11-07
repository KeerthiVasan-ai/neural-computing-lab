import numpy as np
import skfuzzy as fuzz

p = np.array([0.1, 0.3, 0.7, 0.4, 0.2])
q = np.array([0.1, 0.3, 0.3, 0.4, 0.5, 0.2])
t = np.array([0.1, 0.7, 0.3])

r = fuzz.relation_min(p, q)
print('R = p x q')
print(r)

s = fuzz.relation_min(q, t)
print('S = q x t')
print(s)

print("Max min composition")
print(fuzz.maxmin_composition(r, s))

print("Max Product composition")
print(fuzz.maxprod_composition(r, s))

def composition(rel_a, rel_b, op_a=np.max, op_b=np.min):
    assert np.shape(rel_a)[1] == np.shape(rel_b)[0], "Invalid shape for relational matrix {} {}"
    res = np.zeros(
        (np.shape(rel_a)[0], np.shape(rel_b)[1]), float
    )
    for row in range(res.shape[0]):
        for col in range(res.shape[1]):
            res[row, col] = op_b([op_a(rel_a[row]), op_a(rel_b[: , col])])

    return res

res = composition(r, s, np.max, np.prod)
print(res)