program hello_world_f90

   use print_hello_f90, only: print_hello
   use print_hi_f90, only: print_hi

   implicit none

   call print_hello(2.d0)
   call print_hi(4.d0)

end program