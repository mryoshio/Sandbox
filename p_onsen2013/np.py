list = [10, 2, 12, "-",  "/"]

stack = []

for s in list:
    if str(s).isdigit():
        stack.append(float(s))
    else:
        latter = stack.pop()
        former = stack.pop()
        if s == "-":
            stack.append(former - latter)
        elif s == "+":
            stack.append(former + latter)
        elif s == "/":
            stack.append(former / latter)
        elif s == "*":
            stack.append(former * latter)

print stack.pop()
