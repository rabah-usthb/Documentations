a = 12
b = 21
text = "hello"

print("a:", a, "b:", b)                            # default formatting

print(f"a: {a},\n b: {b},\t text:\t {text}")       # f-string formatting

print(r"{a}\{b}\n = \t{12}\{21}")                  # raw-string formatting

print(fr"{{a}}\{{b}}\n =\t {{{a}}}\{{{b}}}")       # f+raw-string formatting

print("a: %d, b: %d, text: %s" % (a, b, text))     # %-formattting

print("a: {}, b: {}, text: {}".format(a, b, text)) # .format()


