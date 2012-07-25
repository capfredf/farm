input = [[[1,2],3], 1,2, [1, 2]]
def flat_list(input):
    def extend(x):
        if type(x)==list:
            return reduce(lambda acc,y:acc+extend(y), x, [])
        return [x]

    return  reduce(lambda acc, y:acc+extend(y), input, [])

flat_list(input)


movies = range(10)
celebrities = range(10)
cinemas = range(10)


for k, v in groupby(tmp[:6]):
    output[0] = k, [d for _, d in v]

