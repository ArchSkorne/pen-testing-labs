# Infinite Loops occur when the loop's terminating condition is never met.
# This can happen if the condition always evaluates to True or if the loop's control variable is not updated correctly within the loop.
# Infinite loops can cause a program to become unresponsive or consume excessive resources.
# To prevent infinite loops, ensure that the loop's condition will eventually evaluate to False and that any control variables are updated appropriately within the
while True:
    command = input(">")
    print("ECHO", command)
    if command.lower() == "quit":
        break