from collections import namedtuple

# Defining a NamedTuple with its name and attributes
StructName = namedtuple("StructName", ["attributeName_1",...,"attributeName_n"])

# Create an instance of the NamedTuple
struct_var = StructName(value_1,..., value_n)

# Accessing attributes with .
print(struct_var.attributeName_n)
