age = input("Enter your age: ")
age = int(age)
#Before:
#if age >= 18:
#    message = "Eligible"
#else:
#    message = "Not eligible"
#After:
message = "Eligible" if age >= 18 else "Not eligible"
print(message)
# Ternary Operators are used to clean up variable strings