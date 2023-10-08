# build a calculator
# ask the user for two number
# ask the user for the type of operation they would like to perform
  # addition , subtraction, division or multiplication
# Perform an operation of the two numbers and display results.

# REFACTORING CODE #

# ADDING BONUS FEATURES #
 1. Better integer validation
  currently its not fully accurate, as 0 cannot be entered.
2. Number validation
  How can we build a validating method, called number? to verify that only
  numbers --integers or floats-- are entered?
3. Derisk the "operation_to_message" method to accomodate for additional code
that may be added after the "case" statement within the method. Add some changes
4. Extracting messages in the program to a configuration file.
  Because there are lots of messages to the program, we could move them into a
  configuration file and access by key.
5. Internationalize the message in your calculator.
  Using the configuration file,send message to call the right translation to cod
