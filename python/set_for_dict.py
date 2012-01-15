class HashableDictWrapper(object):
    def __init__(self, s):
        self.original_str = s
        self._hash_key = hash(s.lower())

    def __hash__(self):
        return self._hash_key

    def __eq__(self, other):
        return self.__hash__()==other.__hash__()

if __name__=="__main__":
    print map(lambda x:x.original_str, set(map(HashableDictWrapper, ["aaaaaaaa", "aaaaaa", "bb", "bb", "Bb", "BB", "bB"])))
