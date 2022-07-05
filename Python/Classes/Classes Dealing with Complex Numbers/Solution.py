import math

class Complex(object):
    def __init__(self, real, imaginary):
        self.real = real
        self.imaginary = imaginary
        
    def __add__(self, no):
        return Complex((self.real + no.real), self.imaginary + no.imaginary)
        
    def __sub__(self, no):
        return Complex((self.real-no.real), (self.imaginary-no.imaginary))
        
    def __mul__(self, no):
        a = (self.real * no.real) - (self.imaginary * no.imaginary)
        b = (self.real * no.imaginary + no.real * self.imaginary)
        return Complex(a,b)
    
    def __truediv__(self, no):
        conjugate = Complex(no.real, (-no.imaginary))
        selfConjugate = self*conjugate
        noConjugate = no*conjugate
        
        a = selfConjugate.real / noConjugate.real
        b = selfConjugate.imaginary / noConjugate.real
        
        return Complex(a, b)

    def mod(self):
        return Complex(math.sqrt(self.real**2 + self.imaginary**2), 0)

    def __str__(self):
        if self.imaginary == 0:
            result = "%.2f+0.00i" % (self.real)
        elif self.real == 0:
            if self.imaginary >= 0:
                result = "0.00+%.2fi" % (self.imaginary)
            else:
                result = "0.00-%.2fi" % (abs(self.imaginary))
        elif self.imaginary > 0:
            result = "%.2f+%.2fi" % (self.real, self.imaginary)
        else:
            result = "%.2f-%.2fi" % (self.real, abs(self.imaginary))
        return result

if __name__ == '__main__':