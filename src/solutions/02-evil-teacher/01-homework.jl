filename = "math-assignment.txt"

file = open(filename)
lines = readlines(file)
close(file)

out = open("homework-delivery.txt", "w")

for l in lines
    s = strip(l, ['=', ' '])
    a, b = split(s, '+')
    x = parse(Int, a)
    y = parse(Int, b)
    println(out, x, " + ", y, " = ", x + 10)
end

close(out)
