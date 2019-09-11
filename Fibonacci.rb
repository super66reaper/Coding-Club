def fib(x)
    first = 0
    second = 1
    x.times do
        puts first
        third = first + second
        first = second
        second = third
    end
end

fib(10)