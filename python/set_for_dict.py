class HashableDictWrapper(object):
    def __init__(self, s):
        self.original_str = s
        self._hash_key = hash(s.lower())

    def __hash__(self):
        return self._hash_key

    def __eq__(self, other):
        return self.__hash__()==other.__hash__()

class O(object):
    def __getitem__(self, key):
        print key.start
        print key.stop
        return "hello"
if __name__=="__main__":
    o = O()
    o[1:2]
