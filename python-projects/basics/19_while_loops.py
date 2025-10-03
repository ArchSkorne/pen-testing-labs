number = 100
while number > 0:
    print(number)
    number //= 2
# While Loops are used to execute a block of code as long as a specified condition is true
# In this example, the loop will continue to run as long as 'number' is greater than 0
# Inside the loop, we print the current value of 'number' and then halve it using integer division (//)
# This will eventually make 'number' less than or equal to 0, at which point the loop will stop

command = ""
while command.lower() != "quit":
    command = input(">")
    print("ECHO", command)
# This loop will keep asking the user for input until they type "quit"
# Each time the user enters a command, it will print "ECHO" followed by the command
# When the user types "quit", the condition command != "quit" will be false
# and the loop will terminate without printing "ECHO quit"