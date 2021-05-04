filename = "math-assignment.txt"

file = open(filename, "w")

for _ in 1:100
    x = rand(5:600)
    y = rand(10:602)
    println(file, x, " + ", y, " = ") 
end

close(file)