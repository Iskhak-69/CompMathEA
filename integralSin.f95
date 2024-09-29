program Integral
    real :: a, b
    integer :: M, i
    real :: PI, S, r, rn
    
    M = 1000
    S = 0
    i = 0
    PI = 4.d0*datan(1.d0)
    a = PI
    b = PI *1.5
    
    do while (i < M)
        call random_number(rn)
        r = (b - a) * rN + a
        S = sin(r) * r + S 
        i = i + 1 
        write(*,*), 'Count of Iteration: ', i ,'S =',S/i
    end do
    
    write(*,*), 'Integration = ',S/M 

end program Integral
