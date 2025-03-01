from collections import namedtuple

intervalle = namedtuple("intervalle", ["a","b"])

intervalle_var = intervalle(1,2)

print("[ a , b ] = [",intervalle_var.a,",",intervalle_var.b,"]")
