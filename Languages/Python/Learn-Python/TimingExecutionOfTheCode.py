import timeit
#print(timeit.timeit("'Elzero' * 10000"))

#print(timeit.timeit(stmt="random.randint(0, 50)", setup="import random"))

print(timeit.repeat(stmt="random.randint(0,50)", setup="import random", repeat=5))

