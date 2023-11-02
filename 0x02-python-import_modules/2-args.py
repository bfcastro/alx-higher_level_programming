#!/usr/bin/python3
# Print the number of and the list of its arguments
if_name_=="_main_":
    import sys

    arg = sys.argv
    size = len(arg) - 1

    if size > 1:
        print("{} arguments:".format(size))
        for i in range(1, size + 1):
            print("{} arguments.".format(size))

        else:
            print("{} argument:".format(size))
            print("{}: {}".format(size, arg[1]))
