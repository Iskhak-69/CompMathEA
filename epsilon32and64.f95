program epsilon32and64
implicit none
real :: e32
double precision :: e64

e32 = 1.0
do while (1.0 + e32 > 1.0)
e32 = e32/2.0
end do 
e32 = e32 * 2.0
write (*,*) 'float32', e32

e64 = 1.0
do while (1.0 + e64 > 1.0)
e64 = e64/2.0
end do 
e64 = e64 * 2.0
write (*,*) 'float64', e64
end program epsilon32and64
