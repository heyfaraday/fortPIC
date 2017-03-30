module print_hello_f90

    implicit none
    double precision :: number_1 = 1.d0

    contains
        
        subroutine print_hello(number_2)

            implicit none
            double precision :: number_2
            
            write(*, *)  number_2, " - it's my hello, man"

        end subroutine print_hello

end module print_hello_f90