1)  link to most complete Ruby documentation:
    - answer: https://docs.ruby-lang.org/en/3.2/
2) locating the description of the while look in the ruby documentation:
    - open the ruby documentation: https://docs.ruby-lang.org/en/3.2/
    - search for controlling expression at HOME: note that there are many
  controlling parameters when coding such as 'if' , 'unless', 'until' Expression
    - Select 'while' in the page.
    - note: the "control expression" page is where discussions of most language
  features that control code flow are discussed ie conditionals(if, unless, case)
  basic looping(while, until, for), loop termination(break, next)

3) what value does "while" return?
    - "while" returns nil unless "break" is used to supply/receive a value.

4) Following previous question i.e that the "while" loop returns nil unless "break"
is used, determine what value "break" sets the return value to for the while loop.
  - break accepts a value that supplies the result of the expression it is
  breaking out of: that is break will return a nil when no arguments are passed to break
  unless break receives a value.
  - if "break" is not supplied a value, while still returns a nil.

5) how can you write large numbers in an easy way to read?
    - see Literals (they create objects that can be used in the program)
    - using underscore i.e 1,234 = 1_234
    - can use a special prefix to write numbers  is
        - 0d for decimal
        - 0x for hexadecimal numbers
        - 0 or 0o for octal numbers
        - 0b for binary

6) how would you write a Symbol that represent your name:
    - Symbol is one of Ruby's data types: can be found at literals.
        - Symbol represent a name inside the ruby interpreter
    - Answer:  ":John"

7) what are classes?
    - think of them as data types: numbers, strings, arrays, hashes, symbols,
    boolean,

8) locating String class
    - https://docs.ruby-lang.org/en/3.2/String.html

9) which method can used to right justify a "String" object?
    - rjust: returns
  give atleast 9 more methods than can be used on strings and their functions:

10) methods without arguments: how can we use "String#upcase" to create an uppercase
version of the string "xyz"
      - result = "xyz".upcase (an instance method "upcase" is prepended to the string
      the method call reads "upcase")

11) Required Arguments: assume we have an array a = %w(a b c d e). How would we use
Array#insert to insert numbers 5, 6 and 7 between the elements with values 'c' and 'd'
  - https://docs.ruby-lang.org/en/3.2/Array.html
  - insert(index, *object) -> self ; that is the *object is inserted before or after
  the element at integer indexed and returns self
  - answer : a.insert(3, 5, 6, 7)

12) what will the code output:
    - split: returns an array of substring of self that are results of splitting at each occurance
    of the given field separator

    - s = 'abc def ghi,jkl mno pqr,stu vwx yz'
    - puts s.split.inspect => ['abc','def','ghi','jkl','mno','pqr','stu','vwx','yz']
    - puts s.split(',').inspect  => ['abc def ghi','jkl mno pqr','stu vwx yz']
    - puts s.split(',', 2).inspect  =>
