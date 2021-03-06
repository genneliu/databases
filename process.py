# this is saving the txt file to the variable log_file
log_file = open("um-server-01.txt")

# this is a function, named sales report
# that takes in one argument (log_file),
# for every line in log_file, the line is returned with removed trailing characters
# in this case, rstrip does not have any parameters, so whitespace is removed at the end
# the variable day contains the first 3 characters of the line
# if the first 3 characters = 'Tue' or 'Mon' after the change, the line is printed

def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)

# # we invoke the function to print out each line
sales_reports(log_file)



def ten_melons(log_file):
    for line in log_file:
        line = line.rstrip().split(' ')
        count = int(line[2])
        if count >= 10:
            print(line)

ten_melons(log_file)

# used .split to turn into array, now order count is at position [2]
#  changed line[2] into int for comparison
# if greater than 10, print line
