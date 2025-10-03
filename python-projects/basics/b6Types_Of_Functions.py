def greet(name):
    print(f"Hello, {name}!")


def get_greeting(name):
    return f"Hello, {name}!"


message = get_greeting("Mosh")
file = open("context.txt", "w")
file.write(message)
# There are two main types of functions:
# 1. Functions that perform an action but do not return a value (e.g., greet)
# 2. Functions that return a value (e.g., get_greeting)
# Use the first type when you want to perform an action (like printing a message)
# Use the second type when you want to compute and return a value for further use