program machine_infinity
    implicit none
    double precision :: value, previous_value
    integer :: count

    value = 1.0d0
    count = 0

    do while (value * 2.0d0 > value)
        previous_value = value
        value = value * 2.0d0
        count = count + 1
        print *, value, count
    end do

    print *, 'Machine Infinity:', previous_value
    print *, 'Number of iterations:', count - 1
end program machine_infinity
