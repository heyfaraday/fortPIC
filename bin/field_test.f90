program hello_world_f90

   use field, only: E, B

   implicit none

   double precision, dimension(3) :: r
   double precision :: t

   write(*, *)  E(t, r)

end program