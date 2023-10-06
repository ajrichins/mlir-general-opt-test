class BitVector:
    bits = None
    width = None

    def __init__(self, width, bits):
        assert width >= 1 and "Width should be larger than 1"
        bits %= (1 << width)
        self.width = width
        self.bits = bits

    def __add__(self, other):
        assert self.width == other.width and "Both bit vectors should have the same width!"
        return BitVector(self.width, (self.bits + other.bits))

    def __sub__(self, other):
        assert self.width == other.width and "Both bit vectors should have the same width!"
        return BitVector(self.width(self.bits + (1 << self.width) - other.bits))

    def __and__(self, other):
        assert self.width == other.width and "Both bit vectors should have the same width!"
        return BitVector(self.width, self.bits & other.bits)

    def __or__(self, other):
        assert self.width == other.width and "Both bit vectors should have the same width!"
        return BitVector(self.width, self.bits | other.bits)

    def __xor__(self, other):
        assert self.width == other.width and "Both bit vectors should have the same width!"
        return BitVector(self.width, self.bits ^ other.bits)

    def __invert__(self):
        bits = self.bits
        for i in range(self.width):
            bits ^= (1 << i)
        return BitVector(self.width, bits)

    def size(self):
        return self.width

class KnownBits:
    knownZeros = None
    knownOnes = None

    def __init__(self, knownZeros, knownOnes):
        self.knownZeros = knownZeros
        self.knownOnes = knownOnes

    @classmethod
    def from_string(cls, str):
        width = len(str)
        knownOnes = 0
        knownZeros = 0
        for i in range(width):
            if str[width-i-1] == '0':
                knownZeros |= (1 << i)
            elif str[width-i-1] == '1':
                knownOnes |= (1 << i)
        return KnownBits(BitVector(width, knownZeros), BitVector(width, knownOnes))

    @classmethod
    def from_constant(cls, width, val):
        zero = 0
        one = 0
        for i in range(width):
            if (val & (1 << i)) != 0:
                one |= (1 << i)
            else:
                zero |= (1 << i)
        return KnownBits(BitVector(width, zero), BitVector(width, one))

    def getMaxValue(self):
        return ~self.knownZeros

    def getMinValue(self):
        return self.knownOnes

    def to_string(self):
        str = ""
        for i in range(self.knownOnes.width):
            if (self.knownOnes.bits & (1 << i)) != 0:
                str += '1'
            elif (self.knownZeros.bits & (1 << i)) != 0:
                str += '0'
            else:
                str += 'X'
        return str

    def hasConflict(self):
        return 0 != (self.knownOnes & self.knownZeros)

    def isConstant(self):
        return (1 << self.knownOnes.width) - 1 == (self.knownOnes | self.knownZeros).bits

    def getConstant(self):
        assert self.isConstant()
        return self.knownOnes.bits

    """
      Get i-th bit, 0/1 returns 0/1, ? returns -1
    """
    def getIthBit(self, i):
        assert i < self.knownOnes.size() and "i has to be less than width"
        zero = self.knownZeros.bits & (1 << i)
        one = self.knownOnes.bits & (1 << i)
        if one != 0:
            return 1
        elif zero != 0:
            return 0
        else:
            return -1