program montecarlo
    integer M, i
    real(8) a, b, s, rn, r, PI
    
    PI = 4.d0 * datan(1.d0)
    a = PI
    b = PI * 1.5
    
    M = 1000
    s = 0
    i = 0
    
    do while (i < M)
        call random_number(rn)
        r = (b - a) * rn + a
        s = sin(r) * (b - a) + s
        i = i + 1
        write(*,*) 'Count of Iterations: ', i, 'Ans:', s/i
    end do
    write(*,*) 'Answer: ', s/M
end program montecarlo
