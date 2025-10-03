count = 0
for number in range(1, 10):
    if number % 2 == 0:
        count += 1
        print(number)
print (f"We have {count} even numbers")
# This code prints all even numbers between 1 and 10 (inclusive)
# The modulo operator (%) is used to check if a number is even (i.e., divisible