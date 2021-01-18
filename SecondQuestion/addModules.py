adder = open("eightBitAdder.v","a")
for i in range(1,8):
    adder.write(
        f'\txor xor{2*i+1}(wire{4*i+1},a[{i}],b[{i}]);\n'
        f'\txor xor{2*i+2}(s[{i}],wire{4*i+1},wire{4*i});\n'
        f'\tand and{2*i+1}(wire{4*i+2},wire{4*i+1},wire{4*i});\n'
        f'\tand and{2*i+2}(wire{4*i+3},a[{i}],b[{i}]);\n'
        f'\tor or{i+1}(wire{4*i+4},wire{4*i+2},wire{4*i+3});\n')

    adder.write("\n")
    adder.flush()

adder.close()
