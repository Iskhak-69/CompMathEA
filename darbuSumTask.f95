program darbuSum
integer i
real(8) intervals, PI, lower, upper, x, usd, lsd, intervals_length
usd = 0
lsd = 0
PI = 4.d0 * datan(1.d0)
lower = PI
upper = PI * 1.5
write(*,*) "Enter number of intervals:"
read*, intervals
intervals_length = (upper - lower) / intervals
x = lower
i = 0
do while (i <= intervals)
    x = x + intervals_length
    usd = usd + (intervals_length * sin(x))
    lsd = lsd + (intervals_length  * sin(x))
    i = i + 1
end do
write(*,*) "USD = ", usd
write(*,*) "LSD = ", lsd
end program darbuSum
