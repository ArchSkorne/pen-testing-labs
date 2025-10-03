successful = False
for number in range(3):
    print("Attempt")
    if successful:
        print("Successful")
        break
else:
    print("Attempted 3 times and failed")
# For...Else loops are used to execute a block of code when the loop is not terminated by a break statement