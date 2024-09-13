program find_machine_zero
    implicit none
    double precision :: current_value, previous_value
    integer :: iteration_count

    current_value = 1.0
    iteration_count = 0

    do while (2.0 * current_value > current_value)
        previous_value = current_value
        current_value = current_value / 2.0
        iteration_count = iteration_count + 1
        print *, "Iteration:", iteration_count, "Value:", current_value
    end do

    print *, 'Machine zero (smallest number for which 2*Z > Z):', previous_value
    print *, 'Number of iterations:', iteration_count - 1
end program find_machine_zero
