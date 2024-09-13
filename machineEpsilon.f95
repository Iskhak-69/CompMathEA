program find_machine_epsilon
  implicit none
  integer :: duplications 
  real :: epsilon, epsilon1              

  epsilon = 1.0
  duplications = 0                   

  do
    epsilon1 = 1.0 + epsilon  


    if (epsilon1 > 1.0) then
      epsilon = epsilon / 2.0       
      duplications = duplications + 1     
    else
      exit                          
    end if
  end do

  print *, "Machine epsilon is: ", epsilon
  print *, "Number of iterations: ", duplications
  print *, "The smallest epsilon 1 + epsilon > 1 is: ", epsilon  
end program find_machine_epsilon
