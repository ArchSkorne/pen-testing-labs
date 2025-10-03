#[2, 3, 4, 5]
# Tuples are immutable sequences, typically used to store collections of heterogeneous data
# They are defined using parentheses () and can contain elements of different data types
# Tuples support indexing and slicing, similar to lists, but cannot be modified after creation
# This immutability makes tuples more memory efficient and faster than lists for certain operations
# Tuples can be used as keys in dictionaries and elements of sets, unlike lists
def multiply(*numbers):
    total = 1
    for number in numbers:
        total *= number
    return total

print(multiply(2, 3, 4, 5))