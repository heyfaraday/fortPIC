program hello_world_f90

   use cross, only: cross_product, dot_product, dot_product_gamma

   implicit none

   double precision, dimension(4) :: a, b
   double precision :: k = 3.0

   a = (/2.d0, 1.d0, 0.d0, 0.d0/)
   b = (/2.d0, 1.d0, 0.d0, 0.d0/)

   write(*, *) 'a equals ', a
   write(*, *)  dot_product_gamma(a, b)
   write(*, *) 'a equals ', a

end program