import os
import sys
import time
import numpy as np

# Class to manipulate text caracters
class ManipulateText:
    def __init__(self, text):
        self.text = text

    def get_text(self):
        return self.text

    def set_text(self, text):
        self.text = text
    
    def get_length(self):
        return len(self.text)
    
    def get_first_word(self):
        return self.text.split()[0]

    def get_last_word(self):
        return self.text.split()[-1]

    def inverse_text(self):
        return self.text[::-1]


        


def main():
    test = Test()
    print(test.get_name())
    test.run()
    print(test.get_name())
    return 0

if __name__=="__main__":
    sys.exit(main())

