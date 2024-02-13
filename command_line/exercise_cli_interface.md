echo "hello world"
  # hello world
echo hello world
  # hello world
echo -n hello world
  # hello world% # misplaced argument and/or flags change the output
echo hello world -n
  # hello world -n
echo "hello world" -n
  # hello world -n
echo "-n hello world"
  # -n hello world

1. List the hidden files in a directory

  # ls -a
to only list the hidden files
  # ls -d .*

2. List files in the parent directory and list files in the parent directory' parent directory

# ls .. & ls../..

3. What's the difference between abc/ and /abc?

# abc/ indicates the current parent (root) directory that point to the paths relative to the current working directory while /abc refers to the directory in a parent(root) directory

4. What does ../abc mean?

# this is a reference to the path of the parent directory (..), and the file or directory "abc" within that directory.

5. Suppose you are in a directory with 7 files. You need to move 6 of them into a "tmp" directory, that you have yet to create. How do you do that?

# create the directory "temp" : mkdir temp
# from directory with 7 files mv all to "temp" : mv * ~/temp
# remove one of the file back to the initial directory(one that had 7 files): mv ~/temp1.file ./

6. Suppose you have two directories called xyz/ and abc/. How do you move all the files in abc/ that end with ".txt" into xyz/?

# while in abc/ directory issue the command line: mv *.md ../xyz
